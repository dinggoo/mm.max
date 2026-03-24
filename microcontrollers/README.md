# Microcontrollers

Arduino and ESP32 integration modules for Max/MSP. Upload the `.ino` sketch to your board, then open the companion `.maxpat` in Max.

## Projects

### mm.arduino
Core Arduino-Max modules — serial I/O, pin configuration (digital/analog/servo), auto COM port selection, sensor support.
- **cmd/Arduino_Max_Module_V2025** — Latest all-in-one Arduino-Max module
- **cmd/CMDArduinoOSCModule_v2025** — Arduino control over OSC/WiFi
- **mm.serialReadout** — Serial data monitoring
- **mm.digitalWrite_analogRead** — Digital write + analog read
- **mm.Digital_Pin_Switch** — Single pin switch control
- **mm.Digital-Analog_In** — Simultaneous digital & analog input
- **mm.arduinoIO** — General I/O
- **mm.arduinoConstReadWrite** — Continuous read/write
- **analogRead_sensorArray** — Read 6 analog pins at 100Hz

### mm.arduino-osc
WiFi-based OSC communication with Arduino. Configure WiFi credentials in the `.ino` sketch, control pins via OSC messages from Max.

### mm.esp32_OSC
ESP32 microcontroller with WiFi OSC. Supports 26 digital pins, 6 analog ADC pins, 2 servo pins. Configure WiFi in the sketch.

## Requirements
- Arduino IDE (to upload sketches)
- Arduino board (UNO, Mega, etc.) or ESP32
- Max/MSP 8+
- For OSC variants: WiFi network
