pub mod get_definitions {
    use regex::Regex;
    use std::{
        fs::{File, OpenOptions},
        io::{Read, Write},
        vec,
    };

    use serde::{Deserialize, Serialize};
    #[derive(Debug, Serialize, Deserialize, Clone)]
    pub struct SwayCommand {
        title: String,
        description: String,
        arguments: Vec<String>,
    }

    impl SwayCommand {
        fn new() -> SwayCommand {
            SwayCommand {
                title: "".to_string(),
                description: String::new(),
                arguments: vec!["".to_string()],
            }
        }
    }
    pub fn get_definitions() -> Result<Vec<SwayCommand>, Box<dyn std::error::Error>> {
        let mut definitions_file = File::open("definitions.txt")?;
        let mut definitions_string = String::new();
        let mut structs: Vec<SwayCommand> = vec![SwayCommand::new()];

        let mut definitions_json_file = OpenOptions::new()
            .write(true)
            .create(true)
            .open("definitions.json")?;

        definitions_file.read_to_string(&mut definitions_string)?;
        let mut args: Vec<String> = vec![String::new()];
        let mut descriptions: Vec<String> = vec![String::new()];
        let mut new_cmd = SwayCommand::new();

        for line in definitions_string.lines() {
            let re = Regex::new(r"^\t.*").unwrap();
            if re.is_match(&line) {
                println!("description: {}", &line);
                if descriptions.len() != 0 {
                    descriptions.append(&mut vec![line.to_string().replace("\t", "")]);
                } else {
                    descriptions = vec![line.to_string().replace("\t", "")];
                }
            } else {
                for title in Regex::new(r"^\w+").unwrap().find_iter(&line).into_iter() {
                    println!("title: {}", title.as_str());
                    new_cmd.title = title.as_str().to_string();
                }

                for arg in Regex::new(r"<(\w+)>")
                    .unwrap()
                    .captures_iter(&line)
                    .into_iter()
                {
                    println!("argument: {}", &arg[1]);
                    args.append(&mut vec![arg[1].to_string()]);
                }
                for arg in Regex::new(r"\|(\w+)\|")
                    .unwrap()
                    .captures_iter(&line)
                    .into_iter()
                {
                    println!("argument: {}", &arg[1]);
                    args.append(&mut vec![arg[1].to_string()]);
                }
                for arg in Regex::new(r"\|(\w+)$")
                    .unwrap()
                    .captures_iter(&line)
                    .into_iter()
                {
                    println!("argument: {}", &arg[1]);
                    args.append(&mut vec![arg[1].to_string()]);
                }
                for arg in Regex::new(r" (\w+)\|")
                    .unwrap()
                    .captures_iter(&line)
                    .into_iter()
                {
                    println!("argument: {}", &arg[1]);
                    args.append(&mut vec![arg[1].to_string()]);
                }
            }
            if args.len() != 1 {
                if args.iter().position(|x| *x == "".to_string()) != None {
                    args.remove(args.iter().position(|x| *x == "".to_string()).unwrap());
                };
                new_cmd.arguments.append(&mut args);
            }

            if line == "".to_string() {
                new_cmd.description = descriptions.join(" ");
                println!("new description");
                new_cmd.arguments.remove(0);
                println!("{:?}", new_cmd);

                let mut woohoo = new_cmd.clone();
                if woohoo.title != "".to_string() {
                    structs.push(woohoo);
                } else {
                }
                woohoo = SwayCommand::new();

                args = vec![String::new()];
                new_cmd.arguments = vec![String::new()];
                descriptions = vec![String::new()];
                new_cmd.description = String::new();
            }
        }

        let value = serde_json::to_string(&structs)?;
        println!("serde: {}", &value);
        definitions_json_file.write(&value.as_bytes())?;
        Ok(structs)
    }
}
