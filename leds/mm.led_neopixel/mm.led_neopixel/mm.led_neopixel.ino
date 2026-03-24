/* 
 VERSION may 2025 by Mark Meeuwenoord
*/

#include <Adafruit_NeoPixel.h>

// Configuration
#define MAX_STRIPS 4
#define MAX_PIXELS_PER_STRIP 100
#define DEFAULT_FADE_TIME 1000  // Default fade time in milliseconds

// Strip definitions - modify these for your setup
struct StripConfig {
  int pin;
  int numPixels;
  Adafruit_NeoPixel* strip;
  uint32_t currentColor;
  uint32_t targetColor;
  unsigned long fadeStartTime;
  int fadeTime;
  bool fading;
};

// Initialize your strips here
StripConfig strips[MAX_STRIPS] = {
  {2, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false},  // Strip 0: Pin 2, 30 pixels
  {3, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false},  // Strip 1: Pin 3, 30 pixels
  {4, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false},  // Strip 2: Pin 4, 30 pixels
  {5, 30, nullptr, 0, 0, 0, DEFAULT_FADE_TIME, false}   // Strip 3: Pin 5, 30 pixels
};

int numActiveStrips = 2; // Change this to match how many strips you're using

// Predefined colors
struct ColorEntry {
  const char* name;
  uint8_t r, g, b;
};

ColorEntry predefinedColors[] = {
  {"red", 255, 0, 0},
  {"green", 0, 255, 0},
  {"blue", 0, 0, 255},
  {"white", 255, 255, 255},
  {"yellow", 255, 255, 0},
  {"purple", 255, 0, 255},
  {"cyan", 0, 255, 255},
  {"orange", 255, 165, 0},
  {"pink", 255, 192, 203},
  {"lime", 50, 205, 50},
  {"magenta", 255, 0, 255},
  {"teal", 0, 128, 128},
  {"off", 0, 0, 0},
  {"black", 0, 0, 0}
};

void setup() {
  Serial.begin(9600);
  
  // Initialize strips
  for (int i = 0; i < numActiveStrips; i++) {
    strips[i].strip = new Adafruit_NeoPixel(strips[i].numPixels, strips[i].pin, NEO_GRB + NEO_KHZ800);
    strips[i].strip->begin();
    strips[i].strip->show();
    strips[i].currentColor = strips[i].strip->Color(0, 0, 0); // Start with off
  }
  
  Serial.println("Multi-Strip Color Controller Ready");
  Serial.println("Commands:");
  Serial.println("  color <strip> <colorname> - Set color (e.g., 'color 0 red')");
  Serial.println("  rgb <strip> <r> <g> <b> - Set RGB (e.g., 'rgb 0 255 100 50')");
  Serial.println("  fade <strip> <time> - Set fade time in ms (e.g., 'fade 0 2000')");
  Serial.println("  pixels <strip> <count> - Set pixel count (e.g., 'pixels 0 50')");
  Serial.println("  all <colorname> - Set all strips to same color");
}

void loop() {
  // Handle serial commands
  if (Serial.available()) {
    String command = Serial.readStringUntil('\n');
    command.trim();
    processCommand(command);
  }
  
  // Update fading for all strips
  updateFading();
  
  delay(10); // Small delay for smooth fading
}

void processCommand(String command) {
  command.toLowerCase();
  
  if (command.startsWith("color ")) {
    handleColorCommand(command);
  } else if (command.startsWith("rgb ")) {
    handleRGBCommand(command);
  } else if (command.startsWith("fade ")) {
    handleFadeTimeCommand(command);
  } else if (command.startsWith("pixels ")) {
    handlePixelCountCommand(command);
  } else if (command.startsWith("all ")) {
    handleAllStripCommand(command);
  } else {
    Serial.println("Unknown command");
  }
}

