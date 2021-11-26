fn main() {
    let mut input = String::new();
    println!("please enter a number: ");
    std::io::stdin().read_line(&mut input).unwrap();
    let number = input.trim().parse::<u32>();

    match number {
        Ok(number) => {
            for diviseur in 1..number {
                if number % diviseur == 0 {
                    println!("{}", diviseur);
                }
            }
        },
        Err(error) => {
            println!("ERRORR HAS OCCURED: {:?}", error);
            println!("That Problably isn't a number");
        }
    }
}
