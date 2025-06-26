#include <Servo.h>

const int NUM_SERVOS = 6;
Servo servos[NUM_SERVOS];
int servoPin[NUM_SERVOS];  // Tracks which pin each servo is attached to

// Pins
const int digitalPins[] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
const int analogPins[] = {A0, A1, A2, A3, A4, A5};

int lastDigital[12];
int lastAnalog[6];

String readMode = "b";  // 'a' = analog, 'd' = digital, 'b' = both, 'none' = no input

unsigned long lastPoll = 0;
unsigned long pollInterval = 50;

void setup() {
  Serial.begin(115200);

  for (int i = 0; i < 12; i++) {
    pinMode(digitalPins[i], INPUT_PULLUP);
    lastDigital[i] = digitalRead(digitalPins[i]);
  }

  for (int i = 0; i < 6; i++) {
    lastAnalog[i] = analogRead(analogPins[i]);
    servoPin[i] = -1;
  }
}

void loop() {
  if (Serial.available()) {
    handleSerial();
  }

  if (millis() - lastPoll >= pollInterval) {
    lastPoll = millis();
    checkAndSendChanges();
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
    if (changed) sendDigital();
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
    if (changed) sendAnalog();
  }
}

void sendDigital() {
  Serial.print("d");
  for (int i = 0; i < 12; i++) {
    Serial.print(" ");
    Serial.print(lastDigital[i]);
  }
  Serial.println();
}

void sendAnalog() {
  Serial.print("a");
  for (int i = 0; i < 6; i++) {
    Serial.print(" ");
    Serial.print(lastAnalog[i]);
  }
  Serial.println();
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
  if (strcmp(cmd, "r") == 0) {
    if (readMode == "none") return;
    if (readMode == "d" || readMode == "b") sendDigital();
    if (readMode == "a" || readMode == "b") sendAnalog();
  } else if (strncmp(cmd, "mode ", 5) == 0) {
    String m = String(cmd + 5);
    if (m == "a" || m == "d" || m == "b" || m == "none") {
      readMode = m;
      Serial.print("mode ");
      Serial.println(readMode);
    }
  } else if (strncmp(cmd, "pollspeed ", 10) == 0) {
    int val;
    if (sscanf(cmd + 10, "%d", &val) == 1 && val >= 10) {
      pollInterval = val;
      Serial.print("pollspeed ");
      Serial.println(pollInterval);
    }
  } else if (cmd[0] == 'w') {
    char type;
    int pin, val;
    if (sscanf(cmd, "w %c %d %d", &type, &pin, &val) == 3) {
      if (type == 'd') {
        pinMode(pin, OUTPUT);
        digitalWrite(pin, val);
      } else if (type == 'a') {
        pinMode(pin, OUTPUT);
        analogWrite(pin, val);
      } else if (type == 's') {
        if (pin >= 2 && pin <= 13) {
          int index = getServoIndex(pin);
          if (index >= 0) {
            if (!servos[index].attached()) {
              servos[index].attach(pin);
            }
            servos[index].write(constrain(val, 0, 180));
          }
        }
      }
    }
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
