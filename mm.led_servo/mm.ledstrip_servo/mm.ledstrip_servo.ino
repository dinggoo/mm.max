// CONTROL LEDSTRIPS VIA SERIAL 

#include <Adafruit_NeoPixel.h>
#include <Servo.h>

#define NUM_STRIPS 2
#define NUM_PIXELS 8
#define PIN_STRIP01 6
#define PIN_STRIP02 7

Adafruit_NeoPixel strips[NUM_STRIPS] = {
  Adafruit_NeoPixel(NUM_PIXELS, PIN_STRIP01, NEO_GRB + NEO_KHZ800),
  Adafruit_NeoPixel(NUM_PIXELS, PIN_STRIP02, NEO_GRB + NEO_KHZ800)
};

Servo servo;

void setup() {
  Serial.begin(115200);

  for (int i = 0; i < NUM_STRIPS; i++) {
    strips[i].begin();
    strips[i].show();
  }

  servo.attach(9); // Attach servo to pin 9
}

void loop() {
  if (Serial.available() >= 9) {
    int stripNumber = Serial.parseInt();
    int ledNumber = Serial.parseInt();
    int r = Serial.parseInt();
    int g = Serial.parseInt();
    int b = Serial.parseInt();
    int angle = Serial.parseInt();

    if (Serial.read() == '\n') {
      if (stripNumber >= 0 && stripNumber < NUM_STRIPS && ledNumber >= 0 && ledNumber < NUM_PIXELS) {
        strips[stripNumber].setPixelColor(ledNumber, r, g, b);
        strips[stripNumber].show();
        //delay (10);
      }
      servo.write(angle);
    }
  }
}
