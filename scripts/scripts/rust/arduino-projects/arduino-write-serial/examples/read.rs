use std;
use std::io::{self, Write};
use std::time::Duration;
fn main() {
    let mut port = serialport::new("/dev/ttyACM0", 57600)
        .timeout(Duration::from_millis(10))
        .open()
        .expect("Failed to open port");
    let mut serial_buf: Vec<u8> = vec![0; 32];
    port.read(serial_buf.as_mut_slice())
        .expect("Found no data!");
    println!("{:?}", String::from_utf8_lossy(&serial_buf));
}
