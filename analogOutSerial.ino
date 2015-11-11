/*
  Analog output through the serial
  The circuit:
 * potentiometer connected to analog pin 0.
   Center pin of the potentiometer goes to the analog pin.
   side pins of the potentiometer go to +5V and ground
 */


int sensorValue = 0;        // value read from the pot

void setup() {
  Serial.begin(115200);// initialize serial communications at 115200 bps:
}

void loop() {
  sensorValue = analogRead(0); // read the analog in value:
  Serial.println(sensorValue);// print the results to the serial monitor:
  delay(2); // wait 2 milliseconds before the next loop
}
