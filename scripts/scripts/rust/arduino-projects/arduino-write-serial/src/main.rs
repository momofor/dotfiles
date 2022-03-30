use std;
use std::io::{self, Write};
use std::time::Duration;

fn main() {
    write_to_serial();
}

fn read_from_serial() {
    let port_name = "/dev/ttyACM0";
    let baud_rate = 57600;
    let port = serialport::new(port_name, baud_rate)
        .timeout(Duration::from_millis(10))
        .open();

    match port {
        Ok(mut port) => {
            let mut serial_buf: Vec<u8> = vec![0; 1000];
            println!("Receiving data on {} at {} baud:", &port_name, &baud_rate);
            loop {
                match port.read(serial_buf.as_mut_slice()) {
                    Ok(t) => io::stdout().write_all(&serial_buf[..t]).unwrap(),
                    Err(ref e) if e.kind() == io::ErrorKind::TimedOut => (),
                    Err(e) => eprintln!("{:?}", e),
                }
            }
        }
        Err(e) => {
            eprintln!("Failed to open \"{}\". Error: {}", port_name, e);
            ::std::process::exit(1);
        }
    }
}

fn write_to_serial() {
    let port_name = "/dev/ttyACM0";
    let baud_rate = 57600;
    let rate = 50;
    let string = "Hello World";

    let builder = serialport::new(port_name, baud_rate)
        .timeout(Duration::from_millis(10))
        .open();
    // println!("{:?}", &builder);
    let mut port = builder.unwrap_or_else(|e| {
        eprintln!("Failed to open \"{}\". Error: {}", port_name, e);
        ::std::process::exit(1);
    });

    println!(
        "Writing '{}' to {} at {} baud at {}Hz",
        &string, &port_name, &baud_rate, &rate
    );
    loop {
        match port.write(&string.as_bytes()) {
            Ok(_) => {
                print!("{}", &string);
                std::io::stdout().flush().unwrap();
            }
            Err(ref e) if e.kind() == io::ErrorKind::TimedOut => (),
            Err(e) => eprintln!("{:?}", e),
        }
        if rate == 0 {
            return;
        }
        std::thread::sleep(Duration::from_millis((1000.0 / (rate as f32)) as u64));
    }
}
