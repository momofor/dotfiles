hl.config({
	plugin = {
		hyprgrass = {
			sensitivity = 4.0,
			long_press_delay = 200,
			resize_on_border_long_press = true,
			edge_margin = 10,
		},
	},
	gestures = {
		workspace_swipe_touch = false,
	},
})

local hg = hl.plugin.hyprgrass
hl.plugin.hyprgrass.bind({
	pattern = { kind = "edge", origin = "d", direction = "u", fingers = 2 },
	action = hl.dsp.exec_cmd("firefox"),
})
hl.plugin.hyprgrass.bind({
	pattern = { kind = "edge", origin = "d", direction = "l" },
	action = hl.dsp.focus({ workspace = "+1" }),
})
hl.plugin.hyprgrass.bind({
	pattern = { kind = "edge", origin = "d", direction = "r" },
	action = hl.dsp.focus({ workspace = "-1" }),
})

hl.plugin.hyprgrass.bind({
	pattern = { kind = "tap", fingers = 3 },
	action = hl.dsp.window.float(),
})

hl.plugin.hyprgrass.bind({
	pattern = { kind = "longpress", fingers = 3 },
	action = hl.dsp.window.drag(),
	mouse = true,
})

hl.plugin.hyprgrass.gesture({
	pattern = { kind = "swipe", fingers = 3, direction = "down" },
	action = "close",
})

hl.plugin.hyprgrass.gesture({
	pattern = { kind = "swipe", fingers = 3, direction = "up" },
	action = "fullscreen",
})
