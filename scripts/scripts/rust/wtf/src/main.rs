use tokio::io::{self, AsyncReadExt};
use tokio::net::TcpListener;

#[tokio::main]
async fn main() -> io::Result<()> {
    let listener = TcpListener::bind("127.0.0.1:8080").await?;

    loop {
        let (mut socket, _) = listener.accept().await?;

        tokio::spawn(async move {
            let (mut rd, mut wr) = socket.split();

            if io::copy(&mut rd, &mut wr).await.is_err() {
                eprintln!("failed to copy");
            }
            // let mut noice = String::new();
            // let read = rd.read_to_string(&mut noice).await.unwrap();

            println!("GOT");
        });
    }
}
