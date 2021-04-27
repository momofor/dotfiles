#! /usr/bin/env luajit

local _ = require("_helpers")
local current_user = os.getenv("USER")
print("Welcome " .. current_user .. " to my install script what do you to do")
print("(U)pdate , (U)date&(C)lean , (C)lean , (P)urge a program , (L)ist programs , (L)ook for (P)ackage")
local user_choice = _.input(nil , "command: ")

local function update()
    print("updating all software \n\n")
    _.exec("sudo apt update")
    _.exec("sudo apt upgrade")
end
local function clean()
    print("Cleaning cache\n\n")
    _.exec("sudo apt autoremove")
    _.exec("sudo apt autoclean")
end

local function purge()
    local app = _.input(nil , "name the program")
    _.exec("sudo apt purge " .. app)
    print("Cleaning cache\n\n")
    _.exec("sudo apt autoremove")
    _.exec("sudo apt autoclean")
end

if user_choice == "UC" then
    print("cleaninig cache")
    update()
    clean()

    elseif user_choice == "U" then
        update()

    elseif user_choice == "P" then
        purge()

    elseif user_choice == "C" then
        clean()

    elseif user_choice == "L" then
        local output = _.get_output("sudo apt list --installed 2>/dev/null | wc -l")
        print(string.format("you have %d packages" , output))
    elseif user_choice == "LP" then
        --io.write("name the package:")
        local package = _.input(nil , "name it: ")
        local found = _.get_output("sudo apt list --installed | rg " .. package)
        print(string.format("found the following packages %s" , found))

end
