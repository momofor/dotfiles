use futures::future::try_join_all;
use reqwest::Client;
use std::{error::Error, time::Instant};

#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
    let client = Client::builder().build()?;
    // Start timing.
    let now = Instant::now();
    // Get values.
    let mut gets = Vec::new();
    // Default to few requests to be nice to jsonplaceholder.
    for id in 1..=3 {
        let get = get_todo(&client, id);
        gets.push(get);
    }
    let results = try_join_all(gets).await?;
    // Report time and result.
    println!("Elapsed: {} seconds", now.elapsed().as_secs_f64());
    println!("Result: {:#?}", results.last().unwrap());
    Ok(())
}

// async fn get_todo(client: &Client, id: i32) -> Result<Value, Box<dyn Error>> {
async fn get_todo(client: &Client, id: i32) -> Result<(), Box<std::error::Error>> {
    let base = "https://jsonplaceholder.typicode.com/todos";
    
    let address = format!("{}/{}", base, id);
    let result = client.get(&address).send().await?;
    Ok(())
}
