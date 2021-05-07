-- configure treesitter
local utils = require("_utils")
vim.g.mapleader = " "
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = { "html", "css" },
    },
}
--utils.map("n" , "<Leader>m" , ":lua print(require'nvim-treesitter.ts_utils'.get_node_at_cursor()) <CR>"  , {})
utils.map("n" , "<Leader>cg" , ':TSHighlightCapturesUnderCursor<CR>' , {noremap = true} )
