pub mod serial_communiaction {
    use tokio_serial::SerialPort;
    pub async fn turn_on_or_off(status: u8, port: &mut Box<dyn SerialPort>) {
        let output: [u8; 1];
        output = [status];

        // port.write(&output).expect("Write failed!");
        port.write(&output).unwrap();
    }
}
