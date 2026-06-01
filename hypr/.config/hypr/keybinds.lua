local home = os.getenv("HOME")
hl.bind("SUPER+RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER+D", hl.dsp.exec_cmd("wofi --show drun"))
hl.bind("SUPER+E", hl.dsp.exec_cmd("easyeffects"))
hl.bind("SUPER+A", hl.dsp.exec_cmd(home .. "/audio_output_hyprland.sh"))
hl.bind("ALT+Q", hl.dsp.exec_cmd("firefox"))

hl.bind("SUPER+ALT+Q", hl.dsp.exec_cmd("chromium --enable-features=UseOzonePlatform --ozone-platform=wayland"))
hl.bind(
	"SUPER+up",
	hl.dsp.exec_cmd(
		[[wpctl set-volume -l 1 @DEFAULT_SINK@ 5%+ && echo "$(wpctl get-volume @DEFAULT_SINK@ | rg -m1 -o "\d+"| tail --lines 1)" > /tmp/wobpipe]]
	),
	{ repeating = true }
)
hl.bind(
	"SUPER+down",
	hl.dsp.exec_cmd(
		[[wpctl set-volume @DEFAULT_SINK@ 5%- && echo "$(wpctl get-volume @DEFAULT_SINK@ | rg -m1 -o "\d+"| tail --lines 1)" > /tmp/wobpipe]]
	),
	{ repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set +3%"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 3%-"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl prev"))
hl.bind("XF86LaunchA", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("SUPER+M", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_SINK@ toggle"))
hl.bind("SUPER+S", hl.dsp.exec_cmd(home .. "/switch-waybar-theme.fish"))
hl.bind("ALT+S", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("CTRL+SHIFT+L", hl.dsp.exec_cmd("wlogout"))
hl.bind("CTRL+ALT+L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER+SHIFT+P", hl.dsp.exec_cmd([[clipman pick -t "wofi"]]))
hl.bind("SUPER+C", hl.dsp.exec_cmd([[grim -g "$(slurp)" - | wl-copy]]))
hl.bind("SUPER+Z", hl.dsp.exec_cmd([[grim -g "$(slurp)" ~/.other/screenshots/"$(date --rfc-3339 s).png"]]))
hl.bind("SUPER+SHIFT+Z", hl.dsp.exec_cmd([[wl-paste | sed -E "s|(https://)[^/]+|\1youtube.com|" | wl-copy]]))
hl.bind(
	"SUPER+mouse_down",
	hl.dsp.exec_cmd(
		[[hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '.float * 1.5')]]
	)
)
hl.bind(
	"SUPER+mouse_up",
	hl.dsp.exec_cmd(
		[[ hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '(.float * 0.5) | if . < 1 then 1 else . end') ]]
	)
)

hl.bind("SUPER+Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER+SHIFT+Q", hl.dsp.window.close())
hl.bind("SUPER+SHIFT+E", hl.dsp.exit())

hl.bind("SUPER+h", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER+l", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER+k", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER+j", hl.dsp.focus({ direction = "down" }))

hl.bind("SUPER+SHIFT+h", hl.dsp.window.move({ direction = "left", group_aware = true }))
hl.bind("SUPER+SHIFT+l", hl.dsp.window.move({ direction = "right", group_aware = true }))
hl.bind("SUPER+SHIFT+k", hl.dsp.window.move({ direction = "up", group_aware = true }))
hl.bind("SUPER+SHIFT+j", hl.dsp.window.move({ direction = "down", group_aware = true }))

for i = 10, 19 do
	-- Layout agnostic using key codes
	local workspace = i % 10 + 1
	hl.bind("SUPER + code:" .. i, hl.dsp.focus({ workspace = workspace }))
	hl.bind("SUPER + SHIFT + code:" .. i, hl.dsp.window.move({ workspace = workspace }))
	hl.bind("ALT + code:" .. i, hl.dsp.window.move({ workspace = workspace }))
end

hl.bind("ALT+O", hl.dsp.window.move({ workspace = "special:scratchpad" }))
hl.bind("SUPER+O", hl.dsp.focus({ workspace = "special:scratchpad" }))
hl.bind("SUPER+SHIFT+O", hl.dsp.workspace.toggle_special("scratchpad"))
hl.bind("SUPER+F", hl.dsp.window.fullscreen())
hl.bind("SUPER+ALT+H", hl.dsp.layout("togglesplit"))

hl.bind("SUPER+W", hl.dsp.group.toggle())

hl.bind("SUPER+N", hl.dsp.group.next())
hl.bind("SUPER+p", hl.dsp.group.prev())

hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true, description = "Window: Move" })
hl.bind("SUPER + mouse:274", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true, description = "Window: Resize" })

local function workspace_switch()
	local cur_workspace = tonumber(hl.get_active_workspace().name)
	if cur_workspace == 1 or cur_workspace == 2 then
		hl.dispatch(hl.dsp.focus({ workspace = cur_workspace % 2 + 1 }))
	else
		hl.dispatch(hl.dsp.focus({ workspace = 2 }))
	end
end

hl.bind("SUPER+left", workspace_switch)
hl.bind("SUPER+right", workspace_switch)
