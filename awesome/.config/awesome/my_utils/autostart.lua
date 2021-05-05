local awful = require("awful")
local auto_apps = {
    '/usr/bin/setxkbmap -layout dvp' ,
    '/usr/bin/setxkbmap -option "caps:swapescape"' ,
    '~/picom/build/src/picom --experimental-backends' ,
    'kitty -e tmux' ,
    'firefox-trunk'
}
for _, app in pairs(auto_apps) do
    awful.spawn.with_shell(app .. " &")
end
