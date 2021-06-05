#include <Arduino.h>

class Led {public: 
    int pin;
    boolean is_on = false;
    Led(int led_pin) {
            this->pin = led_pin;
        }

    void on() {
        digitalWrite(pin , HIGH);
        this->is_on = true;
    }

    void off() {
        digitalWrite(pin , LOW);
        this->is_on = false;
    }

    void switch_state(int delay_time) {
        if (this->is_on == true) {
            this->off();
        } else {
            this->on();
        }
        delay(delay_time);
    }
    void flash_wait(int delay_time) {
        this->switch_state(delay_time);
        this->switch_state(delay_time);
    }
};

void setup() {
    pinMode(13, OUTPUT);
}
Led noice(13);

void loop() {
    noice.flash_wait(2000);
}
