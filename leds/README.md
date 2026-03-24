# LEDs

LED strip controllers for Max/MSP. Each project includes an Arduino sketch and a Max patch.

## Projects

### mm.led_dotstar
APA102 DotStar LED strips (SPI-based). Supports up to 4 strips, 100 pixels each, with color fading.
- **Library**: Adafruit_DotStar
- **Connection**: Data + Clock pins (SPI)

### mm.led_neopixel
WS2812B NeoPixel LED strips. Supports up to 4 strips, 100 pixels each, with color fading.
- **Library**: Adafruit_NeoPixel
- **Connection**: Single data pin per strip

### mm.led_servo
Combined NeoPixel LED strip + servo motor control. 2 strips (16 pixels each) + 1 servo.
- Includes a continuous rotation servo variant
- **Libraries**: Adafruit_NeoPixel, Servo

## Requirements
- Arduino IDE
- Arduino board
- Compatible LED strips (APA102 or WS2812B)
- Max/MSP 8+
