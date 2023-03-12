vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
	compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
	transparent_background = true,
	term_colors = true,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
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
		variables = { "italic" },
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		cmp = true,
		nvimtree = true,
		telescope = true,
		treesitter = true,
		barbar = true,
		dashboard = true,
		fidget = true,
		hop = true,
		indent_blankline = { enabled = true, colored_indent_levels = true },
		ts_rainbow = true,
		treesitter_context = true,
		gitsigns = true,
		semantic_tokens = true,
		lsp_trouble = true,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
	color_overrides = {},
	custom_highlights = {},
})

vim.api.nvim_command("colorscheme catppuccin")
