#include <Servo.h>
#include <WiFi.h>
#include <WiFiUdp.h>
#include <OSCMessage.h>
#include <OSCBundle.h>

// WiFi Configuration
const char* ssid = "mmm";
const char* password = "canvas11";

// OSC Configuration
bool oscEnabled = true;
bool oscDebugMode = false;
bool serialDebugMode = false;

// Communication mode - determines output method
String commMode = "serial"; // "serial", "osc", or "both"

const int OSC_RECEIVE_PORT = 8000;
const int OSC_SEND_PORT = 9000;
const char* OSC_DEST_IP = "192.168.178.126"; // Default destination IP

WiFiUDP udpReceive;
WiFiUDP udpSend;

// Servo Configuration
const int NUM_SERVOS = 6;
Servo servos[NUM_SERVOS];
int servoPin[NUM_SERVOS]; // Tracks which pin each servo is attached to

// Pins
const int digitalPins[] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
const int analogPins[] = {A0, A1, A2, A3, A4, A5};
int lastDigital[12];
int lastAnalog[6];

String readMode = "b"; // Default is 'b'. Can be 'a', 'd', 'b', 'none'
unsigned long lastPoll = 0;
unsigned long pollInterval = 50;

void setup() {
  Serial.begin(9600);
  
  // Initialize pins
  for (int i = 0; i < 12; i++) {
    pinMode(digitalPins[i], INPUT); // Change to INPUT_PULLUP if you dont want to use resistors everywhere
    lastDigital[i] = digitalRead(digitalPins[i]);
  }
  
  for (int i = 0; i < 6; i++) {
    lastAnalog[i] = analogRead(analogPins[i]);
    servoPin[i] = -1;
  }
  
  // Initialize WiFi and OSC
  initWiFi();
  if (oscEnabled) {
    initOSC();
  }
}

void loop() {
  if (Serial.available()) {
    handleSerial();
  }
  
  if (oscEnabled) {
    handleOSCReceive();
  }
  
  if (millis() - lastPoll >= pollInterval) {
    lastPoll = millis();
    checkAndSendChanges();
  }
}

void initWiFi() {
  if (serialDebugMode) {
    Serial.println("Connecting to WiFi...");
  }
  
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    if (serialDebugMode) {
      Serial.print(".");
    }
  }
  
  // Wait 1 second then print IP
  delay(1000);
  Serial.print("WiFi connected! IP address: ");
  Serial.println(WiFi.localIP());
  
  if (serialDebugMode) {
    Serial.print("Signal strength (RSSI): ");
    Serial.print(WiFi.RSSI());
    Serial.println(" dBm");
  }
}

void initOSC() {
  udpReceive.begin(OSC_RECEIVE_PORT);
  udpSend.begin(OSC_SEND_PORT);
  
  // Print OSC startup info
  Serial.println("=== OSC Configuration ===");
  Serial.print("OSC Receive Port: ");
  Serial.println(OSC_RECEIVE_PORT);
  Serial.print("OSC Send Port: ");
  Serial.println(OSC_SEND_PORT);
  Serial.print("Default Destination IP: ");
  Serial.println(OSC_DEST_IP);
  Serial.println("OSC Address Space:");
  Serial.println("  /mode \"b\" - Set read mode (a,d,b,none)");
  Serial.println("  /r - Request current values");
  Serial.println("  /pollspeed 100 - Set poll interval (ms)");
  Serial.println("  /debug \"on\" - Debug control (on,off,serial,osc)");
  Serial.println("  /comm \"serial\" - Communication mode (serial,osc,both)");
  Serial.println("  /w \"d\" 13 1 - Write commands (d=digital, a=analog, s=servo)");
  Serial.println("");
  Serial.println("Default: Serial readout only (use /comm to change)");
  Serial.println("========================");
  
  if (oscDebugMode) {
    Serial.println("OSC Debug Mode: ENABLED");
  }
}

void handleOSCReceive() {
  int packetSize = udpReceive.parsePacket();
  if (packetSize) {
    if (oscDebugMode) {
      Serial.print("OSC packet received, size: ");
      Serial.println(packetSize);
    }
    
    OSCMessage msg;
    while (packetSize--) {
      msg.fill(udpReceive.read());
    }
    
    if (!msg.hasError()) {
      processOSCMessage(msg);
    } else {
      if (oscDebugMode) {
        Serial.print("OSC Error: ");
        Serial.println(msg.getError());
      }
    }
  }
}

