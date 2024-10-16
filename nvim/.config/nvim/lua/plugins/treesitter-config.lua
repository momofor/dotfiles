-- configure treesitter
local utils = require("core._utils")
vim.g.mapleader = " "
require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		disable = { "html", "css", "latex", "tex" },
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
	refactor = {
		highlight_definitions = { enable = false },
		highlight_current_scope = { enable = true },
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
				["aa"] = "@parameter.outer",
				["ia"] = "@parameter.inner",
				["rh"] = "@assignment.rhs",
				["lh"] = "@assignment.lhs",
			},
		},
		lsp_interop = {
			enable = true,
			border = "rounded",
			peek_definition_code = {
				["<leader>df"] = "@function.outer",
				["<leader>dc"] = "@class.outer",
			},
		},
	},
})

--utils.map("n" , "<Leader>m" , ":lua print(require'nvim-treesitter.ts_utils'.get_node_at_cursor()) <CR>"  , {})
utils.map("n", "<Leader>cg", ":TSHighlightCapturesUnderCursor<CR>", { noremap = true })
