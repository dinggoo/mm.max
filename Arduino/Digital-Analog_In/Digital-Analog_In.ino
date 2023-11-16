
// These constants won't change. They're used to give names to the pins used:
const int analogInPin = A0;  // Analog input pin that the potentiometer is attached to
//const int analogOutPin = 9; // Analog output pin that the LED is attached to

int sensorValue = 0;        // value read from the pot
//int outputValue = 0;        // value output to the PWM (analog out)

void setup() {
  // initialize serial communications at 9600 bps:
  Serial.begin(9600);
}

void loop() {

  sensorValue = analogRead(analogInPin);   // read the analog in value:
  Serial.println(sensorValue);             // potentiometer on pin A0
  delay(2);                                // 2 ms delay for stability
}
