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
	extension = {
		wgsl = "wgsl",
		yuck = "lisp",
		h = "c",
	},
}

local noice = false
if noice == true then
	print(noice)
end
