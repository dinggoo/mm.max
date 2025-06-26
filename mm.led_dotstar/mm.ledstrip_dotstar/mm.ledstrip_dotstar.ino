/*
 * Created by ArduinoGetStarted.com
 * base example code is in the public domain
 *
 * Tutorial page: https://arduinogetstarted.com/tutorials/arduino-dotstar-led-strip

Edits by Mark Meeuwenoord 2024
 */

#include <Adafruit_DotStar.h>
#include <SPI.h>  // COMMENT OUT THIS LINE FOR GEMMA OR TRINKET

<<<<<<< HEAD
#define NUMPIXELS 20  // Number of LEDs in strip
=======
#define NUMPIXELS 8  // Number of LEDs in strip
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e

// Here's how to control the LEDs from any two pins:
#define DATAPIN 2
#define CLOCKPIN 3
<<<<<<< HEAD
Adafruit_DotStar strip(NUMPIXELS, DATAPIN, CLOCKPIN, DOTSTAR_RGB);
=======
Adafruit_DotStar strip(NUMPIXELS, DATAPIN, CLOCKPIN, DOTSTAR_BRG);
>>>>>>> ed6937bfb3c5d55f578c11bc97f1c31664bbe09e

void setup() {
  Serial.begin(9600);
  strip.begin();  // INITIALIZE NeoPixel strip object (REQUIRED)
  strip.show();   // Turn OFF all pixels ASAP
  strip.setBrightness(255); // Set initial brightness to maximum

  Serial.println("Enter 'pixel r g b brightness' to set an individual pixel or 'all r g b brightness' to set all pixels.");
}

void loop() {
  if (Serial.available()) {
    String input = Serial.readStringUntil('\n');
    input.trim(); // Remove any extra newline characters

    int spaceIndex1 = input.indexOf(' ');
    int spaceIndex2 = input.indexOf(' ', spaceIndex1 + 1);
    int spaceIndex3 = input.indexOf(' ', spaceIndex2 + 1);
    int spaceIndex4 = input.indexOf(' ', spaceIndex3 + 1);

    if (spaceIndex1 > 0 && spaceIndex2 > spaceIndex1 && spaceIndex3 > spaceIndex2 && spaceIndex4 > spaceIndex3) {
      String pixelStr = input.substring(0, spaceIndex1);
      int r = input.substring(spaceIndex1 + 1, spaceIndex2).toInt();
      int g = input.substring(spaceIndex2 + 1, spaceIndex3).toInt();
      int b = input.substring(spaceIndex3 + 1, spaceIndex4).toInt();
      int brightness = input.substring(spaceIndex4 + 1).toInt();

      if (brightness >= 0 && brightness <= 255) {
        strip.setBrightness(brightness);

        if (pixelStr.equals("all")) {
          for (int i = 0; i < NUMPIXELS; i++) {
            strip.setPixelColor(i, r, g, b);
          }
          strip.show();

          // Commented out the serial output
          /*
          Serial.print("Set all pixels: R=");
          Serial.print(r);
          Serial.print(", G=");
          Serial.print(g);
          Serial.print(", B=");
          Serial.print(b);
          Serial.print(", Brightness=");
          Serial.println(brightness);
          */
        } else {
          int pixel = pixelStr.toInt();
          if (pixel >= 0 && pixel < NUMPIXELS) {
            strip.setPixelColor(pixel, r, g, b);
            strip.show();

            // Commented out the serial output
            /*
            Serial.print("Set Pixel ");
            Serial.print(pixel);
            Serial.print(": R=");
            Serial.print(r);
            Serial.print(", G=");
            Serial.print(g);
            Serial.print(", B=");
            Serial.print(b);
            Serial.print(", Brightness=");
            Serial.println(brightness);
            */
          } else {
            Serial.println("Invalid pixel number. Please enter a number between 0 and 143.");
          }
        }
      } else {
        Serial.println("Invalid brightness. Please enter a value between 0 and 255.");
      }
    } else {
      Serial.println("Invalid input format. Please enter in the format: pixel r g b brightness or all r g b brightness");
    }
  }
}
