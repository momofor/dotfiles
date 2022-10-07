use std::sync::{Arc, Mutex};
use std::thread;
use std::time::Duration;

struct Port;
impl Port {
    pub fn read(&mut self, _v: &mut Vec<u8>) {
        println!("READING...");
    }
    pub fn write(&mut self, _v: &Vec<u8>) {
        println!("WRITING...");
    }
}

pub fn main() {
    let mut port = Arc::new(Mutex::new(Port));
    let p2 = port.clone();

    let handle = thread::spawn(move || {
        let mut buffer: Vec<u8> = Vec::new();
        for j in 0..100 {
            let _bytes_read = p2.lock().unwrap().read(&mut buffer);
            thread::sleep(Duration::from_millis(10));
        }
    });

    let request_temperature: Vec<u8> = vec![0xAA];
    for i in 0..10 {
        port.lock().unwrap().write(&request_temperature);
        thread::sleep(Duration::from_millis(100));
    }

    handle.join();
}
