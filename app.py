import re
from datetime import datetime
import threading
import time
import serial
from flask import Flask, jsonify, render_template

# Dictionnaire pour stocker les données parsées
sensor_data = {
    "orientation": {"x": 0.0, "y": 0.0},
    "acceleration": {"x": 0.0, "y": 0.0},
    "motion": "Free",
    "gps": {
        "time": "",
        "latitude": 0.0,
        "longitude": 0.0,
        "valid": False
    },
    "raw": ""
}

def parse_gps_line(line):
    """
    Traite une ligne GPS du format :
    "GPS: GNGGA Time: 1140 Latitude: 45.419 Longitude: -75.657"
    """
    try:
        match = re.search(r"GPS:\s*GNGGA\s*Time:\s*(\d+)\s*Latitude:\s*([-\d\.]+)\s*Longitude:\s*([-\d\.]+)", line)
        if match:
            sensor_data["gps"]["time"] = match.group(1)
            sensor_data["gps"]["latitude"] = float(match.group(2))
            sensor_data["gps"]["longitude"] = float(match.group(3))
            sensor_data["gps"]["valid"] = True
        else:
            sensor_data["gps"]["valid"] = False
    except Exception as e:
        print(f"Erreur GPS: {e}")
        sensor_data["gps"]["valid"] = False

def parse_uart_line(line):
    """Analyse la ligne reçue et met à jour sensor_data en fonction du contenu."""
    try:
        if "Orientation:" in line:
            # Exemple : "Orientation: 3.57563E+02  1.31250E+00"
            values = re.findall(r"[-+]?\d*\.\d+E?[-+]?\d+", line)
            if len(values) >= 2:
                sensor_data["orientation"]["x"] = float(values[0])
                sensor_data["orientation"]["y"] = float(values[1])
        elif "Linear Acceleration:" in line:
            # Exemple : "Linear Acceleration: -4.00000E-02 -5.00000E-02"
            values = re.findall(r"[-+]?\d*\.\d+E?[-+]?\d+", line.replace("-", " -"))
            if len(values) >= 2:
                sensor_data["acceleration"]["x"] = float(values[0])
                sensor_data["acceleration"]["y"] = float(values[1])
        elif "IR_Motion_" in line:
            # Vérification explicite pour afficher "Detected" ou "Free"
            if "Detected" in line:
                sensor_data["motion"] = "Detected"
            elif "Free" in line:
                sensor_data["motion"] = "Free"
            else:
                sensor_data["motion"] = line.replace("IR_Motion_", "").strip()
        elif "GPS:" in line:
            parse_gps_line(line)
        sensor_data["raw"] = line
    except Exception as e:
        print(f"Erreur de parsing: {e}")
        sensor_data["raw"] = line

def uart_reader():
    try:
        # Remplacez "COM3" par le port réel utilisé par votre STM32
        ser = serial.Serial("COM3", 115200, timeout=1)
        print("Port série ouvert avec succès")
    except Exception as e:
        print("Erreur d'ouverture du port série:", e)
        # Mode simulation si le port série n'est pas disponible
        while True:
            now = datetime.now()
            sensor_data["orientation"]["x"] = 10 + 5 * (time.time() % 10)
            sensor_data["orientation"]["y"] = 20 + 3 * (time.time() % 8)
            sensor_data["acceleration"]["x"] = 0.5 * (time.time() % 5)
            sensor_data["acceleration"]["y"] = 0.3 * (time.time() % 3)
            sensor_data["motion"] = "Free" if int(time.time()) % 10 < 7 else "Detected"
            # Simulation d'une ligne GPS dynamique
            sensor_data["gps"]["time"] = now.strftime("%H%M")
            sensor_data["gps"]["latitude"] = 45.419 + (time.time() % 0.01)
            sensor_data["gps"]["longitude"] = -75.657 + (time.time() % 0.01)
            sensor_data["gps"]["valid"] = True
            sensor_data["raw"] = f"Donnée simulée {now.strftime('%H:%M:%S')}"
            print(sensor_data["raw"])
            time.sleep(1)
        return

    while True:
        try:
            line = ser.readline().decode('utf-8').strip()
            if line:
                print("Données reçues:", line)
                parse_uart_line(line)
        except Exception as e:
            print("Erreur lors de la lecture UART:", e)
        time.sleep(0.1)

app = Flask(__name__)

@app.route('/')
def index():
    return render_template("index.html")

@app.route('/data')
def get_data():
    return jsonify({
        "orientation": {
            "x": sensor_data["orientation"]["x"],
            "y": sensor_data["orientation"]["y"],
            "unit": "degrees"
        },
        "acceleration": {
            "x": sensor_data["acceleration"]["x"],
            "y": sensor_data["acceleration"]["y"],
            "unit": "m/s²"
        },
        "motion": sensor_data["motion"],
        "gps": sensor_data["gps"],
        "last_update": datetime.now().isoformat()
    })

if __name__ == "__main__":
    threading.Thread(target=uart_reader, daemon=True).start()
    app.run(host='0.0.0.0', port=5000, debug=True)
