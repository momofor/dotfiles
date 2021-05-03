#! /usr/bin/env luajit
-- made with by Mohammed Amine Chennoufi(momofor)
                                                        --▄▄▄▄                 
                                                      --▄█▀ ▀▀                 
                                                      --██▀                    
--▀████████▄█████▄   ▄██▀██▄▀████████▄█████▄   ▄██▀██▄ █████   ▄██▀██▄▀███▄███ 
  --██    ██    ██  ██▀   ▀██ ██    ██    ██  ██▀   ▀██ ██    ██▀   ▀██ ██▀ ▀▀ 
  --██    ██    ██  ██     ██ ██    ██    ██  ██     ██ ██    ██     ██ ██     
  --██    ██    ██  ██▄   ▄██ ██    ██    ██  ██▄   ▄██ ██    ██▄   ▄██ ██     
--▄████  ████  ████▄ ▀█████▀▄████  ████  ████▄ ▀█████▀▄████▄   ▀█████▀▄████▄   
                                                                             
                                                                             

local _ = require("_helpers")
local current_user = os.getenv("USER")
local args = {...}
if args[1] == nil then
    print("Welcome " .. current_user .. " to my install script what do you to do")
    print("(U)pdate , (U)date&(C)lean , (C)lean , (P)urge a program , (L)ist programs , (L)ook for (P)ackage")
    User_choice = _.input(nil , "command: ")
else
    User_choice = args[1]
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

local cases = {
    UC = function ()
        print("cleaning cache")
        update()
        clean()
    end  ,
    U = update ,
    P = function ()
        if args[2] then
            purge(args[2])
        else
            local app =_.input(nil , "name the app: ")
            purge(app)
        end
    end ,
    C = clean ,
    L = function()
        local output = _.get_output("sudo apt list --installed 2>/dev/null | wc -l")
        print(string.format("you have %d packages" , output))
    end ,
    LP = function ()
        if args[2] ~= nil then
            local package = args[2]
            local found = _.get_output("sudo apt list --installed | rg " .. package)
            _.format("found the following packages %s" , found)
        else
            local package = _.input(nil , "name it: ")
            local found = _.get_output("sudo apt list --installed | rg " .. package)
            _.format("found the following packages %s" , found)
        end
    end ,
    default = function() print("please enter a valid input") end ,

}
_.switch(User_choice , cases)