void processOSCMessage(OSCMessage &msg) {
  if (oscDebugMode) {
    char addr[100];
    msg.getAddress(addr);
    Serial.print("OSC Address: ");
    Serial.println(addr);
    Serial.print("Data count: ");
    Serial.println(msg.size());
  }
  
  // Simple OSC addresses matching serial commands
  msg.dispatch("/mode", handleModeOSC);
  msg.dispatch("/r", handleRequestOSC);
  msg.dispatch("/pollspeed", handlePollSpeedOSC);
  msg.dispatch("/debug", handleDebugOSC);
  msg.dispatch("/comm", handleCommOSC);
  msg.dispatch("/w", handleWriteOSC);
}

void handleModeOSC(OSCMessage &msg) {
  if (msg.size() >= 1) {
    char modeStr[10];
    msg.getString(0, modeStr, sizeof(modeStr));
    
    String mode = String(modeStr);
    if (mode == "a" || mode == "d" || mode == "b" || mode == "none") {
      readMode = mode;
      
      if (oscDebugMode) {
        Serial.print("OSC Mode changed to: ");
        Serial.println(readMode);
      }
      
      // Send confirmation
      sendOSCMessage("/mode/confirm", readMode.c_str());
    }
  }
}

void handleRequestOSC(OSCMessage &msg) {
  if (oscDebugMode) {
    Serial.println("OSC Request for current values");
  }
  
  // Send current digital and analog values based on comm mode
  if (readMode == "d" || readMode == "b") {
    if (commMode == "serial" || commMode == "both") {
      sendDigital();
    }
    if (commMode == "osc" || commMode == "both") {
      sendDigitalOSC();
    }
  }
  if (readMode == "a" || readMode == "b") {
    if (commMode == "serial" || commMode == "both") {
      sendAnalog();
    }
    if (commMode == "osc" || commMode == "both") {
      sendAnalogOSC();
    }
  }
}

void handlePollSpeedOSC(OSCMessage &msg) {
  if (msg.size() >= 1) {
    int speed = msg.getInt(0);
    
    if (speed >= 10) {
      pollInterval = speed;
      
      if (oscDebugMode) {
        Serial.print("OSC Poll speed changed to: ");
        Serial.println(pollInterval);
      }
      
      // Send confirmation
      sendOSCMessage("/pollspeed/confirm", pollInterval);
    }
  }
}

void handleDebugOSC(OSCMessage &msg) {
  if (msg.size() >= 1) {
    char debugStr[10];
    msg.getString(0, debugStr, sizeof(debugStr));
    
    String debug = String(debugStr);
    if (debug == "on") {
      serialDebugMode = true;
      oscDebugMode = true;
      Serial.println("Debug modes enabled via OSC");
    } else if (debug == "off") {
      serialDebugMode = false;
      oscDebugMode = false;
      Serial.println("Debug modes disabled via OSC");
    } else if (debug == "serial") {
      serialDebugMode = true;
      oscDebugMode = false;
      Serial.println("Serial debug enabled via OSC");
    } else if (debug == "osc") {
      serialDebugMode = false;
      oscDebugMode = true;
      Serial.println("OSC debug enabled via OSC");
    }
    
    // Send confirmation
    sendOSCMessage("/debug/confirm", debugStr);
  }
}

void handleCommOSC(OSCMessage &msg) {
  if (msg.size() >= 1) {
    char commStr[10];
    msg.getString(0, commStr, sizeof(commStr));
    
    String comm = String(commStr);
    if (comm == "serial") {
      commMode = "serial";
      Serial.println("Communication mode: Serial only");
    } else if (comm == "osc") {
      commMode = "osc";
      Serial.println("Communication mode: OSC only");
      sendOSCMessage("/comm/confirm", "osc");
    } else if (comm == "both") {
      commMode = "both";
      Serial.println("Communication mode: Both Serial and OSC");
      sendOSCMessage("/comm/confirm", "both");
    }
  }
}

