local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"lewis6991/impatient.nvim",

	"nvim-lua/plenary.nvim",
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		config = function()
			require("plugins.telescope-config")
		end,
	},
	{ "nvim-telescope/telescope-file-browser.nvim", dependencies = "nvim-telescope/telescope.nvim" },
	{ "stevearc/dressing.nvim", dependencies = "nvim-telescope/telescope.nvim" },
	-- use { "tpope/vim-surround", event = "InsertEnter" }
	{
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("plugins.colorizer")
		end,
	},
	-- use "christianchiarulli/nvcode-color-schemes.vim"

	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"nvim-treesitter/nvim-treesitter-refactor",
			"nvim-treesitter/playground",
			"nvim-treesitter/nvim-treesitter-context",
		},
		config = function()
			require("plugins.treesitter-config")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		config = function()
			require("plugins.nvimtree-config")
		end,
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	},
	{ "romgrk/barbar.nvim", event = "BufRead" },
	"neovim/nvim-lspconfig",

	{ "Raimondi/delimitMate", event = "InsertEnter" },
	{ "folke/trouble.nvim", event = "BufEnter" },
	{
		"onsails/lspkind-nvim",
	},

	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("plugins.lualine-config")
		end,
		event = "BufRead",
	},

	{
		"numToStr/Comment.nvim",
		event = "BufRead",
		config = function()
			require("Comment").setup()
		end,
	},

	{
		"jose-elias-alvarez/nvim-lsp-ts-utils",
		dependencies = "jose-elias-alvarez/null-ls.nvim",

		ft = {
			"javascript",
			"javascriptreact",
			"javascript.jsx",
			"typescript",
			"typescriptreact",
			"typescript.tsx",
		},
		event = "BufRead",
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("plugins.indent-blankline-config")
		end,
		event = "BufRead",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("plugins.git-signs")
		end,
		event = "BufRead",
	},

	{
		"simrat39/rust-tools.nvim",
		ft = { "rust" },
		config = function()
			require("plugins.rust-tools")
		end,
	},
	"rafamadriz/friendly-snippets",
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
		config = function()
			require("plugins.luasnip")
		end,
		build = "make install_jsregexp",
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require("plugins.cmp-config")
		end,
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			"kdheepak/cmp-latex-symbols",
		},
	},

	{
		"saecki/crates.nvim",
		ft = "toml",
		config = function()
			require("plugins.rust-crates-config")
		end,
		event = "BufRead Cargo.toml",
	},
	-- use { "eraserhd/parinfer-rust", ft = "yuck", event = "BufRead" }
	-- use { "elkowar/yuck.vim", ft = "yuck", event = "BufRead" }
	{
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
		event = "BufEnter",
	},
	{
		"akinsho/toggleterm.nvim",
		event = "BufRead",
		config = function()
			require("plugins.term-toggle-config")
		end,
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("plugins.null-ls-config")
		end,
		event = "LspAttach",
	},

	{ "lervag/vimtex", filetype = "tex" },
	{ "b0o/schemastore.nvim", filetype = "json" },
	{
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
		end,
		event = "LspAttach",
	},
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup({})
		end,
		event = "InsertEnter",
	},
	{
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			require("plugins.catpuccin")
		end,
	},
	{
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			require("plugins.hop")
		end,
		event = "BufEnter",
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup({})
		end,
	},
	{
		"jghauser/kitty-runner.nvim",
		config = function()
			require("kitty-runner").setup()
		end,
	},
})
