/*
 by Mark Meeuwenoord 2024
 */


#include <Adafruit_NeoPixel.h>

#ifdef __AVR__
#include <avr/power.h>
#endif

#define NUM_PIXELS 30
#define PIN_STRIP 2

Adafruit_NeoPixel strip = Adafruit_NeoPixel(NUM_PIXELS, PIN_STRIP, NEO_GRB + NEO_KHZ800);

void setup() {
#ifdef __AVR__
  if (F_CPU == 16000000) {
    clock_prescale_set(clock_div_1);  // Set clock prescaler to 1 if using 16 MHz clock
  }
#endif

  Serial.begin(115200);
  strip.begin();
  strip.show();
}

void loop() {
  if (Serial.available() > 0) {
    String command = Serial.readStringUntil('\n');  // Read the entire command string until newline

    if (command.startsWith("p")) {
      setIndividualPixel(command);
    } else if (command.startsWith("all")) {
      setAllPixels(command);
    }
  }
}

void setIndividualPixel(String command) {
  // Command to set an individual pixel: "p n r g b"
  int n, r, g, b;
  sscanf(command.c_str(), "p %d %d %d %d", &n, &r, &g, &b);

  if (n >= 0 && n < NUM_PIXELS) {
    strip.setPixelColor(n, strip.Color(r, g, b));
    strip.show();
  }
}

void setAllPixels(String command) {
  // Command to set all pixels: "a r g b"
  int r, g, b;
  sscanf(command.c_str(), "all %d %d %d", &r, &g, &b);

  for (int i = 0; i < NUM_PIXELS; i++) {
    strip.setPixelColor(i, strip.Color(r, g, b));
  }
  strip.show();
}
