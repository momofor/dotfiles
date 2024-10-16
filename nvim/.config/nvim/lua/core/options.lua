local utils = require "core._utils"

local options = {
	ignorecase = true,
	smartcase = true,
	laststatus = 3,
	showtabline = 4,
	backup = false,
	writebackup = false,
	clipboard = "unnamedplus",
	hidden = true,
	pumheight = 25,
	cmdheight = 1,
	mouse = "",
	splitbelow = true,
	splitright = true,
	autochdir = true,
	showmode = false,
	swapfile = false,
	shiftwidth = 4,
	softtabstop = 4,
	tabstop = 4,
	smartindent = true,
	expandtab = false,
	number = true,
	relativenumber = true,
	colorcolumn = "120",
	scrolloff = 7,
	cursorline = true,
	signcolumn = "yes", -- can be set to number
	termguicolors = true,
	timeoutlen = 300,
	updatetime = 200, -- Faster completion
	conceallevel = 0,
	undofile = true,
	guifont = "Fira Code:h16:#e-subpixelantialias:#h-slight",
}

vim.opt.shortmess:append "c"
vim.opt.shell = "/usr/bin/dash"
-- vim.opt.spell = true

vim.api.nvim_create_augroup("YankHighlight", {})
vim.api.nvim_create_autocmd("TextYankPost", {
	group = "YankHighlight",
	pattern = "*",
	command = "silent! lua vim.highlight.on_yank()",
})

vim.g.loaded_gzip = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPluGin = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPluGin = 1
vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_spec = 1
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.loaded_perl_provider = 0
vim.g.tex_fast = ""

utils.set_options(options)
vim.g.neovide_theme = "dark"
