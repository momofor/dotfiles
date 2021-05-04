#! /usr/bin/env luajit

local colors = {
    red = "\27[31m" ,
    green = "\27[32m" ,
    blue = "\27[34m"  ,
    yellow = "\27]33m" ,
    white = "\27[37m" ,
}
local backgrounds = {
    red = "\27[41m" ,
    green = "\27[42m" ,
    blue = "\27]44m" ,
    yellow = "\27[43m" ,
    white = "\27[47m"
}
return colors , backgrounds
