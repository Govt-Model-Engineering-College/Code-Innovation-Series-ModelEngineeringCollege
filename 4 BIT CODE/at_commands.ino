
// Connect the HC-05 module and communicate using the serial monitor
//
// The HC-05 defaults to commincation mode when first powered on.
// Needs to be placed in to AT mode
// After a factory reset the default baud rate for communication mode is 38400

char c = ' ';

void setup() {
  // start the serial communication with the host computer
  Serial.begin(9600);
  Serial.println("Arduino with HC-05 is ready");

  // start communication with the HC-05 using 38400
  Serial1.begin(38400);
  Serial.println("Serial1 started at 38400");
}

void loop() {
  // Keep reading from HC-05 and send to Arduino Serial Monitor
  if (Serial1.available())
  {
    c = Serial1.read();
    Serial.write(c);
  }

  // Keep reading from Arduino Serial Monitor and send to HC-05
  if (Serial.available())
  {
    c =  Serial.read();

    // mirror the commands back to the serial monitor
    // makes it easy to follow the commands
    Serial.write(c);
    Serial1.write(c);
  }
}
