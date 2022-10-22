local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()

-- These two are optional and provide syntax highlighting
-- for Neorg tables and the @document.meta tag
parser_configs.norg_meta = {
	install_info = {
		url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
		files = { "src/parser.c" },
		branch = "main",
	},
}

-- configure treesitter
local utils = require("core._utils")
vim.g.mapleader = " "
require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		disable = { "html", "css" },
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
		highlight_definitions = { enable = true },
		highlight_current_scope = { enable = false },
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
