#include <WiFi.h>
#include <WiFiUdp.h>
#include <OSCMessage.h>
#include "driver/ledc.h" // Needed for ledcSetup on ESP32

// Debug flag - set to false to disable debug messages
const bool DEBUG_ENABLED = true;

// WiFi credentials
const char* ssid = "mmm";
const char* password = "canvas11";

// OSC
WiFiUDP Udp;
const int localPort = 8000;
const IPAddress outIp(192, 168, 178, 102); // Replace with OSC receiver
const int outPort = 9000;
OSCMessage incomingMsg;

enum ReadMode { READ_NONE, READ_DIGITAL, READ_ANALOG };
ReadMode currentMode = READ_NONE;
unsigned long lastSend = 0;
int interval = 100;

// All available pins for ESP32 (adjust for your specific board if needed)
int digitalPins[] = {0, 1, 2, 3, 4, 5, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 23, 25, 26, 27, 32, 33, 34, 35, 36, 39};
int analogPins[] = {32, 33, 34, 35, 36, 39}; // ADC1 pins
int servoPins[] = {25, 26};
int servoChannels[] = {0, 1}; // ESP32 PWM channels

// Debug print helper
void debugPrint(String message) {
  if (DEBUG_ENABLED) {
    Serial.print(message);
  }
}

void debugPrintln(String message) {
  if (DEBUG_ENABLED) {
    Serial.println(message);
  }
}

void setup() {
  Serial.begin(9600);
  delay(1000); // Give serial time to initialize
  
  debugPrintln("\n=== ESP32 OSC Controller Starting ===");
  debugPrint("Attempting to connect to WiFi network: ");
  debugPrintln(ssid);
  
  if (DEBUG_ENABLED) {
    Serial.print("Password length: ");
    Serial.println(strlen(password));
  }
  
  WiFi.mode(WIFI_STA); // Set WiFi to station mode
  WiFi.begin(ssid, password);
  
  int attempts = 0;
  while (WiFi.status() != WL_CONNECTED && attempts < 30) { // 15 second timeout
    delay(500);
    debugPrint(".");
    attempts++;
    
    // Print status every 5 attempts (only if debug enabled)
    if (DEBUG_ENABLED && attempts % 5 == 0) {
      Serial.println();
      Serial.print("WiFi Status: ");
      switch(WiFi.status()) {
        case WL_IDLE_STATUS:     Serial.println("IDLE"); break;
        case WL_NO_SSID_AVAIL:   Serial.println("NO SSID AVAILABLE"); break;
        case WL_SCAN_COMPLETED:  Serial.println("SCAN COMPLETED"); break;
        case WL_CONNECTED:       Serial.println("CONNECTED"); break;
        case WL_CONNECT_FAILED:  Serial.println("CONNECTION FAILED"); break;
        case WL_CONNECTION_LOST: Serial.println("CONNECTION LOST"); break;
        case WL_DISCONNECTED:    Serial.println("DISCONNECTED"); break;
        default:                 Serial.println("UNKNOWN"); break;
      }
      Serial.print("Attempt ");
      Serial.print(attempts);
      Serial.print("/30: ");
    }
  }
  
  if (WiFi.status() == WL_CONNECTED) {
    debugPrintln("");
    debugPrintln("=== WiFi Connection Successful! ===");
    
    if (DEBUG_ENABLED) {
      Serial.print("SSID: ");
      Serial.println(WiFi.SSID());
      Serial.print("Gateway: ");
      Serial.println(WiFi.gatewayIP());
      Serial.print("Subnet Mask: ");
      Serial.println(WiFi.subnetMask());
      Serial.print("DNS: ");
      Serial.println(WiFi.dnsIP());
      Serial.print("RSSI: ");
      Serial.print(WiFi.RSSI());
      Serial.println(" dBm");
    }
    
    // Always show IP address (essential info)
    Serial.print("IP address: ");
    Serial.println(WiFi.localIP());
    
    Udp.begin(localPort);
    debugPrint("UDP listening on port: ");
    debugPrintln(String(localPort));
    debugPrintln("=== Ready for OSC messages ===");
  } else {
    debugPrintln("");
    debugPrintln("=== WiFi Connection Failed! ===");
    if (DEBUG_ENABLED) {
      Serial.println("Please check:");
      Serial.println("1. WiFi network name (SSID)");
      Serial.println("2. WiFi password");
      Serial.println("3. Network is 2.4GHz (ESP32 doesn't support 5GHz)");
      Serial.println("4. Network is within range");
      Serial.println("ESP32 will continue running but without network connectivity.");
    }
  }
}

