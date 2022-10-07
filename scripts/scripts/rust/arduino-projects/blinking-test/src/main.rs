#![no_std]
#![no_main]
use arduino_hal::port::{mode::Output, Pin};
use panic_halt as _;
const DELAY_MS: u16 = 400;
#[arduino_hal::entry]
fn main() -> ! {
    let dp = arduino_hal::Peripherals::take().unwrap();
    let pins = arduino_hal::pins!(dp);

    /*
     * For examples (and inspiration), head to
     *
     *     https://github.com/Rahix/avr-hal/tree/next/examples
     *
     * NOTE: Not all examples were ported to all boards!  There is a good chance though, that code
     * for a different board can be adapted for yours.  The Arduino Uno currently has the most
     * examples available.
     */
    let mut led_1 = pins.d13.into_output();
    let mut led_2 = pins.d11.into_output();
    let mut led_3 = pins.d12.into_output();

    loop {
        led_1.toggle();
        arduino_hal::delay_ms(DELAY_MS);
    }
}
