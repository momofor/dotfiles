local awful = require("awful")
local auto_apps = {
    '/usr/bin/setxkbmap -layout dvp' ,
    'setxkbmap -option "caps:swapescape"' ,
    '~/picom/build/src/picom --experimental-backends' ,
    'kitty' ,
    'firefox-trunk awesomewm.org/doc'
}
for _, app in pairs(auto_apps) do
    awful.spawn.with_shell(app .. " &")
end
