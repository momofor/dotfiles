pub fn get_arguments(arg_number: usize) -> Result<Vec<String>, &'static str> {
    let arguments: Vec<String> = std::env::args().collect();
    let arg_len = arguments.len().to_owned();

    todo!()
}

