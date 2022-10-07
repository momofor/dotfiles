#[derive(Debug, PartialEq, Clone, Copy)]
enum Token {
    Add,
    Sub,
    Right,
    Left,
    Read,
    Write,
    BeginLoop,
    EndLoop,
}
use std::env;

use self::Token::*;

enum Argument {
    ShowCode,
    ShowTokens,
}

#[tokio::main]
async fn main() {
    let code = std::fs::read_to_string("src/code.bf").unwrap();
    let tokens = tokenize(code.as_str()).await;
    let generated_code = generate(&tokens).await;

    tokio::process::Command::new("gcc")
        .arg("-o3")
        .arg("finished_program.c")
        .arg("-o")
        .arg("output")
        .spawn()
        .expect("err");
    tokio::process::Command::new("sudo")
        .arg("./")
        .arg("output")
        .spawn()
        .expect("err 2");
}

async fn tokenize(input: &str) -> Vec<Token> {
    let mut tokens = Vec::<Token>::new();
    let mut chars = input.chars();
    while let Some(char) = chars.next() {
        match char {
            '+' => tokens.push(Add),
            '-' => tokens.push(Sub),
            '>' => tokens.push(Right),
            '<' => tokens.push(Left),
            ',' => tokens.push(Read),
            '.' => tokens.push(Write),
            '[' => tokens.push(BeginLoop),
            ']' => tokens.push(EndLoop),
            _ => {}
        }
    }
    tokens
}

async fn generate(tokens: &[Token]) -> String {
    let mut output = String::from(include_str!("preface.c"));
    tokens.into_iter().for_each(|&token| match token {
        Add => output.push_str("++*ptr;\n"),
        Sub => output.push_str("--*ptr;\n"),
        Right => output.push_str("++ptr;\n"),
        Left => output.push_str("--ptr;\n"),
        Read => output.push_str("*ptr=getchar ();\n"),
        Write => output.push_str("putchar(*ptr);\n"),
        BeginLoop => output.push_str("while (*ptr) {\n"),
        EndLoop => output.push_str("};\n"),
    });
    output.push_str("}\n");
    tokio::fs::write("finished_program.c", &output)
        .await
        .unwrap();
    return output;
}
