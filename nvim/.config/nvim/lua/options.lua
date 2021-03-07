local utils = require("_utils")
local o = vim.o
local b = vim.bo
local w = vim.wo

local options_global  = {
    ignorecase = true  ,
    smartcase = true ,
    laststatus = 0 ,
    showtabline = 4 ,
    backup = false ,
    --updatetime= 300 ,
    --ttimeoutlen= 500 ,
    --clipboard = unnamedplus ,
    hidden = true ,
    pumheight=10 ,
    cmdheight=2 ,
    mouse = "a" ,
    splitbelow = true ,
    splitright = true ,
    autochdir = true ,
    showmode = false ,
}

local options_window = {
    number = true ,
    relativenumber = true ,
    colorcolumn = "100" ,
    scrolloff = 7 ,
    cursorline = true ,
    foldmethod = expr ,
    foldexpr = "nvim_treesitter#foldexpr()"
}

local options_buffer = {
    swapfile = false ,
    shiftwidth = 4 ,
    softtabstop = 4 ,
    tabstop = 4 ,
    smartindent = true ,
    expandtab = true ,
}



utils.set_options(o,options_global)
utils.set_options(w,options_window)
utils.set_options(b,options_buffer)

