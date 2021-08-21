local awful = require("awful")
local auto_apps = {
    'setxkbmap -layout dvp' ,
    'setxkbmap -option "caps:swapescape"' ,
    '~/picom/build/src/picom --experimental-backends' ,
    'kitty'
    -- 'firefox-trunk'
}
for _, app in pairs(auto_apps) do
    awful.spawn.with_shell(app)
end
