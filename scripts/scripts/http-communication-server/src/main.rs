fn main() {
    hello();
    println!("{}", noice());
}

fn hello() {
    println!("It's working");
}

fn noice() -> String{
    return "Hello".to_string();
}
