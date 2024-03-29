local utils = require "core._utils"

local variables_glabal = {
	indent_guides_enable_on_vim_startup = 1,
	indent_guides_auto_colors = 0,

	startify_custom_header = {
		" ███▄ ▄███▓ ▒█████   ███▄ ▄███▓ ▒█████    █████▒ ▒█████   ██▀███ ",
		"▓██▒▀█▀ ██▒▒██▒  ██▒▓██▒▀█▀ ██▒▒██▒  ██▒▓██   ▒ ▒██▒  ██▒▓██ ▒ ██▒ ",
		"▓██    ▓██░▒██░  ██▒▓██    ▓██░▒██░  ██▒▒████ ░ ▒██░  ██▒▓██ ░▄█ ▒ ",
		"▒██    ▒██ ▒██   ██░▒██    ▒██ ▒██   ██░░▓█▒  ░ ▒██   ██░▒██▀▀█▄   ",
		"▒██▒   ░██▒░ ████▓▒░▒██▒   ░██▒░ ████▓▒░░▒█░    ░ ████▓▒░░██▓ ▒██▒ ",
		"░ ▒░   ░  ░░ ▒░▒░▒░ ░ ▒░   ░  ░░ ▒░▒░▒░  ▒ ░    ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░ ",
		"░  ░      ░  ░ ▒ ▒░ ░  ░      ░  ░ ▒ ▒░  ░        ░ ▒ ▒░   ░▒ ░ ▒░ ",
		"░      ░   ░ ░ ░ ▒  ░      ░   ░ ░ ░ ▒   ░ ░    ░ ░ ░ ▒    ░░   ░  ",
		"      ░       ░ ░         ░       ░ ░              ░ ░     ░      ",
	},
	airline_theme = "nord",
	nvcode_termcolors = 256,
	OmniSharp_highlighting = 0,
	vimtex_view_method = "zathura",
	rustfmt_autosave = 1,
	vimtex_quickfix_mode = 0,
}
vim.cmd [[ 
let g:vimtex_compiler_latexmk = { 'build_dir' : 'out' }
let g:vimtex_syntax_packages = {'minted': {'load': 2}}
]]

utils.set_var(vim.g, variables_glabal)
vim.cmd "set termguicolors"
