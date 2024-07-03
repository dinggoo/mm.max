#include <Adafruit_NeoPixel.h>

#define NUM_PIXELS 30
#define PIN_STRIP 2
#define ANALOG_PIN A0  // Define the analog pin to read the sensor

Adafruit_NeoPixel strip = Adafruit_NeoPixel(NUM_PIXELS, PIN_STRIP, NEO_GRB + NEO_KHZ800);

void setup() {
  Serial.begin(115200);
  strip.begin();
  strip.show();
  pinMode(ANALOG_PIN, INPUT);  // Initialize the analog pin as an input
}

void loop() {
  // Read the analog sensor value
  int sensorValue = analogRead(ANALOG_PIN);
  //Serial.print("Sensor Value: ");
  Serial.println(sensorValue);

  // Check if there is enough serial data available
  if (Serial.available() >= 12) { // Ensure there are enough bytes for three integers (RGB) and the newline character
    int r = Serial.parseInt();
    int g = Serial.parseInt();
    int b = Serial.parseInt();
    
    if (Serial.read() == '\n') {  // Ensure the command ends with a newline character
      for (int i = 0; i < NUM_PIXELS; i++) {
        strip.setPixelColor(i, strip.Color(r, g, b));
      }
      strip.show();
    }
  }
  
  delay(20);  // Add a small delay to avoid flooding the serial output
}
