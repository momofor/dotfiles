#! /usr/bin/env luajit
local _h = require("_helpers")
local app = "main"
local lib = "./lib/get.a"
_h.exec(string.format("g++ %s.cpp -Ldir %s -o %s" , app ,lib , app))
_h.exec("./main")
