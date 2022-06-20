use tokio::sync::{mpsc, oneshot};

struct testuChan {
    sendu: &'static str,
    recieveu: Responder<()>,
}

type Responder<T> = oneshot::Sender<Result<T, Box<dyn std::error::Error>>>;

#[tokio::main]
async fn main() {
    let (tx, mut rx) = mpsc::channel(32);

    let tx2 = tx.clone();
    let tx3 = tx.clone();

    tokio::spawn(async move {
        let (tux, mut rux) = oneshot::channel();
        let noice = testuChan {
            sendu: "First handle",
            recieveu: tux,
        };

        tx.send("Sending from first handle").await.unwrap();
    });

    tokio::spawn(async move {
        let (tux, mut rux) = oneshot::channel();
        tx2.send("Sending from second handle").await.unwrap();
        tux.send("Finished Second handle").unwrap();
    });

    tokio::spawn(async move {
        let (tux, mut rux) = oneshot::channel();
        tx3.send("Sending from third handle").await.unwrap();
        tux.send("Finished Third handle").unwrap();
    });

    while let Some(message) = rx.recv().await {
        println!("GOT = {}", message);
    }
}