void handleWriteOSC(OSCMessage &msg) {
  if (msg.size() >= 3) {
    char typeStr[2];
    msg.getString(0, typeStr, sizeof(typeStr));
    int pin = msg.getInt(1);
    int value = msg.getInt(2);
    
    String type = String(typeStr);
    
    if (oscDebugMode) {
      Serial.print("OSC Write - Type: ");
      Serial.print(type);
      Serial.print(" Pin: ");
      Serial.print(pin);
      Serial.print(" Value: ");
      Serial.println(value);
    }
    
    if (type == "d") {
      pinMode(pin, OUTPUT);
      digitalWrite(pin, value);
      sendOSCMessage("/w/confirm", "d", pin, value);
    } else if (type == "a") {
      pinMode(pin, OUTPUT);
      analogWrite(pin, value);
      sendOSCMessage("/w/confirm", "a", pin, value);
    } else if (type == "s") {
      if (pin >= 2 && pin <= 13) {
        int index = getServoIndex(pin);
        if (index >= 0) {
          if (!servos[index].attached()) {
            servos[index].attach(pin);
          }
          servos[index].write(constrain(value, 0, 180));
          sendOSCMessage("/w/confirm", "s", pin, value);
        }
      }
    }
  }
}

void checkAndSendChanges() {
  if (readMode == "none") return;
  
  bool changed = false;
  
  if (readMode == "d" || readMode == "b") {
    for (int i = 0; i < 12; i++) {
      int val = digitalRead(digitalPins[i]);
      if (val != lastDigital[i]) {
        lastDigital[i] = val;
        changed = true;
      }
    }
    if (changed) {
      if (commMode == "serial" || commMode == "both") {
        sendDigital();
      }
      if (oscEnabled && (commMode == "osc" || commMode == "both")) {
        sendDigitalOSC();
      }
    }
  }
  
  changed = false;
  
  if (readMode == "a" || readMode == "b") {
    for (int i = 0; i < 6; i++) {
      int val = analogRead(analogPins[i]);
      if (abs(val - lastAnalog[i]) > 4) {
        lastAnalog[i] = val;
        changed = true;
      }
    }
    if (changed) {
      if (commMode == "serial" || commMode == "both") {
        sendAnalog();
      }
      if (oscEnabled && (commMode == "osc" || commMode == "both")) {
        sendAnalogOSC();
      }
    }
  }
}

void sendDigital() {
  if (serialDebugMode) {
    Serial.print("Sending digital values: ");
  }
  
  Serial.print("d");
  for (int i = 0; i < 12; i++) {
    Serial.print(" ");
    Serial.print(lastDigital[i]);
  }
  Serial.println();
}

void sendAnalog() {
  if (serialDebugMode) {
    Serial.print("Sending analog values: ");
  }
  
  Serial.print("a");
  for (int i = 0; i < 6; i++) {
    Serial.print(" ");
    Serial.print(lastAnalog[i]);
  }
  Serial.println();
}

void sendDigitalOSC() {
  OSCMessage msg("/digital");
  
  for (int i = 0; i < 12; i++) {
    msg.add(lastDigital[i]);
  }
  
  sendOSCMessage(msg);
  
  if (oscDebugMode) {
    Serial.println("OSC: Sent digital values");
  }
}

void sendAnalogOSC() {
  OSCMessage msg("/analog");
  
  for (int i = 0; i < 6; i++) {
    msg.add(lastAnalog[i]);
  }
  
  sendOSCMessage(msg);
  
  if (oscDebugMode) {
    Serial.println("OSC: Sent analog values");
  }
}

void sendOSCMessage(OSCMessage &msg) {
  if (!oscEnabled) return;
  
  udpSend.beginPacket(OSC_DEST_IP, OSC_SEND_PORT);
  msg.send(udpSend);
  udpSend.endPacket();
}

void sendOSCMessage(const char* address, int value) {
  if (!oscEnabled) return;
  
  OSCMessage msg(address);
  msg.add(value);
  sendOSCMessage(msg);
}

void sendOSCMessage(const char* address, const char* value) {
  if (!oscEnabled) return;
  
  OSCMessage msg(address);
  msg.add(value);
  sendOSCMessage(msg);
}

void sendOSCMessage(const char* address, const char* type, int pin, int value) {
  if (!oscEnabled) return;
  
  OSCMessage msg(address);
  msg.add(type);
  msg.add(pin);
  msg.add(value);
  sendOSCMessage(msg);
}

void handleSerial() {
  static char buffer[64];
  static byte idx = 0;
  
  while (Serial.available()) {
    char c = Serial.read();
    if (c == '\n' || c == '\r') {
      buffer[idx] = '\0';
      parseCommand(buffer);
      idx = 0;
    } else if (idx < sizeof(buffer) - 1) {
      buffer[idx++] = c;
    }
  }
}

