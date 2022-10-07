use anyhow::{Context, Error, Ok, Result};

#[tokio::main]
async fn main() -> Result<(), Error> {
    println!("Hello, world!");
    failable_process("woow").context("failed to run failable_process")?;
    Ok(())
}

fn failable_process(text: &'static str) -> Result<(), Error> {
    println!("{text}");
    Ok(())
}
