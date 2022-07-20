use tokio::io::AsyncWriteExt;
use tokio_serial::SerialPortBuilderExt;
use warp::Filter;

async fn on_or_off(num: i32) {
    let mut portu = tokio_serial::new("/dev/ttyACM0", 57600)
        .open_native_async()
        .unwrap();
    if num == 1 {
        portu.write(&[1]).await.unwrap();
    } else if num == 0 {
        portu.write(&[0]).await.unwrap();
    }
}

async fn hello_world(param: String) -> Result<impl warp::Reply, warp::Rejection> {
    println!("yo, {}", param);
    if param == "on".to_string() {
        println!("On");
        on_or_off(1).await;
    } else if param == "off".to_string() {
        println!("OFF");
        on_or_off(0).await;
    }
    Ok(format!("Hello yo, {}", param))
}

#[tokio::main]
async fn main() {
    // let hello = warp::path!("hello" / String).map(|name| format!("Hello, {}!", name));
    let mainu = warp::get()
        .and(warp::path("main"))
        .and(warp::fs::file("./test.html"));

    let hello = warp::get()
        .and(warp::path("hello"))
        .and(warp::path::param::<String>())
        .and(warp::path::end())
        .and_then(hello_world);
    let routes = mainu.or(hello);

    warp::serve(routes).run(([127, 0, 0, 1], 3030)).await;
}
