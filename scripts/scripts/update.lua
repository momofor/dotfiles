#! /usr/bin/env luajit

local _ = require("_helpers")
local current_user = os.getenv("USER")
print("Welcome " .. current_user .. " to my install script what do you to do")
print("(U)pdate , (U)date&(C)lean , (C)lean , (P)urge a program , (L)ist programs")
local user_choice = _.input()
print("okay " .. current_user .. " I'm going to " .. user_choice)

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
    io.write("name the program: ")
    local app = _.input()
    _.exec("sudo apt purge " .. app)
    print("Cleaning cache\n\n")
    _.exec("sudo apt autoremove")
    _.exec("sudo apt autoclean")
end

if user_choice == "UC" then
    print("UC")
    print("cleaninig cache")
    update()
    clean()
    elseif user_choice == "U" then
        print("U")
        update()
    elseif user_choice == "P" then
        print("P")
        purge()
    elseif user_choice == "C" then
        print("C")
        clean()
    elseif user_choice == "L" then
        local output = _.get_output("sudo apt list --installed 2>/dev/null | wc -l")
        print(string.format("you have %d packages" , output))
end