void handleColorCommand(String command) {
  // Format: color strip colorname
  command.trim();
  int firstSpace = command.indexOf(' ');
  int secondSpace = command.indexOf(' ', firstSpace + 1);
  if (firstSpace == -1 || secondSpace == -1) {
    Serial.println("Invalid color command format");
    return;
  }
  
  int stripIndex = command.substring(firstSpace + 1, secondSpace).toInt();
  String colorName = command.substring(secondSpace + 1);
  colorName.trim();
  
  Serial.println("Debug: stripIndex=" + String(stripIndex) + ", colorName='" + colorName + "'");
  
  if (stripIndex < 0 || stripIndex >= numActiveStrips) {
    Serial.println("Invalid strip index");
    return;
  }
  
  uint32_t color = getColorByName(colorName);
  if (color != 0xFFFFFFFF) { // Valid color found
    setStripColor(stripIndex, color);
    Serial.println("Color set: Strip " + String(stripIndex) + " to " + colorName);
  } else {
    Serial.println("Unknown color: " + colorName);
  }
}

void handleRGBCommand(String command) {
  // Format: rgb strip r g b
  int spacePositions[5];
  int spaceCount = 0;
  
  // Find all space positions
  for (int i = 0; i < command.length() && spaceCount < 5; i++) {
    if (command.charAt(i) == ' ') {
      spacePositions[spaceCount] = i;
      spaceCount++;
    }
  }
  
  if (spaceCount >= 4) {
    int stripIndex = command.substring(spacePositions[0] + 1, spacePositions[1]).toInt();
    int r = constrain(command.substring(spacePositions[1] + 1, spacePositions[2]).toInt(), 0, 255);
    int g = constrain(command.substring(spacePositions[2] + 1, spacePositions[3]).toInt(), 0, 255);
    int b = constrain(command.substring(spacePositions[3] + 1).toInt(), 0, 255);
    
    if (stripIndex >= 0 && stripIndex < numActiveStrips) {
      uint32_t color = strips[stripIndex].strip->Color(r, g, b);
      setStripColor(stripIndex, color);
      Serial.println("RGB set: Strip " + String(stripIndex) + " to (" + String(r) + "," + String(g) + "," + String(b) + ")");
    } else {
      Serial.println("Invalid strip index");
    }
  } else {
    Serial.println("Invalid RGB command format");
  }
}

void handleFadeTimeCommand(String command) {
  // Format: fade strip time
  command.trim();
  int firstSpace = command.indexOf(' ');
  int secondSpace = command.indexOf(' ', firstSpace + 1);
  if (firstSpace == -1 || secondSpace == -1) {
    Serial.println("Invalid fade command format");
    return;
  }
  
  int stripIndex = command.substring(firstSpace + 1, secondSpace).toInt();
  String fadeTimeStr = command.substring(secondSpace + 1);
  fadeTimeStr.trim();
  int fadeTime = fadeTimeStr.toInt();
  
  Serial.println("Debug: stripIndex=" + String(stripIndex) + ", fadeTime=" + String(fadeTime));
  
  if (stripIndex >= 0 && stripIndex < numActiveStrips && fadeTime > 0) {
    strips[stripIndex].fadeTime = fadeTime;
    Serial.println("Fade time set: Strip " + String(stripIndex) + " to " + String(fadeTime) + "ms");
  } else {
    Serial.println("Invalid fade command - stripIndex:" + String(stripIndex) + " fadeTime:" + String(fadeTime));
  }
}

