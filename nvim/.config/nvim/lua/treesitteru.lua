-- configure treesitter
local utils = require("_utils")
vim.g.mapleader = " "
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {"html" , "css"},  -- list of language that will be disabled
    },
    fold = {
    enable = true
    },
    incremental_selection = {
        enable = true
    }

}
utils.map("n" , "<Leader>m" , ":lua print(require'nvim-treesitter.ts_utils'.get_node_at_cursor()) <CR>"  , {})
utils.map("n" , "<Leader>cg" , ':TSHighlightCapturesUnderCursor<CR>' , {noremap = true} )
