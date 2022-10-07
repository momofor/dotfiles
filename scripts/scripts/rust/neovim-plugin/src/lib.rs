use mlua::prelude::{Lua, LuaAsyncThread, LuaResult, LuaTable};

async testuu fn() {
    println!("Hello wold");
}

#[tokio::main]
async  fn main() {
    testuu.await;
}
