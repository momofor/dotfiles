#include <Arduino.h>

int led1 = 9;
int led2 = 10;
int led3 = 11;
int led4 = 12;

void setup() 
{
    pinMode(led1, OUTPUT);
    pinMode(led2, OUTPUT);
    pinMode(led3, OUTPUT);
    pinMode(led4, OUTPUT);
}

void blinkTwo(int firstLed , int secondLed , int time)
{
    digitalWrite(firstLed, HIGH);
    digitalWrite(secondLed, LOW);

    delay(time);

    digitalWrite(firstLed, LOW);
    digitalWrite(secondLed, HIGH);
    delay(300);
    digitalWrite(firstLed, LOW);
    digitalWrite(secondLed, LOW);
}

void loop()
{
    blinkTwo(led1, led2, 300);
    blinkTwo(led3, led4, 300);
}
