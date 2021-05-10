#include "test.hpp"

const int pin = 13;

void start() {
    pinMode(pin , OUTPUT);
}

void loop() {
    int delay_time = 500;
    digitalWrite(pin, HIGH);
    delay(delay_time);
    digitalWrite(pin, LOW);
    delay(delay_time);
}
