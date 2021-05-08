#! /usr/bin/env luajit
local _h = require("_helpers")
_h.exec("g++ test.cpp -o test -llua5.3")
_h.exec("./test ./test.lua")
