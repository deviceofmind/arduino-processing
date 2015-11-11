/**
 * based on example "Reflection" 
 * by Simon Greenwold. 
 * 
 * Vary the specular reflection component of a material
 * with an ultrasonic "distance" sensor attached to an Arduino
 */

import processing.serial.*; // library for serial connections in Processing

Serial serialPort; // setting up your serial port

int senseData; 
float output;


void setup() {
  size(640, 360, P3D);
  noStroke();
  colorMode(RGB, 1);
  fill(0.4);
  frameRate(10);
  noCursor();
  
  String[] serialPorts = Serial.list (); // list the available serial ports.
  println ("Serial ports:"); // prints available serial ports in terminal
  
  for (int i = 0; i < serialPorts.length; i++) {
    println(i + " " + serialPorts[i]);
  }
  int serialPortIndex = 2; // variable for changing serial port interactively
  int serialPortBaudRate = 115200; // variable for changing baud rate interactively
  serialPort = new Serial (this, Serial.list()[serialPortIndex], serialPortBaudRate);
  serialPort.bufferUntil ('\n'); // Read bytes into a buffer until you get a newline character.
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  // Set the specular color of lights that follow
  lightSpecular(1, 1, 1);
  directionalLight(0.8, 0.8, 0.8, 0, 0, -1);
  float s = output / float(width);
  specular(s, s, s);
  sphere(120);
}

void serialEvent (Serial myPort) {

  String serialData = myPort.readStringUntil ('\n'); // Read the serial buffer.

  if (serialData != null) {

    serialData = trim (serialData);
    senseData = int (serialData);
 
    output = map(senseData, 0, 150, 0, 300);
    println (output); // Print the data to the console.
  }
}