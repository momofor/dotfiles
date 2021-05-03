#! /usr/bin/env luajit
-- made with by Mohammed Amine Chennoufi(momofor)
                                                        --▄▄▄▄                 
                                                      --▄█▀ ▀▀                 
                                                      --██▀                    
--▀████████▄█████▄   ▄██▀██▄▀████████▄█████▄   ▄██▀██▄ █████   ▄██▀██▄▀███▄███ 
  --██    ██    ██  ██▀   ▀██ ██    ██    ██  ██▀   ▀██ ██    ██▀   ▀██ ██▀ ▀▀ 
  --██    ██    ██  ██     ██ ██    ██    ██  ██     ██ ██    ██     ██ ██     
  --██    ██    ██  ██▄   ▄██ ██    ██    ██  ██▄   ▄██ ██    ██▄   ▄██ ██     
--▄████  ████  ████▄ ▀█████▀▄████  ████  ████▄ ▀█████▀▄████▄   ▀█████▀▄████▄   
                                                                             
                                                                             

local _ = require("_helpers")

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

function ui:start()
    for _,word in pairs(self.words) do
        if word == self.words[self.Current] then
            print ("-----" .. word .. "-----")
        else
            print(word)
        end
    end
end

function ui:CheckInput()
    local choice = _.input()
    if choice == "k" and self.Current == 1 then
        self.Current = 1
        _.exec("clear")
        ui:start()
    elseif choice == "j" and self.Current == #self.words then
        self.Current = #self.words
        _.exec("clear")
        ui:start()
    elseif choice == "k" and self.Current ~= 1 then
        self.Current = self.Current - 1
        _.exec("clear")
        ui:start()
    elseif choice == "j" and self.Current ~= #self.words then
        self.Current = self.Current + 1
        _.exec("clear")
        ui:start()
    elseif choice == "no" then
        _.exec("clear")
        self.functions[self.Current]()
        ui:start()
    end
end

return ui
