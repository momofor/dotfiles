#! /usr/bin/env luajit

local _ = require("_helpers")
local current_user = os.getenv("USER")
local args = {...}
if args[1] == nil then
    print("Welcome " .. current_user .. " to my install script what do you to do")
    print("(U)pdate , (U)date&(C)lean , (C)lean , (P)urge a program , (L)ist programs , (L)ook for (P)ackage")
    User_choice = _.input(nil , "command: ")
end

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

local function purge(app)
    _.exec("sudo apt purge " .. app)
    print("Cleaning cache\n\n")
    _.exec("sudo apt autoremove")
    _.exec("sudo apt autoclean")
end

if User_choice == "UC" or args[1] == "UC" then
    print("cleaninig cache")
    update()
    clean()

    elseif User_choice == "U" or args[1] == "U" then
        update()

    elseif User_choice == "P" or args[1] == "P" then
        if args[2] ~= nil then
            purge(args[2])
        else
            local app = _.input(nil ,"name the app: ")
            purge(app)
        end

    elseif User_choice == "C" or args[1] == "C" then
        clean()

    elseif User_choice == "L" or args[1] == "L" then
        local output = _.get_output("sudo apt list --installed 2>/dev/null | wc -l")
        print(string.format("you have %d packages" , output))

    elseif User_choice == "LP" or args[1] == "LP" then
        if args[2] ~= nil then
            local package = args[2]
            local found = _.get_output("sudo apt list --installed | rg " .. package)
            _.format("found the following packages %s" , found)
        else
            local package = _.input(nil , "name it: ")
            local found = _.get_output("sudo apt list --installed | rg " .. package)
            _.format("found the following packages %s" , found)
        end
    else
        print("please enter a valid value")
    end
