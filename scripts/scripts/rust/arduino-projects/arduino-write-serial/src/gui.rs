pub mod gui {
    use crate::serial_communication::serial_communiaction::turn_on_or_off;
    use eframe::egui;
    use std::sync::mpsc::{Receiver, Sender};
    use tokio_serial::SerialPort;
    pub struct MyApp {
        portu: Box<dyn SerialPort>,
        tecx: Sender<u8>,
        recx: Receiver<u8>,
    }

    impl MyApp {
        pub fn new(porta: Box<dyn SerialPort>, tex: Sender<u8>, rex: Receiver<u8>) -> Self {
            Self {
                portu: porta,
                tecx: tex,
                recx: rex,
            }
        }
    }

    impl eframe::App for MyApp {
        fn update(&mut self, ctx: &egui::Context, _frame: &mut eframe::Frame) {
            egui::CentralPanel::default().show(ctx, |ui| {
                if ui.button("turn num1: on").clicked() {
                    turn_on_or_off(&mut self.portu, &mut self.recx);
                    self.tecx.clone().send(1).unwrap();
                }
                if ui.button("turn num1: off").clicked() {
                    // turn_on_or_off(0, &mut self.portu);
                    turn_on_or_off(&mut self.portu, &mut self.recx);
                    self.tecx.clone().send(0).unwrap();
                }
                if ui.button("turn num2: on").clicked() {
                    turn_on_or_off(&mut self.portu, &mut self.recx);
                    self.tecx.clone().send(21).unwrap();

                    // turn_on_or_off(21, &mut self.portu);
                }
                if ui.button("turn num2: off").clicked() {
                    turn_on_or_off(&mut self.portu, &mut self.recx);
                    self.tecx.clone().send(20).unwrap();
                    // turn_on_or_off(20, &mut self.portu);
                }
            });
        }
    }
}
