#! /usr/bin/env luajit

local t = require("_tui")
local wordsu = {
    "hello" ,
    "wordld" ,
    "test test",
    "yasoop"
}
local func = {
    function () print("weird champ") end ,
    function () print("weird champu") end ,
    function () print("weird champuu") end ,
    function () print("weird champuuu") end
}
local cur = 1
local niceu = t:new(nil , cur , wordsu , func)
niceu()
--local nice = "niceu"
--local test = "hello ${nice} you are cool"
--I = 1
--function contact(stringu)
    --local word = string.match(stringu , "${%a+}")
    --local testvar = string.gsub(word , "[${}]*" , " ")
    --local var = string.gsub(testvar , "%s" , "")
    --local wee = string.gsub(stringu , "${%a+}" , var )
    --local text = {}
    --wee:gsub(".",function(c) table.insert(text,c) end)
    --local var_start = string.find(wee , var )
    --local var_end = #var
    --_1 = {}
    --_2 = {}
    --for _,letter in pairs(text) do
        --if I < var_start then
            --_1[I] = text[I]
            --I = I + 1
            --elseif I >= var_start and I <= var_end then
                --I = I + 1
            --else
                --_2[I] = text[I]
        --end
    --end
    --for _, v in pairs(_1)do
        --io.write(v)
    --end
    --for _ , v in pairs(_2) do
        --io.write(v)
    --end
    --local niceu = tostring(_2)
    --print(niceu)
--end
--contact(test)
