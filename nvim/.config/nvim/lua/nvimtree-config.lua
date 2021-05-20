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

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
 vim.g.nvim_tree_bindings = {
     ["<CR>"] = ":YourVimFunction()<cr>",
        ["u"] = ":lua require'some_module'.some_function()<cr>",

      -- default mappings
        ["<CR>"]           = tree_cb("edit"),
        ["o"]              = tree_cb("edit"),
        ["<2-LeftMouse>"]  = tree_cb("edit"),
        --["<2-RightMouse>"] = tree_cb("cd"),
        ["C"]              = tree_cb("cd"),
        ["<C-v>"]          = tree_cb("vsplit"),
        ["<C-x>"]          = tree_cb("split"),
        ["<C-t>"]          = tree_cb("tabnew"),
        ["<BS>"]           = tree_cb("close_node"),
        ["<S-CR>"]         = tree_cb("close_node"),
        ["<Tab>"]          = tree_cb("preview"),
        ["I"]              = tree_cb("toggle_ignored"),
        ["H"]              = tree_cb("toggle_dotfiles"),
        ["R"]              = tree_cb("refresh"),
        ["a"]              = tree_cb("create"),
        ["d"]              = tree_cb("remove"),
        ["r"]              = tree_cb("rename"),
        ["<C-r>"]          = tree_cb("full_rename"),
        ["x"]              = tree_cb("cut"),
        ["c"]              = tree_cb("copy"),
        ["p"]              = tree_cb("paste"),
        ["[c"]             = tree_cb("prev_git_item"),
        ["]c"]             = tree_cb("next_git_item"),
        ["U"]              = tree_cb("dir_up"),
        ["q"]              = tree_cb("close"),
}
