mod mkdir;
mod mkfile;
use mkdir::mkdir::makedir;
use mkfile::mkfile::make_file;

use concat_string::concat_string;
use std::env::{args, current_dir};

fn main() -> anyhow::Result<(), std::io::Error> {
    let args: Vec<String> = args().collect();
    let dir_name = &args[1];
    let dir_pathu = concat_string!(&dir_name);
    let cur_dir = current_dir().unwrap();

    makedir(dir_pathu, cur_dir)?;
    make_file();

    Ok(())
}
