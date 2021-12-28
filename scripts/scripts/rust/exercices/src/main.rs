fn main() {
    let (mut n, mut m, mut k) = (0, 0, 0);
    let mut result = String::new();
    std::io::stdin()
        .read_line(&mut result)
        .expect("Please format your input");
    println!("{:?}", (n, m, k));
}
