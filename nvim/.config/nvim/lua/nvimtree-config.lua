local utils = require("_utils")
vim.g.mapleader = " "
local nice = {
    nvim_tree_ignore = { '.git', 'node_modules', '.cache' } ,
    nvim_tree_auto_close = 1 ,
    nvim_tree_auto_ignore_ft = {'startify', 'dashboard'} ,
    nvim_tree_quit_on_open = 1 ,
    nvim_tree_icons = {
     default = '',
     symlink = '',
     git = {
       unstaged = "✗",
       staged = "✓",
       unmerged = "",
       renamed = "➜",
       untracked = "★"
       } ,
     folder = {
       default = "",
       open = "",
       empty = "",
       empty_open = "",
       symlink = "",
       symlink_open = "",
       }
     }
}
utils.map("n" , "<Leader>t" , ":NvimTreeToggle<CR>" , {noremap = true})
utils.map("n" , "<Leader>f?" , ":NvimTreeFindFile<CR>" , {noremap = true})
