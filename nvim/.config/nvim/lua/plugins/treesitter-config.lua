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
		disable = { "html", "css", "tex" },
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
		-- highlight_current_scope = { enable = true },
	},
	--[[ swap = {
		enable = true,
		swap_next = {
			["[p"] = "@parameter.inner",
		},
		swap_previous = {
			["]p"] = "@parameter.inner",
		},
	}, ]]
})

--utils.map("n" , "<Leader>m" , ":lua print(require'nvim-treesitter.ts_utils'.get_node_at_cursor()) <CR>"  , {})
utils.map("n", "<Leader>cg", ":TSHighlightCapturesUnderCursor<CR>", { noremap = true })
