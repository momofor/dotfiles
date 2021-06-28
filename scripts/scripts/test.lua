#! /usr/bin/env luajit

--local t = require("_tui")
--local wordsu = {
    --"hello" ,
    --"wordld" ,
    --"test test",
    --"yasoop"
--}
--local func = {
    --function () print("weird champ") end ,
    --function () print("weird champu") end ,
    --function () print("weird champuu") end ,
    --function () print("weird champuuu") end
--}
--local cur = 1
--local niceu = t:new(nil , cur , wordsu , func)
--niceu()
--
--- @type table<string,number>
--
local bigboi = {
    nice = 1,
    testu = 2
}

local _h = require "_helpers"
local UID = _h.do_tool {"search" , '"fish /home/momofor"'  , "|" , "head -1"}

_h.do_tool {"windowactivate" , "--sync" , UID }
