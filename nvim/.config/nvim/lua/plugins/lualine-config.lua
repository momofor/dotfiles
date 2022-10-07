-- local custom_nord = require("lualine.themes.catpuccin")
-- Chnage the background of lualine_c section for normal mode
-- custom_nord.normal.b.bg = "#81a1c1" -- rgb colors are supported
-- custom_nord.normal.b.fg = "#3b4252"
-- custom_nord.insert.a.bg = "#a3be8c"
-- custom_nord.insert.a.fg = "#3b4252"

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "catppuccin",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "b:gitsigns_status" },
		lualine_c = { "filename", "lsp_progress" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
