-- vim.filetype.add {
-- 	filename = {
-- 		-- ["~/.config/sway/config"] = "conf",
-- 		["~/.config/mako/config"] = "conf",
-- 		-- ["~/.font.conf"] = "xml",
-- 		-- ["/home/momofor/.config/fontconfig/fonts.conf"] = "xml",
-- 	},
-- }
--
--
vim.filetype.add {
	filename = {
		[".foorc"] = "toml",
		["/etc/foo/config"] = "toml",
		["/home/momofor/.config/waybar/config"] = "conf",
	},
}
