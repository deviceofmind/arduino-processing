
import processing.serial.*;


Serial serialPort; // setting up your serial port

void setup() {
  
  printArray(Serial.list()); // List all the available serial ports:
  // Open the port you are using at the rate you want:
  serialPort = new Serial(this, Serial.list()[0], 9600);
}

void draw() {
  while (serialPort.available() > 0) {
    int senseData = serialPort.read();
    println(senseData);
  }
}