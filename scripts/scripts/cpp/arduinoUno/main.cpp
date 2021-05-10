#include <Arduino.h>

struct colors {
    int red = 10;
    int white = 11;
    int blue = 12;
}colors;

void setup()
{
    pinMode(colors.red, OUTPUT);
    pinMode(colors.white, OUTPUT);
    pinMode(colors.blue, OUTPUT);
}
void loop()
{
    digitalWrite(colors.red, HIGH);
    digitalWrite(colors.white, LOW);
    digitalWrite(colors.blue, LOW);
    delay(3000);
    digitalWrite(colors.red, LOW);
    digitalWrite(colors.white, HIGH);
    digitalWrite(colors.blue, LOW);
    delay(500);
    digitalWrite(colors.red, LOW);
    digitalWrite(colors.white, LOW);
    digitalWrite(colors.blue, HIGH);
    delay(3000);
}
