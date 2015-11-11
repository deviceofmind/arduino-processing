# arduino-processing
Sketches for making Arduino and Processing to talk to eachother over the serial port.  

The "portAvailability" sketch simply lists in the Processing terminal which ports are being used.  In my case it was always the third port, port 2 because the list begins at 0.

The second sketch - "serialSensoReflection" is a riff on Simon Greenwold's "Reflection" example in the Processing "Examples" menu:

https://processing.org/examples/reflection.html

The Processing sketches (PDE) require installing the Processing Serial Library for the processing sketches:

https://processing.org/reference/libraries/serial/

There are two Arduino sketches here, one that uses a basic analog read that sends potentiometer sensor data to Processing, similar to this example code on the Arduino site:

https://www.arduino.cc/en/Tutorial/Potentiometer

The potentiometer is connected to analog pin 0.

The second Arduino sketch uses a cheap Radio Shack ultrasonic "ping" sensor to do same.  The ultrasonic sensor is connected to digital out pin 2.