void loop() {
  // Incoming OSC
  int size = Udp.parsePacket();
  if (size > 0) {
    while (size--) incomingMsg.fill(Udp.read());
    if (!incomingMsg.hasError()) {
      handleOSC(incomingMsg);
    }
    incomingMsg.empty();
  }
  
  // Readout
  if (millis() - lastSend >= interval) {
    lastSend = millis();
    sendReadout();
  }
}

void handleOSC(OSCMessage& msg) {
  msg.route("/w", handleWrite);
  msg.route("/readmode", handleReadMode);
  msg.route("/interval", handleInterval);
  msg.route("/debug", handleDebug);
}

void handleWrite(OSCMessage& msg, int addrOffset) {
  char type = msg.getString(0)[0]; // Get first character directly
  int pin = msg.getInt(1);
  int val = msg.getInt(2);
  
  debugPrint("Write - Type: ");
  debugPrint(String(type));
  debugPrint(", Pin: ");
  debugPrint(String(pin));
  debugPrint(", Value: ");
  debugPrintln(String(val));
  
  switch (type) {
    case 'd':
      pinMode(pin, OUTPUT);
      digitalWrite(pin, val);
      break;
      
    case 'a':
      ledcAttach(pin, 5000, 8);
      ledcWrite(pin, val);
      break;
      
    case 's':
      {
        int ch = -1;
        // Find servo channel for this pin
        for (int i = 0; i < sizeof(servoPins)/sizeof(servoPins[0]); i++) {
          if (servoPins[i] == pin) {
            ch = servoChannels[i];
            break;
          }
        }
        if (ch >= 0) {
          ledcAttach(pin, 50, 16);
          int duty = map(val, 0, 180, 1638, 8192);
          ledcWrite(pin, duty);
        }
      }
      break;
      
    default:
      debugPrintln("Unknown write type");
      break;
  }
}

void handleReadMode(OSCMessage& msg, int addrOffset) {
  char mode = msg.getString(0)[0]; // Get first character directly
  
  debugPrint("Read mode changed to: ");
  debugPrintln(String(mode));
  
  switch (mode) {
    case 'd': 
      currentMode = READ_DIGITAL; 
      break;
    case 'a': 
      currentMode = READ_ANALOG; 
      break;
    default: 
      currentMode = READ_NONE; 
      break;
  }
}

void handleInterval(OSCMessage& msg, int addrOffset) {
  interval = msg.getInt(0);
  debugPrint("Interval changed to: ");
  debugPrintln(String(interval));
}

void handleDebug(OSCMessage& msg, int addrOffset) {
  // Toggle debug mode via OSC message: /debug 1 (enable) or /debug 0 (disable)
  int enable = msg.getInt(0);
  // Note: We can't change the const, but we could use a non-const variable instead
  Serial.print("Debug toggle requested: ");
  Serial.println(enable ? "ON" : "OFF");
  Serial.println("(Restart required to change debug mode)");
}

void sendReadout() {
  if (currentMode == READ_DIGITAL) {
    OSCMessage msg("/r/d");
    for (int i = 0; i < sizeof(digitalPins)/sizeof(digitalPins[0]); i++) {
      pinMode(digitalPins[i], INPUT); // Ensure pin is set as input
      int val = digitalRead(digitalPins[i]);
      msg.add((int32_t)val);
    }
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    
    debugPrintln("Sent digital readout");
  } else if (currentMode == READ_ANALOG) {
    OSCMessage msg("/r/a");
    for (int i = 0; i < sizeof(analogPins)/sizeof(analogPins[0]); i++) {
      int val = analogRead(analogPins[i]);
      msg.add((int32_t)val);
    }
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    
    debugPrintln("Sent analog readout");
  }
}