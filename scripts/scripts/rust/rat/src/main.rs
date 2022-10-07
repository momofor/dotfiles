use clap::Parser;

#[derive(Parser, Debug)]
#[clap(author, version, about, long_about = None)]
struct Args {
    #[clap(short, long)]
    pattern: String,
    /// get the file name
    #[clap(short, long, parse(from_os_str))]
    file_name: std::path::PathBuf,
}

fn main() {
    let args = Args::parse();
    println!("{:?}", args);
}
