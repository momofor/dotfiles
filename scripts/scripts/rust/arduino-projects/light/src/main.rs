/*!
 * Demonstration of writing to and reading from the serial console.
 */
#![no_std]
#![no_main]

use arduino_hal::prelude::*;
use core::str;
use panic_halt as _;

use embedded_hal::serial::Read;

#[arduino_hal::entry]
fn main() -> ! {
    let dp = arduino_hal::Peripherals::take().unwrap();
    let pins = arduino_hal::pins!(dp);
    let mut serial = arduino_hal::default_serial!(dp, pins, 57600);

    let mut led = pins.d13.into_output();
    let mut led2 = pins.d12.into_output();
    led.set_low();

    // ufmt::uwriteln!(&mut serial, "Hello from Arduino!\r").void_unwrap();

    loop {
        // Read a byte from the serial connection
        let b = nb::block!(serial.read()).void_unwrap();

        // Answer
        if b == 1 {
            led.set_high();
        } else if b == 0 {
            led.set_low();
        } else if b == 21 {
            led2.set_high();
        } else if b == 20 {
            led2.set_low();
        }

        if led.is_set_high() {
            ufmt::uwriteln!(&mut serial, "1").void_unwrap();
        } else {
            ufmt::uwriteln!(&mut serial, "0").void_unwrap();
        }
        // ufmt::uwriteln!(&mut serial, "Got {}!\r", str::from_utf8(&[b]).unwrap()).void_unwrap();
    }
}
