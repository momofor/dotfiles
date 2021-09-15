local awful = require("awful")
local auto_apps = {
    "picom --experimental-backends",
    "kitty",
    os.getenv("BROWSER") or "firefox"
}
for _, app in pairs(auto_apps) do
    awful.spawn.with_shell(app)
end
