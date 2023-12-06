int analogPins[] = {A0, A1, A2, A3, A4, A5}; // Array of analog pins to read
int readings[6]; // Array to store the sensor readings

void setup() {
  Serial.begin(9600); // Initialize serial communication
}

void loop() {
  for (int i = 0; i < 6; i++) {
    readings[i] = analogRead(analogPins[i]); // Read analog value from each pin and store in array
  }
  // Print the sensor values to the serial port on one line
  for (int i = 0; i < 6; i++) {
    Serial.print(readings[i]);
    if (i < 5) {
      Serial.print(" ");
    }
  }
  Serial.println(); // Add a line break at the end
  delay(10); // Wait for 10 ms
}
