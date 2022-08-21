use futures::{stream, Stream, StreamExt};
use reqwest::Client;
use tokio::time::Instant;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let now = Instant::now();
    let client = Client::new();
    let responses = client
        .get("https://www.imdb.com/search/title/?groups=top_100&sort=user_rating,desc&count=100")
        .send()
        .await?
        .text()
        .await?;

    let elapsed_time = now.elapsed();
    println!("got in {} ms", elapsed_time.as_millis());

    let document = scraper::Html::parse_document(&responses);
    let runtime_selector = scraper::Selector::parse("h3.lister-item-header>a").unwrap();
    let runtimes = document.select(&runtime_selector).map(|x| x.inner_html());

    runtimes
        .zip(1..101)
        .for_each(|(item, number)| println!("{},{}", number, item));

    let elapsed_time = now.elapsed();
    println!("finished in {} ms", elapsed_time.as_millis());

    Ok(())
}
