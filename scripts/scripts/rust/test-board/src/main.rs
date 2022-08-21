use inputbot::KeybdKey::*;
use tokio::io::AsyncWriteExt;
use tokio_serial::{SerialPortBuilderExt, SerialStream};

async fn write_key(num: u8, port: &mut SerialStream) {
    port.write(&[num]).await.unwrap();
}

#[tokio::main]
async fn main() {
    let mut port = tokio_serial::new("/dev/ttyACM0", 57600)
        .open_native_async()
        .unwrap();
    WKey.bind(|| {
        tokio::runtime::Builder::new_multi_thread()
            .enable_all()
            .build()
            .unwrap()
            .block_on(async {
                write_key(10, &mut port);
            })
    });
    inputbot::handle_input_events();
}
