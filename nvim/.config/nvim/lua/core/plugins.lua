local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system {
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	}
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy").setup {
	"nvim-lua/plenary.nvim",
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		keys = {
			{ "<leader>ff", desc = "find files" },
			{ "<leader>fw", desc = "find word" },
			{ "<leader>fo", desc = "recently opened" },
			{ "<leader>e",  desc = "document diagnostics" },
			{ "<leader>M",  desc = "Man pages" },
			{ "<leader>T",  desc = "treesitter keys" },
			{ "<leader>ds", desc = "document symbols" },
			{ "<leader>ws", desc = "workspace symbols" },
		},
		config = function()
			require "plugins.telescope-config"
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = "nvim-telescope/telescope.nvim",
		keys = {
			{ "<leader>fF", desc = "file browser" },
		},
		config = function()
			vim.keymap.set("n", "<leader>fF", function()
				require("telescope").extensions.file_browser.file_browser()
			end, {})
		end,
	},
	{ "debugloop/telescope-undo.nvim", dependencies = "nvim-telescope/telescope.nvim" },
	{ "stevearc/dressing.nvim",        dependencies = "nvim-telescope/telescope.nvim", event = "LspAttach" },
	{
		"NvChad/nvim-colorizer.lua",
		config = function()
			require "plugins.colorizer"
		end,
		event = "BufRead",
	},
	{
		event = "BufRead",
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"nvim-treesitter/nvim-treesitter-refactor",
			"nvim-treesitter/playground",
			-- "nvim-treesitter/nvim-treesitter-context",
		},
		config = function()
			require "plugins.treesitter-config"
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = { "<leader>t", desc = "NeoTree" },
		config = function()
			require "plugins.neo-tree-config"
		end,
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"romgrk/barbar.nvim",
		event = "BufRead",
	},
	"neovim/nvim-lspconfig",

	{ "Raimondi/delimitMate", event = "InsertEnter" },
	{ "folke/trouble.nvim",   event = "LspAttach" },
	{
		{ "onsails/lspkind-nvim", event = "LspAttach" },
	},

	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require "plugins.lualine-config"
		end,
		event = "BufEnter",
	},

	{
		"numToStr/Comment.nvim",
		event = "BufRead",
		config = function()
			require("Comment").setup()
		end,
	},
	--[[ {
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
	}, ]]

	{
		"lukas-reineke/indent-blankline.nvim",
		--[[ config = function()
			require "plugins.indent-blankline-config"
		end, ]]
		event = "BufRead",
		main = "ibl",
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require "plugins.git-signs"
		end,
		event = "BufRead",
	},

	{
		"simrat39/rust-tools.nvim",
		ft = { "rust" },
		config = function()
			require "plugins.rust-tools"
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		event = "InsertEnter",
		dependencies = { "rafamadriz/friendly-snippets" },
		config = function()
			require "plugins.luasnip"
		end,
		build = "make install_jsregexp",
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require "plugins.cmp-config"
		end,
		event = "InsertEnter",
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
			require "plugins.rust-crates-config"
		end,
		event = "BufRead Cargo.toml",
	},
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
			require "plugins.term-toggle-config"
		end,
	},
	-- {
	-- 	"jose-elias-alvarez/null-ls.nvim",
	-- 	config = function()
	-- 		require "plugins.null-ls-config"
	-- 	end,
	-- 	event = "LspAttach",
	-- },

	-- { "lervag/vimtex", ft = "tex" },
	{
		"iurimateus/luasnip-latex-snippets.nvim",
		-- vimtex isn't required if using treesitter
		requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
		config = function()
			require 'luasnip-latex-snippets'.setup({ use_treesitter = true })
			require("luasnip").config.setup { enable_autosnippets = true }
		end,
	},
	{ "b0o/schemastore.nvim", ft = "json" },
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
			require("nvim-surround").setup {}
		end,
		event = "InsertEnter",
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require "plugins.catpuccin-config"
		end,
	},
	--[[ {
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			require "plugins.hop"
		end,
		event = "BufRead",
	}, ]]
	{
		"j-hui/fidget.nvim",
		config = function()
			require "plugins.fidget-config"
		end,
		branch = "legacy",
		event = "LspAttach",
	},
	{
		"kevinhwang91/nvim-ufo",
		dependencies = "kevinhwang91/promise-async",
		event = "LspAttach",
		config = function()
			require "plugins.ufo-config"
		end,
	},
	{
		"jghauser/kitty-runner.nvim",
		config = function()
			require("kitty-runner").setup()
		end,
		ft = { "julia" }
	},
	{
		"mrcjkb/haskell-tools.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim", -- optional
		},
		config = function()
			require "plugins.haskell-tools"
		end,
		ft = { "haskell" },
	},
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		opts = {
			load = {
				["core.defaults"] = {}, -- Loads default behaviour
				["core.concealer"] = {}, -- Adds pretty icons to your documents
				["core.dirman"] = { -- Manages Neorg workspaces
					config = {
						workspaces = {
							notes = "~/notes",
						},
					},
				},
			},
		},
		dependencies = { { "nvim-lua/plenary.nvim" } },
		ft = "norg",
	},
	{ "folke/neodev.nvim",    ft = "lua" },

	{ "SmiteshP/nvim-navic",  opts = { highlight = true }, event = "LspAttach" },
	{
		"HiPhish/nvim-ts-rainbow2",
		dependencies = "nvim-treesitter",
		event = "BufRead",
		config = function()
			require "plugins.ts-rainbow"
		end,
	},
	{
		"mfussenegger/nvim-dap",
		event = "LspAttach",
		ft = { "rust", "cpp", "c" },
		config = function()
			require "plugins.nvim-dap-config"
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		event = "LspAttach",
		ft = { "rust", "cpp", "c" },
		dependencies = "nvim-dap",
		config = function()
			require "plugins.nvim-dap-ui-config"
		end,
	},
	{ "sindrets/diffview.nvim", event = "BufEnter" },
	{
		"folke/flash.nvim",
		opts = {
			event = "VeryLazy",

			modes = {
				char = {
					jump_labels = true,
				},
			},
		},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{ "t" },
			{ "f" },
			{ "/" },
		},
	},
	{
		'mikesmithgh/kitty-scrollback.nvim',
		enabled = true,
		lazy = true,
		cmd = { 'KittyScrollbackGenerateKittens', 'KittyScrollbackCheckHealth' },
		event = { 'User KittyScrollbackLaunch' },
		-- version = '*', -- latest stable version, may have breaking changes if major version changed
		-- version = '^2.0.0', -- pin major version, include fixes and features that do not have breaking changes
		config = function()
			require('kitty-scrollback').setup()
		end,
	},
	{"frabjous/knap",config = function ()
		require("plugins.knap-conf")
	end}
	--[[ {
		"epwalsh/obsidian.nvim",
		lazy = true,
		event = { "BufReadPre " },
		dependencies = {
			-- Required.
			"nvim-lua/plenary.nvim",
		},
		opts = {
			dir = "~/notes/studying/studying/", -- no need to call 'vim.fn.expand' here
		},
	} ,]]
}
