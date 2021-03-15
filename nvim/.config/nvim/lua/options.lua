local utils = require("_utils")

local options= {
    ignorecase = true  ,
    smartcase = true ,
    laststatus = 0 ,
    showtabline = 4 ,
    backup = false ,
    --updatetime= 300 ,
    --ttimeoutlen= 500 ,
    --clipboard = unnamedplus ,
    hidden = true ,
    pumheight=20 ,
    cmdheight=2 ,
    mouse = "a" ,
    splitbelow = true ,
    splitright = true ,
    autochdir = true ,
    showmode = true ,
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
    signcolumn = "yes" -- can be set to number
}
utils.set_options(options)


