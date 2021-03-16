local utils = require("_utils")

local variables_glabal = {
    NERDTreeQuitOnOpen = 1 ,
    gitgutter_grep = "rg" ,
    indent_guides_enable_on_vim_startup = 1 ,
    indent_guides_auto_colors = 0 ,
    NERDTreeGitStatusUseNerdFonts = 1 ,
    NERDTreeMinimalUI = 1 ,

   startify_custom_header = {
     ' ███▄ ▄███▓ ▒█████   ███▄ ▄███▓ ▒█████    █████▒ ▒█████   ██▀███ ',
     '▓██▒▀█▀ ██▒▒██▒  ██▒▓██▒▀█▀ ██▒▒██▒  ██▒▓██   ▒ ▒██▒  ██▒▓██ ▒ ██▒ ',
     '▓██    ▓██░▒██░  ██▒▓██    ▓██░▒██░  ██▒▒████ ░ ▒██░  ██▒▓██ ░▄█ ▒ ',
     '▒██    ▒██ ▒██   ██░▒██    ▒██ ▒██   ██░░▓█▒  ░ ▒██   ██░▒██▀▀█▄   ',
     '▒██▒   ░██▒░ ████▓▒░▒██▒   ░██▒░ ████▓▒░░▒█░    ░ ████▓▒░░██▓ ▒██▒ ',
     '░ ▒░   ░  ░░ ▒░▒░▒░ ░ ▒░   ░  ░░ ▒░▒░▒░  ▒ ░    ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░ ',
     '░  ░      ░  ░ ▒ ▒░ ░  ░      ░  ░ ▒ ▒░  ░        ░ ▒ ▒░   ░▒ ░ ▒░ ',
     '░      ░   ░ ░ ░ ▒  ░      ░   ░ ░ ░ ▒   ░ ░    ░ ░ ░ ▒    ░░   ░  ',
     '      ░       ░ ░         ░       ░ ░              ░ ░     ░      ',
    } ,
    airline_theme = "nord" ,
    nvcode_termcolors = 256 ,
}

utils.set_var(vim.g , variables_glabal)
vim.cmd("let g:airline#extensions#tabline#enabled = 1  ")
vim.cmd("let g:airline#extensions#tabline#framemode = ':t'")
vim.cmd("set termguicolors")
