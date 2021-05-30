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

local test = "hello ${nice} you are cool like ${testu}"
I = 1
local _h = require("_helpers")
--- @param a number
--- @param b number
--
function ImSpecial(a , b)
    local result = a + b
    return result
end
vim.highlight.create()

ImSpecial(1,2)
