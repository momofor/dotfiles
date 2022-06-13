use std;
use std::io::{self, Write};
use std::time::Duration;
fn main() {
    let mut port = serialport::new("/dev/ttyACM0", 57600)
        .timeout(Duration::from_millis(10))
        .open()
        .expect("Failed to open port");
    let output = "This is a test. This is only a test.".as_bytes();
    loop {
        port.write(output).expect("Write failed!");
    }
}
