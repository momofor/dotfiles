local utils = require("_utils")

local options= {
    ignorecase = true  ,
    smartcase = true ,
    laststatus = 0 ,
    showtabline = 4 ,
    backup = false ,
    clipboard = "unnamedplus" ,
    hidden = true ,
    pumheight=20 ,
    cmdheight=2 ,
    mouse = "a" ,
    splitbelow = true ,
    splitright = true ,
    autochdir = true ,
    showmode = false ,
    swapfile = false ,
    shiftwidth = 4 ,
    softtabstop = 4 ,
    tabstop = 4 ,
    smartindent = true ,
    expandtab = true ,
    number = true ,
    relativenumber = true ,
    colorcolumn = "100" ,
    scrolloff = 7 ,
    cursorline = true ,
    foldmethod = "expr" ,
    foldexpr = "nvim_treesitter#foldexpr()" ,
    signcolumn = "yes" , -- can be set to number
    termguicolors = true ,
}
utils.set_options(options)
vim.cmd("set shortmess+=c")
vim.o.t_co = "256"
