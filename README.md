# arduino-processing
Sketches to use to make an Arduino and Processing talk to eachother over the serial port.  the "portAvailability" sketch simply lists in the Processing terminal which ports are being used.  In my case it was always the third port, port 2 because the list begins at 0.

The second sketch - "serialSensoReflection" is a riff on Simon Greenwold's "Reflection" example in the Processing "Examples" menu:

https://processing.org/examples/reflection.html

The Processing sketches (PDE) require installing the Processing Serial Library for the processing sketches:

https://processing.org/reference/libraries/serial/
