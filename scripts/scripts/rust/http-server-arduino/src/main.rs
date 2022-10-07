use tokio::io::AsyncWriteExt;
use tokio_serial::SerialPortBuilderExt;
use tracing::{info, instrument, Level};
use tracing_subscriber::{
    filter::{FilterExt, LevelFilter},
    prelude::*,
};
use warp::Filter;
// sends a serial message to either turn the led on or off
async fn on_or_off(on: bool) {
    let mut portu = tokio_serial::new("/dev/ttyACM0", 57600)
        .open_native_async()
        .unwrap();
    match on {
        true => portu.write(&[1]).await.unwrap(),
        false => portu.write(&[0]).await.unwrap(),
    };
}
// processes the get request to see if to turn the arduino led on or off
#[instrument]
async fn arduino(param: String) -> Result<impl warp::Reply, warp::Rejection> {
    // Oh My God What did I just create
    // * derefrences the String param and as String supports derefrencing into str
    // it return an str and then I refrence it again
    // match &*param {
    match param.as_str() {
        "on" => {
            info!("gonna turn arduino led on");
            println!("On");
            info!("Turned arduino led pin 13 on");
            on_or_off(true).await;
            Ok(warp::reply())
        }
        "off" => {
            info!("gonna turn arduino led off");
            println!("OFF");
            info!("Turned arduino led pin 13 off");
            on_or_off(false).await;
            Ok(warp::reply())
        }
        _ => {
            tracing::error!("param not found");
            Err(warp::reject::not_found())
        }
    }
}

#[tokio::main]
async fn main() {
    let span = tracing::span!(Level::INFO, "main");
    let _enter = span.enter();
    let stdout_log = tracing_subscriber::fmt::layer().pretty();
    tracing_subscriber::registry()
        .with(stdout_log.with_filter(LevelFilter::INFO))
        .init();
    info!("Doing stuff");
    let main = warp::get()
        .and(warp::path("main"))
        .and(warp::fs::file("./test.html"));

    info!("Starting operation");
    let arduino = warp::get()
        .and(warp::path("arduino"))
        .and(warp::path::param::<String>())
        .and(warp::path::end())
        .and_then(arduino);
    let routes = main.or(arduino);

    warp::serve(routes).run(([192, 168, 1, 9], 3030)).await;
}
