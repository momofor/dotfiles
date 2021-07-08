-- configure treesitter
local utils = require("_utils")
vim.g.mapleader = " "
require'nvim-treesitter.configs'.setup {
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
    textobjects = {
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer",
                ["]p"] = "@parameter.inner",
            },
            goto_next_end = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer",
                ["]P"] = "@parameter.inner",
            },
            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
                ["[p"] = "@parameter.inner",
            },
            goto_previous_end = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer",
                ["]P"] = "@parameter.inner",
            },
        },
        select = {
            enable = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
                ["ap"] = "@parameter.outer",
                ["ip"] = "@parameter.inner",
                --[[ ["ab"] = "@block.outer",
                ["ib"] = "@block.inner", ]]
            },
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
}




--utils.map("n" , "<Leader>m" , ":lua print(require'nvim-treesitter.ts_utils'.get_node_at_cursor()) <CR>"  , {})
utils.map("n" , "<Leader>cg" , ':TSHighlightCapturesUnderCursor<CR>' , {noremap = true} )
