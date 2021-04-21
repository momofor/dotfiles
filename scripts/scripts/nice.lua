#!/usr/bin/env luajit
local _ = require("_helpers")
local imBase = 'https://mat3e.github.io/brains/img/'

function inc(num)
    num = num + 1
end

for num = 1 ,3 do
    inc(num)
    _.exec("echo " .. imBase .. num " >> images.txt")
end

