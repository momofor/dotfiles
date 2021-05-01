#! /usr/bin/env luajit
local _h = require("_helpers")
local func = require("bootstrap_helpers")

print("Welcome to my bootstrapping script, What do you want to do ?")
print("(C)heck what you need")
local user_option = _h.input(nil , "command: ")
local apps = {
    "awesome" ,
    "fish" ,
    "stow" ,
    "git" ,
    "kitty" ,
    "rofi" ,
    "firefox" ,
    "cool" ,
    "foo" ,
    "bar"
}

if user_option == "C" then
    local not_found = func.is_app_installed(apps)
    io.write("missing apps: ")
    for _, app in pairs(not_found) do
        io.write(string.format("%s " , app))
    end
end

