use serialport::SerialPort;

static PORT: SerialPort = serialport::new("/dev/tty", 57600).open().unwrap();

pub mod serial_communiaction {
    use std::sync::mpsc::Receiver;
    use tokio_serial::SerialPort;
    pub fn turn_on_or_off(reex: &mut Receiver<u8>) {
        // let output: [u8; 1];
        // output = [status];

        tokio::runtime::Builder::new_multi_thread()
            .enable_all()
            .build()
            .unwrap()
            .block_on(async {
                let output = reex.recv().unwrap();
                PORT.write(&[output]).unwrap();
            });

        // port.write(&output).expect("Write failed!");
        // port.write(&output).unwrap();
    }
}
