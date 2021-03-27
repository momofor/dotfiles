-- configure treesitter
local utils = require("_utils")
vim.g.mapleader = " "
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = { "html", "css" },
    },
    incremental_selection = {enable = true },
    textobjects = {
        select = {
            enable = true,
            keymaps = {
            -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner"
            } ,
        } ,
        move = {
            enable = true,
            goto_next_start = {
                ["[p"] = "@parameter.inner",
            },
            goto_previous_start = {
                ["]p"] = "@parameter.inner",
            },
        }
    } ,
}
--utils.map("n" , "<Leader>m" , ":lua print(require'nvim-treesitter.ts_utils'.get_node_at_cursor()) <CR>"  , {})
utils.map("n" , "<Leader>cg" , ':TSHighlightCapturesUnderCursor<CR>' , {noremap = true} )
