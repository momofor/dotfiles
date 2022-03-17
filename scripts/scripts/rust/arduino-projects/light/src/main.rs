#![no_std]
#![no_main]

use arduino_hal::adc;
use arduino_hal::{delay_ms, prelude::*};
use panic_halt as _;

#[arduino_hal::entry]
fn main() -> ! {
    let v2 = 0;
    let dp = arduino_hal::Peripherals::take().unwrap();
    let pins = arduino_hal::pins!(dp);
    let mut serial = arduino_hal::default_serial!(dp, pins, 57600);
    let mut adc = arduino_hal::Adc::new(dp.ADC, Default::default());

    let (vbg, gnd, tmp) = (
        adc.read_blocking(&adc::channel::Vbg),
        adc.read_blocking(&adc::channel::Gnd),
        adc.read_blocking(&adc::channel::Temperature),
    );
    ufmt::uwriteln!(&mut serial, "Vbandgap: {}", vbg).void_unwrap();
    ufmt::uwriteln!(&mut serial, "Ground: {}", gnd).void_unwrap();
    ufmt::uwriteln!(&mut serial, "Temperature: {}", tmp).void_unwrap();

    let mut pin = pins.a3.into_analog_input(&mut adc);
    let mut led = pins.d11.into_output();

    loop {
        let mut value = pin.analog_read(&mut adc);
        // ufmt::uwriteln!(&mut serial, "{}", value);
        if value > 100 {
            ufmt::uwriteln!(&mut serial, "the light is on");
            led.set_low();
        } else {
            ufmt::uwriteln!(&mut serial, "the light is off");
            led.set_high();
        }
        delay_ms(100);
    }
}
