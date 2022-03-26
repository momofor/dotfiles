#![no_std]
#![no_main]

use arduino_hal::adc;
use arduino_hal::{delay_ms, prelude::*};
// use embedded_hal::prelude::*;
use panic_halt as _;

#[arduino_hal::entry]
fn main() -> ! {
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
    let mut led = pins.d12.into_output();
    let mut led2 = pins.d10.into_output();
    let max = 10;

    let tc1 = dp.TC1;
    tc1.tccr1a
        .write(|w| w.wgm1().bits(0b01).com1a().match_clear());
    tc1.tccr1b
        .write(|w| w.wgm1().bits(0b01).cs1().prescale_64());
    pins.d9.into_output();

    loop {
        let value = pin.analog_read(&mut adc);
        ufmt::uwriteln!(&mut serial, "{}", value).void_unwrap();
        if value > 0 && value < max {
            ufmt::uwriteln!(&mut serial, "room light is on").void_unwrap();
            led.set_low();
            led2.set_high();
        } else if value > max {
            ufmt::uwriteln!(&mut serial, "strong light is on").void_unwrap();
            led.set_low();
            led2.set_high();
        } else {
            ufmt::uwriteln!(&mut serial, "light is off").void_unwrap();
            led.set_high();
            led2.set_low();
        }
        tc1.ocr1a.write(|w| unsafe { w.bits((value) as u16) });
        // let noiceu = serial.read().unwrap();
        // ufmt::uwriteln!(&mut serial, "{}", noiceu);
        delay_ms(100);
    }
}
