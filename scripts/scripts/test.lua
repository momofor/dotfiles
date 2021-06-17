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
-- vim.highlight.create()

local test_str = "name: Romeo, Juliet"

-- split the string at ':'
step_0 = _h.mysplit(test_str , ":")

-- get the first slice of the list
step_1 = step_0[2]

-- split the string at ','
step_2 = _h.mysplit(step_1 , ",")

-- strip leading and trailing edge spaces of each item of the list 

for _, word in ipairs(step_2) do
	string.gsub(word ,"%s" ,"")
	print(word)
end

ImSpecial(1,2)
