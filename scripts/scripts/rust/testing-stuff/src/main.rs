use std::os::unix::fs;

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    println!("hello world");
    fs::symlink("./src/test-file", "./test-symlink")?;
    Ok(())
}
