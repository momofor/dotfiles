local utils = require("_utils")
vim.g.mapleader = " "
utils.map("n" , "<Leader>M" , ":lua require'telescope.builtin'.man_pages() <CR>" , {noremap = true})
utils.map("n" , "<Leader>T" , ":lua require'telescope.builtin'.treesitter() <CR>" , {noremap = true})
utils.map("n" , "<Leader>F" , ":lua require'telescope.builtin'.find_files() <CR>" , {noremap = true})

local M = {}

function M.Search(title , cwd)
    require("telescope.builtin").find_files({
        prompt_title = title ,
        cwd = cwd ,
    })
end

utils.map("n" , "<Leader>rc" ,":lua require'tele'.Search('< NeovimRC >' , '~/.config/nvim/' ) <CR>", {} )
utils.map("n" , "<Leader>Aw" ,":lua require'tele'.Search('< AwesomewmRC >' , '~/.config/awesome/' ) <CR>", {} )
return M
