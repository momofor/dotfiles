use tokio::fs::read_to_string;
use tokio::io::AsyncReadExt;
use tokio::io::AsyncWriteExt;
use tokio::io::Result;
use tokio::net::TcpListener;
use tokio::net::TcpStream;

#[tokio::main]
async fn main() -> Result<()> {
    let addr = "127.0.0.1:8080";
    let listener = TcpListener::bind(&addr).await?;
    println!("listening on: {}", addr);
    neovide_sucks_ass(true);
    neovide_sucks_ass(false);
    loop {
        let (socket, _) = listener.accept().await?;

        tokio::spawn(async move {
            // Process each socket concurrently.
            connection_handler(socket).await.unwrap();
        });
    }
}

fn neovide_sucks_ass(agree: bool) {
    match agree {
        true => println!("I knew it, it sucks ass"),
        false => println!("You suck ass too it really sucks ass"),
    }
}

async fn connection_handler(mut socket: TcpStream) -> Result<()> {
    let mut buffer = [0; 1024];

    let contents_of_file = read_to_string("index.html").await?;
    let response = format!(
        "HTTP/1.1 200 OK\r\nContent-Length: {}\r\n\r\n{}",
        contents_of_file.len(),
        contents_of_file
    );
    let (mut reader, mut writer) = socket.split();

    writer.write(response.as_bytes()).await?;
    reader.read(&mut buffer).await?;

    socket.flush().await?;
    println!("{}", String::from_utf8_lossy(&buffer[..]));
    Ok(())
}
