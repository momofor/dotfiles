local awful = require("awful")
local auto_apps = {
    "picom --experimental-backends",
    "kitty",
    "luakit"
}
for _, app in pairs(auto_apps) do
    awful.spawn.with_shell(app)
end
