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
local bigboi = {
    nice = "test complete" ,
    testu = "oh noo"
}
local test = "hello ${nice} you are cool like ${testu}"
I = 1
contact(test , bigboi)