void parseCommand(char* cmd) {
  // Request current values
  if (strcmp(cmd, "r") == 0) {
    if (readMode == "none") return;
    if (readMode == "d" || readMode == "b") {
      if (commMode == "serial" || commMode == "both") sendDigital();
      if (oscEnabled && (commMode == "osc" || commMode == "both")) sendDigitalOSC();
    }
    if (readMode == "a" || readMode == "b") {
      if (commMode == "serial" || commMode == "both") sendAnalog();
      if (oscEnabled && (commMode == "osc" || commMode == "both")) sendAnalogOSC();
    }
  }
  // Set read mode
  else if (strncmp(cmd, "mode ", 5) == 0) {
    String m = String(cmd + 5);
    if (m == "a" || m == "d" || m == "b" || m == "none") {
      readMode = m;
      Serial.print("mode ");
      Serial.println(readMode);
    }
  }
  // Set poll speed
  else if (strncmp(cmd, "pollspeed ", 10) == 0) {
    int val;
    if (sscanf(cmd + 10, "%d", &val) == 1 && val >= 10) {
      pollInterval = val;
      Serial.print("pollspeed ");
      Serial.println(pollInterval);
    }
  }
  // Communication mode control
  else if (strncmp(cmd, "comm ", 5) == 0) {
    String comm = String(cmd + 5);
    if (comm == "serial") {
      commMode = "serial";
      Serial.println("Communication mode: Serial only");
    } else if (comm == "osc") {
      commMode = "osc";
      Serial.println("Communication mode: OSC only");
    } else if (comm == "both") {
      commMode = "both";
      Serial.println("Communication mode: Both Serial and OSC");
    }
  }
  // Debug mode control
  else if (strncmp(cmd, "debug ", 6) == 0) {
    String params = String(cmd + 6);
    if (params == "serial on") {
      serialDebugMode = true;
      Serial.println("Serial debug enabled");
    } else if (params == "serial off") {
      serialDebugMode = false;
      Serial.println("Serial debug disabled");
    } else if (params == "osc on") {
      oscDebugMode = true;
      Serial.println("OSC debug enabled");
    } else if (params == "osc off") {
      oscDebugMode = false;
      Serial.println("OSC debug disabled");
    } else if (params == "all off") {
      serialDebugMode = false;
      oscDebugMode = false;
      Serial.println("All debug modes disabled");
    }
  }
  // Write commands (digital, analog, servo)
  else if (cmd[0] == 'w') {
    char type;
    int pin, val;
    if (sscanf(cmd, "w %c %d %d", &type, &pin, &val) == 3) {
      if (type == 'd') {
        pinMode(pin, OUTPUT);
        digitalWrite(pin, val);
        if (serialDebugMode) {
          Serial.print("Digital write pin ");
          Serial.print(pin);
          Serial.print(" = ");
          Serial.println(val);
        }
      } else if (type == 'a') {
        pinMode(pin, OUTPUT);
        analogWrite(pin, val);
        if (serialDebugMode) {
          Serial.print("Analog write pin ");
          Serial.print(pin);
          Serial.print(" = ");
          Serial.println(val);
        }
      } else if (type == 's') {
        if (pin >= 2 && pin <= 13) {
          int index = getServoIndex(pin);
          if (index >= 0) {
            if (!servos[index].attached()) {
              servos[index].attach(pin);
            }
            servos[index].write(constrain(val, 0, 180));
            if (serialDebugMode) {
              Serial.print("Servo pin ");
              Serial.print(pin);
              Serial.print(" = ");
              Serial.println(val);
            }
          }
        }
      }
    }
  }
  // Show status
  else if (strcmp(cmd, "status") == 0) {
    Serial.println("=== Arduino Status ===");
    Serial.print("Read Mode: ");
    Serial.println(readMode);
    Serial.print("Poll Interval: ");
    Serial.print(pollInterval);
    Serial.println(" ms");
    Serial.print("Communication Mode: ");
    Serial.println(commMode);
    Serial.print("OSC Enabled: ");
    Serial.println(oscEnabled ? "YES" : "NO");
    Serial.print("Serial Debug: ");
    Serial.println(serialDebugMode ? "ON" : "OFF");
    Serial.print("OSC Debug: ");
    Serial.println(oscDebugMode ? "ON" : "OFF");
    Serial.print("WiFi IP: ");
    Serial.println(WiFi.localIP());
    Serial.println("======================");
  }
}

int getServoIndex(int pin) {
  for (int i = 0; i < NUM_SERVOS; i++) {
    if (servoPin[i] == pin) return i;
  }
  for (int i = 0; i < NUM_SERVOS; i++) {
    if (servoPin[i] == -1) {
      servoPin[i] = pin;
      return i;
    }
  }
  return -1;
}