void handlePixelCountCommand(String command) {
  // Format: pixels strip count
  command.trim();
  int firstSpace = command.indexOf(' ');
  int secondSpace = command.indexOf(' ', firstSpace + 1);
  if (firstSpace == -1 || secondSpace == -1) {
    Serial.println("Invalid pixels command format");
    return;
  }
  
  int stripIndex = command.substring(firstSpace + 1, secondSpace).toInt();
  String pixelCountStr = command.substring(secondSpace + 1);
  pixelCountStr.trim();
  int pixelCount = pixelCountStr.toInt();
  
  Serial.println("Debug: stripIndex=" + String(stripIndex) + ", pixelCount=" + String(pixelCount));
  
  if (stripIndex >= 0 && stripIndex < numActiveStrips && pixelCount > 0 && pixelCount <= MAX_PIXELS_PER_STRIP) {
    strips[stripIndex].numPixels = pixelCount;
    // Reinitialize the strip with new pixel count
    delete strips[stripIndex].strip;
    strips[stripIndex].strip = new Adafruit_NeoPixel(pixelCount, strips[stripIndex].pin, NEO_GRB + NEO_KHZ800);
    strips[stripIndex].strip->begin();
    strips[stripIndex].strip->show();
    Serial.println("Pixel count set: Strip " + String(stripIndex) + " to " + String(pixelCount));
  } else {
    Serial.println("Invalid pixel count command - stripIndex:" + String(stripIndex) + " pixelCount:" + String(pixelCount));
  }
}

void handleAllStripCommand(String command) {
  // Format: all colorname
  command.trim();
  String colorName = command.substring(4);
  colorName.trim();
  
  uint32_t color = getColorByName(colorName);
  
  if (color != 0xFFFFFFFF) {
    for (int i = 0; i < numActiveStrips; i++) {
      setStripColor(i, color);
    }
    Serial.println("All strips set to " + colorName);
  } else {
    Serial.println("Unknown color: " + colorName);
  }
}

uint32_t getColorByName(String colorName) {
  int numColors = sizeof(predefinedColors) / sizeof(ColorEntry);
  
  for (int i = 0; i < numColors; i++) {
    if (colorName.equals(predefinedColors[i].name)) {
      return strips[0].strip->Color(predefinedColors[i].r, predefinedColors[i].g, predefinedColors[i].b);
    }
  }
  return 0xFFFFFFFF; // Invalid color marker
}

void setStripColor(int stripIndex, uint32_t color) {
  if (stripIndex < 0 || stripIndex >= numActiveStrips) return;
  
  strips[stripIndex].targetColor = color;
  strips[stripIndex].fadeStartTime = millis();
  strips[stripIndex].fading = true;
}

void updateFading() {
  for (int stripIndex = 0; stripIndex < numActiveStrips; stripIndex++) {
    if (!strips[stripIndex].fading) continue;
    
    unsigned long elapsed = millis() - strips[stripIndex].fadeStartTime;
    
    if (elapsed >= strips[stripIndex].fadeTime) {
      // Fade complete
      strips[stripIndex].currentColor = strips[stripIndex].targetColor;
      strips[stripIndex].fading = false;
      setStripToColor(stripIndex, strips[stripIndex].currentColor);
    } else {
      // Calculate interpolated color
      float progress = (float)elapsed / strips[stripIndex].fadeTime;
      uint32_t interpolatedColor = interpolateColor(strips[stripIndex].currentColor, strips[stripIndex].targetColor, progress);
      setStripToColor(stripIndex, interpolatedColor);
    }
  }
}

uint32_t interpolateColor(uint32_t color1, uint32_t color2, float progress) {
  uint8_t r1 = (color1 >> 16) & 0xFF;
  uint8_t g1 = (color1 >> 8) & 0xFF;
  uint8_t b1 = color1 & 0xFF;
  
  uint8_t r2 = (color2 >> 16) & 0xFF;
  uint8_t g2 = (color2 >> 8) & 0xFF;
  uint8_t b2 = color2 & 0xFF;
  
  uint8_t r = r1 + (r2 - r1) * progress;
  uint8_t g = g1 + (g2 - g1) * progress;
  uint8_t b = b1 + (b2 - b1) * progress;
  
  return strips[0].strip->Color(r, g, b);
}

void setStripToColor(int stripIndex, uint32_t color) {
  for (int i = 0; i < strips[stripIndex].numPixels; i++) {
    strips[stripIndex].strip->setPixelColor(i, color);
  }
  strips[stripIndex].strip->show();
}