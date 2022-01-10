local utils = require "core._utils"

local options = {
	ignorecase = true,
	smartcase = true,
	--laststatus = 0 ,
	showtabline = 4,
	backup = false,
	writebackup = false,
	clipboard = "unnamedplus",
	hidden = true,
	pumheight = 25,
	cmdheight = 2,
	mouse = "a",
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
	colorcolumn = "100",
	scrolloff = 7,
	cursorline = true,
	foldmethod = "expr",
	signcolumn = "yes", -- can be set to number
	termguicolors = true,
	timeoutlen = 300,
	updatetime = 100, -- Faster completion
}

vim.opt.shortmess:append "c"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.shell = "dash"
vim.opt.completeopt = "menuone,noselect,preview"
vim.g.do_filetype_lua = 1
vim.g.did_load_filetypes = 0
--[[ vim.opt.spell = true
vim.opt.spelllang = {'en_us'} ]]

-- highlight on yank
vim.api.nvim_exec(
	[[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
]],
	false
)

utils.set_options(options)