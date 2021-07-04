local utils = require("_utils")

local options= {
    ignorecase = true  ,
    smartcase = true ,
    --laststatus = 0 ,
    showtabline = 4 ,
    backup = false ,
	writebackup = false ,
    clipboard = "unnamedplus" ,
    hidden = true ,
    pumheight=20 ,
    cmdheight=2 ,
    mouse = "a" ,
    splitbelow = true ,
    splitright = true ,
    autochdir = true ,
    showmode = false ,
    --swapfile = false ,
    shiftwidth = 4 ,
    softtabstop = 4 ,
    tabstop = 4 ,
    smartindent = true ,
    expandtab = false ,
    number = true ,
    relativenumber = true ,
    colorcolumn = "100" ,
    scrolloff = 7 ,
    cursorline = true ,
    foldmethod = "expr" ,
    signcolumn = "yes" , -- can be set to number
    termguicolors = true ,
    timeoutlen = 100 ,
    updatetime = 100 -- Faster completion
}

vim.opt.shortmess:append "c";
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.shell = "/bin/bash"
vim.cmd "filetype plugin on"

utils.set_options(options)
