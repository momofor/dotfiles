#!/usr/bin/env luajit

local _ = require("_helpers")
local user_name = _.input(nil , "what is your name: ")
_.format("hello %s you are cool" , user_name)
