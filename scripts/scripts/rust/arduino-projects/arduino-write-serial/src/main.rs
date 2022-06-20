use eframe::egui;
use serialport::SerialPort;
use std;
use std::io::Write;
use std::time::Duration;

struct MyApp {
    portu: Box<dyn SerialPort>,
}

impl MyApp {
    fn new(porta: Box<dyn SerialPort>) -> Self {
        Self { portu: porta }
    }
}

fn turn_on_or_off(status: u8, port: &mut Box<dyn SerialPort>) {
    let output: [u8; 1];
    output = [status];

    port.write(&output).expect("Write failed!");
}

impl eframe::App for MyApp {
    fn update(&mut self, ctx: &egui::Context, _frame: &mut eframe::Frame) {
        egui::CentralPanel::default().show(ctx, |ui| {
            if ui.button("turn num1: on").clicked() {
                turn_on_or_off(1, &mut self.portu);
            }
            if ui.button("turn num1: off").clicked() {
                turn_on_or_off(0, &mut self.portu);
            }
            if ui.button("turn num2: on").clicked() {
                turn_on_or_off(21, &mut self.portu);
            }
            if ui.button("turn num2: off").clicked() {
                turn_on_or_off(20, &mut self.portu);
            }
        });
    }
}

fn main() {
    let port = serialport::new("/dev/ttyACM0", 57600)
        .timeout(Duration::from_millis(0))
        .open()
        .expect("Failed to open port");
    let options = eframe::NativeOptions::default();
    eframe::run_native(
        "My app",
        options,
        Box::new(|_cc| Box::new(MyApp::new(port))),
    );
}
