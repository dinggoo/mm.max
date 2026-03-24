#include <Adafruit_DotStar.h>
#include <SPI.h>

// DotStar strip configuration
#define NUMPIXELS 30    // Number of LEDs in strip (adjust as needed)
#define DATAPIN   4     // Data pin
#define CLOCKPIN  5     // Clock pin

Adafruit_DotStar strip(NUMPIXELS, DATAPIN, CLOCKPIN, DOTSTAR_BRG);

// Serial communication variables
String inputString = "";
boolean stringComplete = false;

// LED control variables
uint8_t brightness = 255;
uint32_t currentColor = 0xFF0000; // Default red

void setup() {
  Serial.begin(9600);
  strip.begin();
  strip.show(); // Initialize all pixels to 'off'
  
  // Reserve 200 bytes for the inputString
  inputString.reserve(200);
  
  Serial.println("DotStar Controller Ready");
  Serial.println("Commands:");
  Serial.println("  color <r> <g> <b> - Set all LEDs to RGB color (0-255)");
  Serial.println("  pixel <index> <r> <g> <b> - Set single pixel color");
  Serial.println("  brightness <value> - Set brightness (0-255)");
  Serial.println("  fill <r> <g> <b> - Fill all pixels with color");
  Serial.println("  clear - Turn off all LEDs");
  Serial.println("  rainbow - Display rainbow pattern");
  Serial.println("  chase <r> <g> <b> <speed> - Color chase effect");
}

void loop() {
  // Check for serial input
  if (stringComplete) {
    processCommand(inputString);
    inputString = "";
    stringComplete = false;
  }
}

void serialEvent() {
  while (Serial.available()) {
    char inChar = (char)Serial.read();
    inputString += inChar;
    if (inChar == '\n') {
      stringComplete = true;
    }
  }
}

void processCommand(String command) {
  command.trim();
  command.toLowerCase();
  
  if (command.startsWith("color ")) {
    handleColorCommand(command);
  }
  else if (command.startsWith("pixel ")) {
    handlePixelCommand(command);
  }
  else if (command.startsWith("brightness ")) {
    handleBrightnessCommand(command);
  }
  else if (command.startsWith("fill ")) {
    handleFillCommand(command);
  }
  else if (command == "clear") {
    clearStrip();
  }
  else if (command == "rainbow") {
    rainbowPattern();
  }
  else if (command.startsWith("chase ")) {
    handleChaseCommand(command);
  }
  else {
    Serial.println("Unknown command: " + command);
  }
}

void handleColorCommand(String command) {
  // Parse "color r g b"
  int r, g, b;
  if (parseRGB(command.substring(6), r, g, b)) {
    setAllPixels(r, g, b);
    Serial.println("Color set to RGB(" + String(r) + "," + String(g) + "," + String(b) + ")");
  }
}

void handlePixelCommand(String command) {
  // Parse "pixel index r g b"
  String params = command.substring(6);
  int spaceIndex1 = params.indexOf(' ');
  int spaceIndex2 = params.indexOf(' ', spaceIndex1 + 1);
  int spaceIndex3 = params.indexOf(' ', spaceIndex2 + 1);
  
  if (spaceIndex1 > 0 && spaceIndex2 > 0 && spaceIndex3 > 0) {
    int index = params.substring(0, spaceIndex1).toInt();
    int r = params.substring(spaceIndex1 + 1, spaceIndex2).toInt();
    int g = params.substring(spaceIndex2 + 1, spaceIndex3).toInt();
    int b = params.substring(spaceIndex3 + 1).toInt();
    
    if (index >= 0 && index < NUMPIXELS) {
      strip.setPixelColor(index, r, g, b);
      strip.show();
      Serial.println("Pixel " + String(index) + " set to RGB(" + String(r) + "," + String(g) + "," + String(b) + ")");
    } else {
      Serial.println("Invalid pixel index: " + String(index));
    }
  }
}

void handleBrightnessCommand(String command) {
  int value = command.substring(11).toInt();
  if (value >= 0 && value <= 255) {
    brightness = value;
    strip.setBrightness(brightness);
    strip.show();
    Serial.println("Brightness set to " + String(brightness));
  } else {
    Serial.println("Invalid brightness value: " + String(value));
  }
}

void handleFillCommand(String command) {
  int r, g, b;
  if (parseRGB(command.substring(5), r, g, b)) {
    setAllPixels(r, g, b);
    Serial.println("Strip filled with RGB(" + String(r) + "," + String(g) + "," + String(b) + ")");
  }
}

void handleChaseCommand(String command) {
  // Parse "chase r g b speed"
  String params = command.substring(6);
  int spaceIndex1 = params.indexOf(' ');
  int spaceIndex2 = params.indexOf(' ', spaceIndex1 + 1);
  int spaceIndex3 = params.indexOf(' ', spaceIndex2 + 1);
  
  if (spaceIndex1 > 0 && spaceIndex2 > 0 && spaceIndex3 > 0) {
    int r = params.substring(0, spaceIndex1).toInt();
    int g = params.substring(spaceIndex1 + 1, spaceIndex2).toInt();
    int b = params.substring(spaceIndex2 + 1, spaceIndex3).toInt();
    int speed = params.substring(spaceIndex3 + 1).toInt();
    
    colorChase(r, g, b, speed);
  }
}

bool parseRGB(String rgbString, int &r, int &g, int &b) {
  int spaceIndex1 = rgbString.indexOf(' ');
  int spaceIndex2 = rgbString.indexOf(' ', spaceIndex1 + 1);
  
  if (spaceIndex1 > 0 && spaceIndex2 > 0) {
    r = rgbString.substring(0, spaceIndex1).toInt();
    g = rgbString.substring(spaceIndex1 + 1, spaceIndex2).toInt();
    b = rgbString.substring(spaceIndex2 + 1).toInt();
    
    // Validate RGB values
    if (r >= 0 && r <= 255 && g >= 0 && g <= 255 && b >= 0 && b <= 255) {
      return true;
    }
  }
  Serial.println("Invalid RGB values");
  return false;
}

void setAllPixels(int r, int g, int b) {
  for (int i = 0; i < NUMPIXELS; i++) {
    strip.setPixelColor(i, r, g, b);
  }
  strip.show();
}

void clearStrip() {
  strip.clear();
  strip.show();
  Serial.println("Strip cleared");
}

void rainbowPattern() {
  for (int i = 0; i < NUMPIXELS; i++) {
    int hue = (i * 256 / NUMPIXELS) % 256;
    strip.setPixelColor(i, strip.gamma32(strip.ColorHSV(hue * 256)));
  }
  strip.show();
  Serial.println("Rainbow pattern displayed");
}

void colorChase(int r, int g, int b, int delayTime) {
  for (int i = 0; i < NUMPIXELS; i++) {
    strip.clear();
    strip.setPixelColor(i, r, g, b);
    strip.show();
    delay(delayTime);
  }
  Serial.println("Chase complete");
}