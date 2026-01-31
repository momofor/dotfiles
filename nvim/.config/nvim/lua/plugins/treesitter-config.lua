-- configure treesitter
local utils = require("core._utils")
vim.g.mapleader = " "
require("nvim-treesitter").setup({
	highlight = {
		enable = true,
		disable = { "html", "css", "latex", "rust" },
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
})

--utils.map("n" , "<Leader>m" , ":lua print(require'nvim-treesitter.ts_utils'.get_node_at_cursor()) <CR>"  , {})
-- utils.map("n", "<Leader>cg", ":TSHighlightCapturesUnderCursor<CR>", { noremap = true })
