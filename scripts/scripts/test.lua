#! /usr/bin/env luajit
local _h = require("_helpers")
local args = {...}
local choice = args[1] or _h.input(nil , "write your choice: ")

local function niceu()
        print("hello world")
    end
local cases = {
    hello = niceu ,
    nice = function ()
        print("nice person")
    end ,
}

_h.switch(choice , cases)
