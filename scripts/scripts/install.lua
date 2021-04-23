#! /usr/bin/env luajit

local _ = require("_helpers")
local lfs = require("lfs")
_.mk_file("nice.txt")
_.exec("/home/momofor/scripts/install.fish")
