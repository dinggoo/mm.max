/*
Digital Pin Switcher:  Writen by Mark Meeuwenoord 2023
*/

void setup()
{
  Serial.begin(9600);

  for (int i = 2; i <= 13; i++) { // 13 digital pins on Arduino UNO (we do not use pins 0 and 1)
    pinMode(i, OUTPUT);
  }
}

void loop()
{
  while (Serial.available() > 0) {
    int pinNo = Serial.parseInt();  // look for the next valid integer in serialstream: This is your pin number.
    int pinValue = Serial.parseInt(); // do it again: This is the pin state (high / low) 

  if (Serial.read() == '\n') {
      {
        digitalWrite (pinNo, pinValue);
        }
    }
  }
}
