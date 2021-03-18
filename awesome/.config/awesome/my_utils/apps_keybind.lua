--local apps = require("my_utils.appsu")
local awful = require("awful")
local gears = require("gears")
local my_table = awful.util.table or gears.table

local modkey       = "Mod4"
local apps = {
    launcher = {
        appu = "kitty" ,
        keyu = {{ modkey } , "r" },
        description = {"cool rofiuu"}
    } ,
}

local function keybind_apps()
    for _, info in pairs(apps) do
        keybinding1 = info.keyu[1]
        keybinding2 = info.keyu[2]
        appu = info.appu
        action = awful.spawn.with_shell(appu)
        description = {description = info.description[1] , group = "launcher"}
    end
end
keybind_apps()

return keybind_apps
