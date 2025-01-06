vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
	compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
	transparent_background = false,
	term_colors = true,
	-- dim_inactive = {
	-- 	enabled = false,
	-- 	shade = "dark",
	-- 	percentage = 0.15,
	-- },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	default_integrations = true,
	integrations = {
		blink_cmp = true,
		cmp = false,
		nvimtree = true,
		telescope = true,
		treesitter = true,
		barbar = true,
		dashboard = true,
		fidget = true,
		hop = true,
		indent_blankline = { enabled = true, colored_indent_levels = false },
		-- ts_rainbow2 = true,
		treesitter_context = false,
		navic = {
			enabled = true,
			custom_bg = "NONE",
		},
		gitsigns = true,
		semantic_tokens = true,
		lsp_trouble = true,
		ufo = true,
		snacks = true,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
	color_overrides = {},
	custom_highlights = {},
	highlight_overrides = {
		mocha = function(mocha)
			return { Pmenu = { bg = mocha.mantle }, BlinkCmpLabelMatch = { style = { "bold" }, fg = "" } }
		end,
	},
})

vim.api.nvim_command("colorscheme catppuccin")
