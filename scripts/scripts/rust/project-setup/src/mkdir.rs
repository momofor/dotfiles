pub mod mkdir {
    use std::{fs, path::PathBuf};
    pub fn makedir(dir_pathu: String, cur_dir: PathBuf) -> anyhow::Result<(), std::io::Error> {
        println!(
            "creating directory {} in {}",
            &dir_pathu,
            &cur_dir.to_string_lossy()
        );

        match fs::create_dir(&dir_pathu) {
            Ok(_) => {
                println!(
                    "created directory {}/{}",
                    &cur_dir.to_string_lossy(),
                    &dir_pathu
                );
                Ok(())
            }
            Err(err) => {
                println!(
                    "failed to build directory {} with error {}",
                    &dir_pathu,
                    err.to_string()
                );
                Err(err)
            }
        }
    }
}

