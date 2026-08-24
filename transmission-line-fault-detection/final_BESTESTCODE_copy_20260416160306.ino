#include <WiFi.h>
#include <WiFiClientSecure.h>
#include <PubSubClient.h>
#include <UniversalTelegramBot.h>

/******************** WIFI ********************/
char ssid[] = "GAURANSH";
char pass[] = "12345678";

/******************** TELEGRAM ********************/
#define BOT_TOKEN "<>"
WiFiClientSecure secured_client;
UniversalTelegramBot bot(BOT_TOKEN, secured_client);

const char* chatIds[] = {"1254480027", "5896733853", "5714992915", "1429589543"};

/******************** MQTT DASHBOARD ********************/
const char* mqtt_server = "broker.emqx.io";
const char* mqtt_topic = "du/physics/gauransh/test";
WiFiClient mqtt_wifi_client;
PubSubClient mqtt_client(mqtt_wifi_client);

/******************** SENSOR & CALIBRATION ********************/
const int sensorPin = 34;
float referenceVoltage = 3.3;
int adcResolution = 4095;
float voltageDividerRatio = 5.0;
int numberOfResistors = 8;

float calibrationVoltages[] = {4.36, 5.98, 7.01, 7.50, 7.71, 7.87, 8.01, 8.12};

/******************** GEO COORDINATES ********************/
float lats[] = {28.6685, 28.6640, 28.6595, 28.6552, 28.6508, 28.6463, 28.6418, 28.6374, 28.6330};
float lons[] = {77.1481, 77.1571, 77.1660, 77.1748, 77.1839, 77.1928, 77.2017, 77.2106, 77.2196};

String workerName = "Gauransh Bansal";
String areaName = "Punjabi Bagh → Rajiv Chowk";

/******************** CONTROL ********************/
String lastFaultState = "INIT";
unsigned long lastCheckTime = 0;
const unsigned long checkInterval = 5000;

/******************** HELPER FUNCTIONS ********************/

void connectWiFi() {
  Serial.print("Connecting to WiFi");
  WiFi.begin(ssid, pass);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  secured_client.setInsecure();
  Serial.println("\nWiFi Connected!");
}

void reconnectMQTT() {
  while (!mqtt_client.connected()) {
    Serial.print("Linking to Dashboard...");
    if (mqtt_client.connect("ESP32_GAURANSH_UNIT")) {
      Serial.println("CONNECTED");
    } else {
      Serial.print("failed, rc=");
      Serial.print(mqtt_client.state());
      Serial.println(" retrying in 2 seconds");
      delay(2000);
    }
  }
}

float readInputVoltage() {
  int samples = 20;
  long totalADC = 0;
  for (int i = 0; i < samples; i++) {
    totalADC += analogRead(sensorPin);
    delay(5);
  }
  return ((totalADC / samples) * referenceVoltage / adcResolution) * voltageDividerRatio;
}

int getFaultResistor(float measuredVoltage) {
  float minDiff = 100.0;
  int bestIndex = 0;
  for (int i = 0; i < numberOfResistors; i++) {
    float diff = abs(measuredVoltage - calibrationVoltages[i]);
    if (diff < minDiff) {
      minDiff = diff;
      bestIndex = i;
    }
  }
  return bestIndex + 1;
}

String classifyFault(int resistorIndex) {
  if (resistorIndex <= 2) return "CRITICAL FAULT ⚠️";
  else if (resistorIndex <= 4) return "MAJOR FAULT 🔴";
  else if (resistorIndex <= 6) return "MINOR FAULT 🟠";
  else return "NEAR END LINE";
}

void sendTelegramMessage(String message) {
  for (int i = 0; i < 4; i++) {
    bot.sendMessage(chatIds[i], message, "");
  }
}

/******************** SETUP ********************/
void setup() {
  Serial.begin(115200);
  analogReadResolution(12);
  analogSetPinAttenuation(sensorPin, ADC_11db);
  
  connectWiFi();
  
  // Set MQTT server
  mqtt_client.setServer(mqtt_server, 1883);
  
  Serial.println("ESP32 Electronaut System Ready");
}

/******************** LOOP ********************/
void loop() {
  // Maintain MQTT connection
  if (!mqtt_client.connected()) {
    reconnectMQTT();
  }
  mqtt_client.loop();

  if (millis() - lastCheckTime >= checkInterval) {
    lastCheckTime = millis();
    
    float inputVoltage = readInputVoltage();
    bool isHealthy = (inputVoltage >= 8.05);
    int faultResistor = getFaultResistor(inputVoltage);
    
    int idx = isHealthy ? 8 : constrain(faultResistor, 0, 8);
    String mapUrl = "http://maps.google.com/maps?q=" + String(lats[idx], 4) + "," + String(lons[idx], 4);

    Serial.print("Voltage: ");
    Serial.print(inputVoltage, 2);
    Serial.print(" V | ");

    String message = "";
    String statusPayload;

    if (isHealthy) {
      Serial.println("HEALTHY");
      message += "🟢 LINE HEALTHY / RESTORED\n\n";
      message += "⚡ Voltage: " + String(inputVoltage, 2) + " V\n";
      message += "📍 Location: Rajiv Chowk\n\n🗺️ " + mapUrl;
      statusPayload = "HEALTHY";
    } else {
      String faultType = classifyFault(faultResistor);
      Serial.print("R"); Serial.print(faultResistor); 
      Serial.print(" | "); Serial.println(faultType);

      message += "🚨 FAULT DETECTED 🚨\n\n";
      message += "👷 " + workerName + "\n";
      message += "📍 " + areaName + "\n\n";
      message += "⚡ Voltage: " + String(inputVoltage, 2) + " V\n";
      message += "🔧 Section: R" + String(faultResistor) + "\n";
      message += "🧠 Type: " + faultType + "\n\n🗺️ Location:\n" + mapUrl;
      statusPayload = String(faultResistor);
    }

    // Send Telegram ONLY if state changed (prevents spam)
    if (message != lastFaultState) {
      sendTelegramMessage(message);
      lastFaultState = message;
      Serial.println("Telegram message sent");
    }

    // ALWAYS publish to dashboard WITH RETAIN flag
    // This ensures the website gets the current state immediately on connect/reload
    bool published = mqtt_client.publish(mqtt_topic, statusPayload.c_str(), true);
    
    Serial.print("📤 Published to dashboard → ");
    Serial.print(statusPayload);
    Serial.print(" | Retained: true | Success: ");
    Serial.println(published ? "YES" : "NO");
  }
}