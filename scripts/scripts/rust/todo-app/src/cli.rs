use std::cmp;

pub fn get_arguments(arg_number: usize) -> Result<Vec<String>, String> {
    let arguments: Vec<String> = std::env::args().collect();
    let arg_len = arguments.len().to_owned();
    match arg_len.cmp(&arg_number) {
        cmp::Ordering::Greater => {
            return Err(format!(
                "TOO MANY ARGUMENTS expected {} arguments got {}",
                arg_number, arg_len
            ))
        }
        cmp::Ordering::Less => {
            return Err(format!(
                "NOT ENOUGH ARGUMENTS expected {} arguments got {}",
                arg_number, arg_len
            ))
        }
        cmp::Ordering::Equal => return Ok(arguments),
    }
}
