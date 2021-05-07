#! /usr/bin/env luajit

local _ = require("_helpers")
local colors = require("_colors")

local ui = {Current = 1 , words = {} , functions = {}}

function ui:new(o ,Current , words , functions)
    o = o or {}
    setmetatable(o , self)
    self.__index = self
    self.Current = Current or 1
    self.words = words or {}
    self.functions = functions or {}
    _.exec("clear")
    ui:start()
    while true
        do
            ui:CheckInput()
        end
        return o
end
I = 1
function ui:start()
    for _,word in pairs(self.words) do
        if word == self.words[self.Current] then
            print(colors.blue .. "[".. I .."]-----" .. word .. "-----")
        else
            print("\27[m[".. I .."]" ..word)
        end
        if I < #self.words then
            I = I + 1
        else
            I = 1
        end
    end
end

function ui:rerun ()
    _.exec("clear")
    ui:start()
end

function ui:CheckInput()
    local choice = _.input()
    if choice == "k" and self.Current == 1 then
        self.Current = 1
        self.rerun()
    elseif choice == "j" and self.Current == #self.words then
        self.Current = #self.words
        self.rerun()
    elseif choice == "k" and self.Current ~= 1 then
        self.Current = self.Current - 1
        self.rerun()
    elseif choice == "j" and self.Current ~= #self.words then
        self.Current = self.Current + 1
        self.rerun()
    elseif choice == "no" then
        _.exec("clear")
        self.functions[self.Current]()
        ui:start()
    elseif tonumber(choice) <= #self.words then
        self.Current = tonumber(choice)
        self.rerun()
    else
        self.rerun()
        print("wrong value!")
    end
end

return ui
