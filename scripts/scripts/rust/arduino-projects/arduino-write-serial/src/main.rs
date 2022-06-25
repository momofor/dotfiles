use std;
use std::time::Duration;

mod gui;
mod serial_communication;

use crate::gui::gui::MyApp;

#[tokio::main]
async fn main() {
    let port = tokio_serial::new("/dev/ttyACM0", 57600)
        .timeout(Duration::from_millis(0))
        .open()
        .expect("Couldn't open port");

    let options = eframe::NativeOptions::default();

    eframe::run_native(
        "My app",
        options,
        Box::new(|_cc| Box::new(MyApp::new(port))),
    );
}
