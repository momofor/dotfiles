pub mod gui {
    use crate::serial_communication::serial_communiaction::turn_on_or_off;
    use eframe::egui;
    use tokio_serial::SerialPort;
    pub struct MyApp {
        portu: Box<dyn SerialPort>,
    }

    impl MyApp {
        pub fn new(porta: Box<dyn SerialPort>) -> Self {
            Self { portu: porta }
        }
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
}
