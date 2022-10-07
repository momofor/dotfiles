use cli::get_arguments;
use std::error::Error;
mod cli;

fn main() -> Result<(), Box<dyn Error>> {
    get_arguments(3)?;
    Ok(())
}
