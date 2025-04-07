#include <WiFi.h>
#include <ESPAsyncWebServer.h>
//#include <ESP32Servo.h>

// Moteur
#define ENA 2
#define IN1 4
#define IN2 5
#define IN3 18
#define IN4 19
#define ENB 21
// Servo
//#define PIN_SG90 13
//Servo sg90;
int Speed = 255;

// Capteur Ultrasonique
#define TRIG_PIN 26
#define ECHO_PIN 25

// WiFi AP
const char *ssid = "SM-S908W1696";
const char *password = "misa0081";

AsyncWebServer server(80);

// Variables de contrôle
String currentAction = "stop";
float distance = 0;

void setup() {
  Serial.begin(115200);

  // WiFi Access Point
  WiFi.softAP(ssid, password);
  Serial.println("AP actif. IP : " + WiFi.softAPIP().toString());

  //sg90.setPeriodHertz(50); // PWM frequency for SG90
  //sg90.attach(PIN_SG90, 500, 2400);

  // Pins moteurs
  pinMode(ENA, OUTPUT);
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(IN3, OUTPUT);
  pinMode(IN4, OUTPUT);
  pinMode(ENB, OUTPUT);

  // Pins capteur ultrason
  pinMode(TRIG_PIN, OUTPUT);
  pinMode(ECHO_PIN, INPUT);

  // Routes web
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(200, "text/html", getHTML());
  });

  server.on("/forward", HTTP_GET, [](AsyncWebServerRequest *request){
    currentAction = "forward";
    request->send(200, "text/plain", "Forward");
  });

  server.on("/backward", HTTP_GET, [](AsyncWebServerRequest *request){
    currentAction = "backward";
    request->send(200, "text/plain", "Backward");
  });

  server.on("/left", HTTP_GET, [](AsyncWebServerRequest *request){
    currentAction = "left";
    request->send(200, "text/plain", "Left");
  });

  server.on("/right", HTTP_GET, [](AsyncWebServerRequest *request){
    currentAction = "right";
    request->send(200, "text/plain", "Right");
  });

  server.on("/stop", HTTP_GET, [](AsyncWebServerRequest *request){
    currentAction = "stop";
    request->send(200, "text/plain", "Stop");
  });

  server.on("/distance", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(200, "text/plain", String(readSensorData()));
  });

  server.on("/speed", HTTP_GET, [](AsyncWebServerRequest *request){
    if (request->hasParam("value")) {
      Speed = request->getParam("value")->value().toInt();
      Serial.println("Nouvelle vitesse: " + String(Speed));
    }
    request->send(200, "text/plain", "OK");
  });

  server.begin();
}

void loop() {
  distance = readSensorData();
  Serial.print("Distance: ");
  Serial.print(distance);
  Serial.println(" cm");

   //rotation from 0 to 180°
  //for (int pos = 0; pos <= 135; pos += 1) {
    //sg90.write(pos);
    //delay(10);
  //}
 // Rotation from 180° to 0
  //for (int pos = 135; pos >= 0; pos -= 1) {
    //sg90.write(pos);
    //delay(10);
  //}

  // Sécurité collision
  if (distance < 10 && currentAction == "forward") {
    carStop();
    Serial.println("Obstacle détecté ! STOP !");
    return;
  }

  // Exécution action
  if (currentAction == "forward") carForward();
  else if (currentAction == "backward") carBackward();
  else if (currentAction == "left") carLeft();
  else if (currentAction == "right") carRight();
  else carStop();

  delay(100);
}

// ✅ Fonction de lecture du capteur ultrasonique (fiable)
float readSensorData() {
  digitalWrite(TRIG_PIN, LOW); 
  delayMicroseconds(2);
  digitalWrite(TRIG_PIN, HIGH); 
  delayMicroseconds(10);
  digitalWrite(TRIG_PIN, LOW);
  
  unsigned long microsecond = pulseIn(ECHO_PIN, HIGH, 30000); // timeout de 30ms

  float distance = microsecond / 29.00 / 2;
  return distance;
}

// Fonctions moteur
void carForward() {
  analogWrite(ENA, Speed);
  analogWrite(ENB, Speed);
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
}

void carBackward() {
  analogWrite(ENA, Speed);
  analogWrite(ENB, Speed);
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, HIGH);
}

void carLeft() {
  analogWrite(ENA, Speed);
  analogWrite(ENB, Speed);
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
}

void carRight() {
  analogWrite(ENA, Speed);
  analogWrite(ENB, Speed);
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, HIGH);
}

void carStop() {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, LOW);
}


// Page HTML
String getHTML() {
  return R"rawliteral(
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ESP32 Car Control</title>
    <style>
      body {
        font-family: 'Segoe UI', sans-serif;
        background: #f8f8f8;
        text-align: center;
        padding: 30px;
      }
      h2 {
        color: #333;
      }
      #distance {
        font-size: 24px;
        font-weight: bold;
        margin: 10px;
        color: #007bff;
      }
      #speedValue {
        font-weight: bold;
        color: #28a745;
      }
      .control-grid {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        grid-gap: 15px;
        max-width: 400px;
        margin: 30px auto;
      }
      .control-grid button {
        font-size: 20px;
        padding: 20px;
        border: none;
        border-radius: 10px;
        background-color: #007bff;
        color: white;
        cursor: pointer;
        transition: 0.2s;
        box-shadow: 0 4px 6px rgba(0,0,0,0.1);
      }
      .control-grid button:hover {
        background-color: #0056b3;
      }
      input[type=range] {
        width: 60%;
        margin: 15px auto;
      }
    </style>
  </head>
  <body>
    <h2>CAPSTONE - Remote Control of the car</h2>
    
    <p>Distance: <span id="distance">...</span></p>

    <div class="control-grid">
      <div></div>
      <button onclick="send('forward')">⬆️</button>
      <div></div>
      
      <button onclick="send('left')">⬅️</button>
      <button onclick="send('stop')">⏹️</button>
      <button onclick="send('right')">➡️</button>
      
      <div></div>
      <button onclick="send('backward')">⬇️</button>
      <div></div>
    </div>

    <div class="row">
      <label for="speed">Speed : <span id="speedValue">150</span></label><br>
      <input type="range" id="speed" min="0" max="255" value="150" oninput="updateSpeed(this.value)">
    </div>

    <script>
      function send(cmd) {
        fetch('/' + cmd);
      }

      function updateSpeed(val) {
        document.getElementById("speedValue").innerText = val;
        fetch('/speed?value=' + val);
      }

      setInterval(() => {
        fetch('/distance')
          .then(res => res.text())
          .then(data => {
            const d = parseFloat(data);
            const output = (d < 10) ? "🚨Obstacle detected🚨" : d + " cm";
            document.getElementById("distance").innerText = output;
          });
      }, 500);
    </script>
  </body>
  </html>
  )rawliteral";
}