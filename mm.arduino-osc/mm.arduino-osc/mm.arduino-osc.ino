// By Mark Meeuwenoord, Henry Vega

#include <WiFi.h>
#include <OSCMessage.h>
#include <Servo.h>

const char *ssid = "robolab";                // Your WiFi SSID
const char *password = "robolab4you";       // Your WiFi password
IPAddress localIP(192, 168, 0, 25);      // Your computer's IP address
int sendPort = 8000;                    // Port to send OSC messages
int receivePort = 9999;                 // Port to receive OSC messages

WiFiUDP Udp;

Servo servo1;
Servo servo2;
Servo servo3;
Servo servo4;

void setup() {
  Serial.begin(9600);
  delay(10);

  // Connect to Wi-Fi
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.print("Local IP Address: "); // check serial monitor in Arduino IDE to see arduino's IP adress. you need that in the udpsend setup in Max
  Serial.println(WiFi.localIP());

  // Start the UDP connection
  Udp.begin(receivePort);

  // Attach servos to pins
  servo1.attach(5);
  servo2.attach(6);
  servo3.attach(9);
  servo4.attach(10);
}

void loop() {
  // Check for incoming OSC messages
  int packetSize = Udp.parsePacket();
  if (packetSize) {
    OSCMessage msgIn;
    while (packetSize--) {
      msgIn.fill(Udp.read());
    }

    if (!msgIn.hasError()) {
      // Get the OSC address
      const char *address = msgIn.getAddress();
     // Serial.print("Received OSC message with address: ");
    // Serial.println(address);

      // Process the OSC message
      if (strcmp(address, "/readDigitalPins") == 0) {
        readDigitalPins();
      } else if (strcmp(address, "/readAnalogPins") == 0) {
        readAnalogPins();
      } else if (strcmp(address, "/writeDigitalPins") == 0) {
        writeDigitalPins(msgIn);
      } else if (strcmp(address, "/writeAnalogPins") == 0) {
        writeAnalogPins(msgIn);
      } else if (strcmp(address, "/writeServoPins") == 0) {
        writeServoPins(msgIn);
      } else {
        Serial.println("Unsupported OSC address");
      }
    } else {
      Serial.println("Error parsing OSC message");
    }
  }
}

// Function to read digital pins and send their values via OSC
void readDigitalPins() {
  OSCMessage msgOut("/digitalPinsData");
  for (int pin = 0; pin < 13; pin++) {
    if (pin < 14) {
      msgOut.add(digitalRead(pin));
    }
  }
  Udp.beginPacket(localIP, sendPort);
  msgOut.send(Udp);
  Udp.endPacket();
}

// Function to read analog pins and send their values via OSC
void readAnalogPins() {
  OSCMessage msgOut("/analogPinsData");
  for (int pin = A0; pin < A5; pin++) {
    msgOut.add(analogRead(pin));
  }
  Udp.beginPacket(localIP, sendPort);
  msgOut.send(Udp);
  Udp.endPacket();
}

// Function to write digital pins based on received OSC message
void writeDigitalPins(OSCMessage &msgIn) {
  int numArgs = msgIn.size();
  if (numArgs % 2 != 0) {
    Serial.println("Invalid number of arguments");
    return;
  }

  for (int i = 0; i < numArgs; i += 2) {
    int pin = msgIn.getInt(i);
    int value = msgIn.getInt(i + 1);
    if (pin >= 0 && pin < 14) {
      pinMode(pin, OUTPUT);
      digitalWrite(pin, value);
    } else {
      Serial.println("Invalid digital pin number");
    }
  }
}

// Function to write analog pins based on received OSC message
void writeAnalogPins(OSCMessage &msgIn) {
  int numArgs = msgIn.size();
  if (numArgs % 2 != 0) {
    Serial.println("Invalid number of arguments");
    return;
  }

  for (int i = 0; i < numArgs; i += 2) {
    int pin = msgIn.getInt(i);
    int value = msgIn.getInt(i + 1);
    if (pin >= A0 && pin < A5) {
      analogWrite(pin, value);
    } else {
      Serial.println("Invalid analog pin number");
    }
  }
}

// Function to write servo pins based on received OSC message
void writeServoPins(OSCMessage &msgIn) {
  int numArgs = msgIn.size();
  if (numArgs % 2 != 0 || numArgs > 8) { // Assuming pairs of pin and angle, maximum 4 servos
    Serial.println("Invalid number of arguments");
    return;
  }

  for (int i = 0; i < numArgs; i += 2) {
    int servoIndex = i / 2;
    int pin = msgIn.getInt(i);
    int angle = msgIn.getInt(i + 1);
    switch (servoIndex) {
      case 0:
        servo1.write(angle);
        break;
      case 1:
        servo2.write(angle);
        break;
      case 2:
        servo3.write(angle);
        break;
      case 3:
        servo4.write(angle);
        break;
      default:
        Serial.println("Invalid servo index");
        break;
    }
  }
}
