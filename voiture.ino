#include <WiFi.h>
#include <ESPAsyncWebServer.h>

// Moteur
#define ENA 2
#define IN1 4
#define IN2 5
#define IN3 18
#define IN4 19
#define ENB 21
int Speed = 150;

// Capteur Ultrasonique
#define TRIG_PIN 12
#define ECHO_PIN 14
long duration;
int distance;

// WiFi AP
const char *ssid = "ESP-Car";
const char *password = "12345678";

AsyncWebServer server(80);

// Variables de contrôle
String currentAction = "stop";

void setup() {
  Serial.begin(115200);

  // WiFi Access Point
  WiFi.softAP(ssid, password);
  Serial.println("AP actif. IP : " + WiFi.softAPIP().toString());

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
    request->send(200, "text/plain", String(getDistanceCM()));
  });

  server.begin();
}

void loop() {
  distance = getDistanceCM();
  Serial.print("Distance: ");
  Serial.print(distance);
  Serial.println(" cm");

  // Sécurité collision
  if (distance < 15 && currentAction == "forward") {
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

// Fonction distance
int getDistanceCM() {
  digitalWrite(TRIG_PIN, LOW);
  delayMicroseconds(2);
  digitalWrite(TRIG_PIN, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG_PIN, LOW);

  duration = pulseIn(ECHO_PIN, HIGH, 30000); // timeout 30ms
  int dist = duration * 0.034 / 2;
  return dist;
}

// Fonctions moteur
void carForward() {
  analogWrite(ENA, Speed);
  analogWrite(ENB, Speed);
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
}

void carBackward() {
  analogWrite(ENA, Speed);
  analogWrite(ENB, Speed);
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, LOW);
  digitalWrite(IN4, HIGH);
}

void carLeft() {
  analogWrite(ENA, Speed);
  analogWrite(ENB, Speed);
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  digitalWrite(IN3, HIGH);
  digitalWrite(IN4, LOW);
}

void carRight() {
  analogWrite(ENA, Speed);
  analogWrite(ENB, Speed);
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
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
  <html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ESP32 Car</title>
    <style>
      button { font-size: 20px; padding: 15px; margin: 5px; width: 120px; }
      .row { margin-bottom: 10px; }
    </style>
  </head>
  <body>
    <h2>ESP32 Car Control</h2>
    <p>Distance: <span id="distance">...</span> cm</p>
    <div class="row"><button onclick="send('forward')">Avancer</button></div>
    <div class="row">
      <button onclick="send('left')">Gauche</button>
      <button onclick="send('stop')">Stop</button>
      <button onclick="send('right')">Droite</button>
    </div>
    <div class="row"><button onclick="send('backward')">Reculer</button></div>

    <script>
      function send(cmd) {
        fetch('/' + cmd);
      }

      setInterval(() => {
        fetch('/distance')
          .then(res => res.text())
          .then(data => {
            document.getElementById("distance").innerText = data;
          });
      }, 500);
    </script>
  </body>
  </html>
  )rawliteral";
}
