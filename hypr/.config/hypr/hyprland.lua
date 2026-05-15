require("keybinds")
local home = os.getenv("HOME")
hl.monitor({
	output = "eDP-1",
	mode = "preferred",
	position = "auto-right",
	scale = 1.2,
})

hl.monitor({
	output = "HDMI-A-2",
	mode = "preferred",
	position = "auto-left",
	scale = 1,
	bitdepth = 8,
	-- cm = srgb
	icc = home .. "/sRGB_IEC61966-2-1_black_scaled.icc",
})

hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

hl.on("hyprland.start", function()
	hl.exec_cmd("$HOME/start-hyprland.sh")
end)

hl.config({ binds = {
	workspace_back_and_forth = 1,
	allow_workspace_cycles = 1,
	scroll_event_delay = 5,
} })

hl.config({
	input = {
		kb_layout = "us,us,ma,fr",
		kb_variant = "dvp,,,",
		kb_options = "grp:rctrl_rshift_toggle,compose:ralt,caps:swapescape",
		kb_rules = "",
		repeat_rate = 40,
		repeat_delay = 150,
		scroll_factor = 2,

		follow_mouse = 1,

		accel_profile = "flat",
		force_no_accel = true,
		sensitivity = 0.0,

		touchpad = {
			natural_scroll = false,
			tap_to_click = true,
			disable_while_typing = true,
		},
	},
})

hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 5,
		border_size = 3,
		col = {
			active_border = "0xFFb7bdf8",
			inactive_border = "0xFF494d64",
		},
		layout = "dwindle",
	},
})

hl.config({
	group = {
		col = { border_active = "0xff89dceb" },
		group_on_movetoworkspace = true,
		groupbar = {
			col = { active = "0xfff9e2b0" },
			gradients = false,
			scrolling = false,
		},
	},
})

hl.config({
	decoration = {
		rounding = 10,
		blur = {
			enabled = false,
			size = 3,
			passes = 2,
		},
	},
	animations = { enabled = true },
})

hl.config({
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
	},
})

hl.curve("easeInSine", { type = "bezier", points = { { 0.12, 0 }, { 0.63, 1 } } })
hl.curve("easeOutSine", { type = "bezier", points = { { 0.61, 1 }, { 0.88, 1 } } })
hl.curve("easeInOutSine", { type = "bezier", points = { { 0.37, 0 }, { 0.63, 1 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 2, bezier = "default" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 2, bezier = "easeInSine", style = "popin 60" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2, bezier = "easeOutSine", style = "popin 60" })
hl.animation({ leaf = "fade", enabled = true, speed = 2, bezier = "easeInOutSine" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2, bezier = "easeInOutSine", style = "slide" })

--- ---- Window Rules

hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })

hl.window_rule({
	name = "no-gaps-wtv1",
	match = { float = false, workspace = "w[tv1]" },
	border_size = 0,
	rounding = 0,
})
hl.window_rule({
	name = "no-gaps-f1",
	match = { float = false, workspace = "f[1]" },
	border_size = 0,
	rounding = 0,
})
