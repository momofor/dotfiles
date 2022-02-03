#![allow(unused)]
use auth_utils::{login, models::Credentials};
use database::{connect_to_database, Status};
use std::{error::Error, io::stdin};

mod auth_utils;
mod database;

fn main() -> std::result::Result<(), Box<dyn Error>> {
    let mut woow = String::new();
    print!("input: ");
    stdin().read_line(&mut woow)?;
    println!("{woow}");
    Ok(())
}

pub fn authenticate(creds: Credentials) {
    if let Status::Connected = connect_to_database() {
        login(creds)
    }
}
