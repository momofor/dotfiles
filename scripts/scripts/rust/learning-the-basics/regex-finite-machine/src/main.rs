use std::io::{self, stdin, BufRead, Write};
#[derive(Debug)]
enum State {
    Locked,
    Unlocked,
}

enum Event {
    Push,
    Coin,
}

fn next_state(state: State, event: Event) -> State {
    match state {
        State::Locked => match event {
            Event::Push => State::Locked,
            Event::Coin => State::Unlocked,
        },
        State::Unlocked => match event {
            Event::Push => State::Locked,
            Event::Coin => State::Unlocked,
        },
    }
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut state = State::Locked;

    println!("State: {state:?}");
    print!("> ");
    io::stdout().flush()?;

    for line in stdin().lock().lines() {
        match line?.as_str() {
            "push" => state = next_state(state, Event::Push),
            "coin" => state = next_state(state, Event::Coin),
            "quit" => return Ok(()),
            uknown => eprint!("ERROR: unkown event {}", uknown),
        }
        println!("State: {state:?}");
        print!("> ");
        io::stdout().flush()?;
    }

    Ok(())
}
