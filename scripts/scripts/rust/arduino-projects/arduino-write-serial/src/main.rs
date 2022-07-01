use std::time::Duration;
mod gui;
mod serial_communication;

use crate::gui::gui::MyApp;

// fn tokio_run_code(tx: Sender<String>) {
//     tokio::runtime::Builder::new_multi_thread()
//         .enable_all()
//         .build()
//         .unwrap()
//         .block_on(async {
//             let tx = tx.clone();
//             test().await;
//             tx.send("Hello world".to_string()).unwrap();
//             println!("WTF");
//         });
// }

fn main() {
    // channel::<(u8, Box<dyn tokio_serial::SerialPort>)>()
    let (tx, rx) = std::sync::mpsc::channel::<u8>();
    let tx = tx.clone();
    // tokio_run_code(tx);

    let port = tokio_serial::new("/dev/ttyACM0", 57600)
        .timeout(Duration::from_millis(0))
        .open()
        .expect("Couldn't open port");

    let options = eframe::NativeOptions::default();
    // let data = rx.recv().unwrap();

    eframe::run_native(
        "My app",
        options,
        Box::new(|_cc| Box::new(MyApp::new(port, tx, rx))),
    );
}
