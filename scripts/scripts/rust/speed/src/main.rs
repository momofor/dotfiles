fn hello_world(num: u8, num2: u8) -> i32 {
    println!("Hello world from the future boys ");
    (num + num2) as i32
}
fn main() {
    println!("Hello, world!");
    println!("{}", hello_world(1, 2));
}
