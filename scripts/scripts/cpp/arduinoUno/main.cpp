#include <Arduino.h>

struct colors {
    int red = 10;
    int white = 11;
    int blue = 12;
}colors;

class Led {public: 
    int pin;
    boolean is_on = false;

    Led(int led_pin) {
        (*this).pin = led_pin;
    }

    void on() {
        digitalWrite(pin , HIGH);
        (*this).is_on = true;
    }

    void off() {
        digitalWrite(pin , LOW);
        (*this).is_on = false;
    }

    void switch_state() {
        if ((*this).is_on == true) {
            this->off();
        } else {
            this->on();
        }
    }
};

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
