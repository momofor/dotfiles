#! /usr/bin/env luajit
local _h = require("_helpers")

local test = {
    "nice" ,
    "cool" ,
    "man " ,
    "wow"
}
print(_h.is_in_array("man" , test))
