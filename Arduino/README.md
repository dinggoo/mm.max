Basic info:
Instructions:

Version 2.1.0 updates
- auto select correct COM port on windows now works
- Writing to arduino now switchable to digital, analog or servo on pins 3, 5, 6, 9, 10)
- Now works with most analog sensors like Myoware Muscle Sensor, GSR sensor, MQ-2 gas Sensor)
- Minor interface adjustments

On the topside of the module you have data inlets to send data to Arduino
On the bottom there data outlets. Here we get data from the arduino

FIRST: Upload the Max_Arduino_Module.ino sketch to your arduino 

1. Press the 'ARDUINO ON / OFF' in module. If no connection is established the menu on the right will say "no arduino connected". A good connection will show you the serial port your arduino is connected to.
2. To readout analog and digtal pins press READOUT ON / OFF (don't use if you are only writing to arduino)
3. Now you can select individual pins 
4. You can switch the function of data inlets 3, 5, 6, 9 & 10 on the topside of the module to be digital, analog or servo mode (default = digital. (Note: you can connect multiple servo motors but HAVE to turn specfic pins OFF as input pins to write to them!
