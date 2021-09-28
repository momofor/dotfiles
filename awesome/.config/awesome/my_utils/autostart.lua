local awful = require("awful")
local auto_apps = {
    "picom --experimental-backends",
    "kitty -e systemd-analyze",
    os.getenv("BROWSER") or "firefox-nightly"
}
for _, app in pairs(auto_apps) do
    awful.spawn.with_shell(app)
end
