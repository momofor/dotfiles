// use std::process::Command;

use swayipc::{Connection, Error, Event, EventType, Workspace};

fn main() -> Result<(), Error> {
    for event in Connection::new()?.subscribe(&[EventType::Binding])? {
        match event? {
            // Check if it's a window event
            /* Event::Window(window_event) => {
                // if window_event.change == WindowChange::Focus {
                    let mut con = Connection::new()?;
                    let window_name = con
                        .get_tree()?
                        .find_focused(|node| node.focused == true)
                        .expect("No focused node")
                        .name
                        .unwrap();
                    println!("{}", &window_name);
                    /* Command::new("sh")
                        .arg("-c")
                        .arg(format!("notify-send '{}' '{}'", &window_name, &window_name))
                        .output()
                        .expect("It ain't working boy"); */
                // };
            } */
            Event::Binding(_binding_event) => {
                let mode = Connection::new()?.get_binding_state().unwrap();
                match mode.as_str() {
                    "default" => {
                        println!(
                            "(widg :value '{}' :class 'mode default' :al 'baseline')",
                            mode
                        );
                    }
                    "resize" => {
                        println!(
                            "(widg :value '{}' :class 'mode resize' :al 'baseline')",
                            mode
                        );
                    }
                    "spawn" => {
                        println!(
                            "(widg :value '{}' :class 'mode spawn' :al 'baseline')",
                            mode
                        );
                    }
                    _ => (),
                }
            }
            /* Event::Workspace(_workspace_event) => {
                // if workspace_event.change == WorkspaceChange::Focus {
                let works = Connection::new()?.get_workspaces();
                let mut occupied_workspaces: Vec<Workspace> = Vec::new();

                for workspace in works.unwrap() {
                    occupied_workspaces.push(workspace);
                }

                let mut last = String::new();
                for occupied_workspace in occupied_workspaces {
                    if occupied_workspace.focused == true {
                        last = format!(
                            "{} (button :class \"focusedWorkspace\" \"{}\")",
                            last, occupied_workspace.name
                        );
                    } else {
                        last = format!(
                            "{} (button :class \"normalWorkspace\" :onclick \"swaymsg 'workspace {}'\" \"{}\" )",
                            last, occupied_workspace.name, occupied_workspace.name
                        );
                    }
                }
                println!("(box :class \"workspaces\" {})", last);
            } */
            // }
            _ => continue,
        }
    }
    Ok(())
}
