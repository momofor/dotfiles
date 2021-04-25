local utils = require("_utils")

local variables_glabal = {
    gitgutter_grep = "rg" ,
    indent_guides_enable_on_vim_startup = 1 ,
    indent_guides_auto_colors = 0 ,

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
    nord_cursor_line_number_background = 1 ,
    nord_italic = 1 ,
    --gist_use_password_in_gitconfig = 1 ,
    gist_open_browser_after_post = 1 ,
    gist_detect_filetype = 1 ,
    gist_browser_command = 'firefox %URL%' ,
    OmniSharp_highlighting = 0
}

utils.set_var(vim.g , variables_glabal)
vim.cmd("let g:airline#extensions#tabline#enabled = 1  ")
vim.cmd("let g:airline#extensions#tabline#framemode = ':t'")
vim.cmd("set termguicolors")
