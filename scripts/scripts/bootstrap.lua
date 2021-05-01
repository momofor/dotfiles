#! /usr/bin/env luajit
local _h = require("_helpers")

function install_app(app_name)
    _h.exec("sudo apt install " .. app_name)
end
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
local function is_app_installed()
    local not_installed = {}
    for _,app in pairs(apps) do
        local is_installed = _h.get_output("which " .. app)
        if is_installed == "" then
            local next_index = #not_installed + 1
            not_installed[next_index] = app
        end
    end
    if not_installed ~= nil then
        return not_installed
    else
        return nil
    end
end
if user_option == "C" then
    local not_found = is_app_installed()
    print("download with: ")
    io.write("sudo apt install ")
    for _, app in pairs(not_found) do
        io.write(string.format("%s " , app))
    end
end

