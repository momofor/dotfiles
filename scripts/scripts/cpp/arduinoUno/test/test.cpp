#include "/home/momofor/Downloads/arduino-1.8.13/hardware/arduino/avr/cores/arduino/Arduino.h"

int currentPort = 13;
void setup() {
    pinMode(currentPort , OUTPUT);
}
void loop(){
    digitalWrite(currentPort, HIGH);
    delay(500);
    digitalWrite(currentPort, LOW);
    delay(500);
}
