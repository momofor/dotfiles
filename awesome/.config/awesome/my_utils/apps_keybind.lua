--local apps = require("my_utils.appsu")
local awful = require("awful")

local modkey       = "Mod4"
local apps = {
    launcher = {
        appu = "kitty" ,
        keyu =  modkey  ,
        keyu2 = "r" ,
        description = "cool rofiuu"
    } ,
}

local function keybind_apps()
    awful.key({ apps.launcher.keyu }, apps.launcher.keyu2, function () awful.spawn.with_shell(apps.launcher.appu)end,
              {description = apps.launcher.description, group = "launcher"})
end

return keybind_apps
