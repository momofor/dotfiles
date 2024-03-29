vim.cmd [[packadd packer.nvim]]
return require("packer").startup {
	function(use)
		use "lewis6991/impatient.nvim"
		use "wbthomason/packer.nvim"

		use { "nvim-lua/plenary.nvim", module = "plenary" }
		use {
			"nvim-telescope/telescope.nvim",
			module = "telescope",
			cmd = "Telescope",
			config = function()
				require "plugins.telescope-config"
			end,
		}
		use { "nvim-telescope/telescope-file-browser.nvim", requires = "nvim-telescope/telescope.nvim" }
		use { "stevearc/dressing.nvim", requires = "nvim-telescope/telescope.nvim" }
		-- use { "tpope/vim-surround", event = "InsertEnter" }
		use {
			"NvChad/nvim-colorizer.lua",
			config = function()
				require "plugins.colorizer"
			end,
		}
		-- use "christianchiarulli/nvcode-color-schemes.vim"

		use {
			"nvim-treesitter/nvim-treesitter",
			requires = {
				"nvim-treesitter/nvim-treesitter-textobjects",
				"nvim-treesitter/nvim-treesitter-refactor",
				"nvim-treesitter/playground",
				"nvim-treesitter/nvim-treesitter-context",
			},
			config = function()
				require "plugins.treesitter-config"
			end,
		}
		-- 	after = {"nvim-treesitter/nvim-treesitter"}}

		use "kyazdani42/nvim-web-devicons"
		use {
			"nvim-tree/nvim-tree.lua",
			requires = {
				"nvim-tree/nvim-web-devicons", -- optional, for file icons
			},
			config = function()
				require "plugins.nvimtree-config"
			end,
			tag = "nightly", -- optional, updated every week. (see issue #1193)
		}
		use { "romgrk/barbar.nvim", event = "BufRead" }
		use "neovim/nvim-lspconfig"

		use { "Raimondi/delimitMate", event = "InsertEnter" }
		use { "folke/trouble.nvim", event = "BufEnter" }
		use {
			"onsails/lspkind-nvim",
		}

		use {
			"nvim-lualine/lualine.nvim",
			config = function()
				require "plugins.lualine-config"
			end,
			event = "BufRead",
		}

		use {
			"numToStr/Comment.nvim",
			event = "BufRead",
			config = function()
				require("Comment").setup()
			end,
		}

		use {
			"jose-elias-alvarez/nvim-lsp-ts-utils",
			requires = "jose-elias-alvarez/null-ls.nvim",

			ft = {
				"javascript",
				"javascriptreact",
				"javascript.jsx",
				"typescript",
				"typescriptreact",
				"typescript.tsx",
			},
			event = "BufRead",
		}

		use {
			"lukas-reineke/indent-blankline.nvim",
			config = function()
				require "plugins.indent-blankline-config"
			end,
			event = "BufRead",
		}
		use {
			"lewis6991/gitsigns.nvim",
			config = function()
				require "plugins.git-signs"
			end,
			event = "BufRead",
		}

		use {
			"simrat39/rust-tools.nvim",
			ft = { "rust" },
			config = function()
				require "plugins.rust-tools"
			end,
		}
		use "rafamadriz/friendly-snippets"
		use {
			"L3MON4D3/LuaSnip",
			requires = { "rafamadriz/friendly-snippets" },
			config = function()
				require "plugins.luasnip"
			end,
			run = "make install_jsregexp",
		}
		use {
			"hrsh7th/nvim-cmp",
			config = function()
				require "plugins.cmp-config"
			end,
			after = "nvim-lspconfig",
			requires = {
				"saadparwaiz1/cmp_luasnip",
				"hrsh7th/cmp-cmdline",
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-nvim-lua",
				"hrsh7th/cmp-nvim-lsp-signature-help",
				"kdheepak/cmp-latex-symbols",
			},
		}

		use {
			"saecki/crates.nvim",
			ft = "toml",
			config = function()
				require "plugins.rust-crates-config"
			end,
			event = "BufRead Cargo.toml",
		}
		-- use { "eraserhd/parinfer-rust", ft = "yuck", event = "BufRead" }
		-- use { "elkowar/yuck.vim", ft = "yuck", event = "BufRead" }
		use {
			"goolord/alpha-nvim",
			requires = { "kyazdani42/nvim-web-devicons" },
			config = function()
				require("alpha").setup(require("alpha.themes.dashboard").config)
			end,
			event = "BufEnter",
		}
		use {
			"akinsho/toggleterm.nvim",
			event = "BufRead",
			config = function()
				require "plugins.term-toggle-config"
			end,
		}
		use {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require "plugins.null-ls-config"
			end,
			event = "LspAttach",
		}

		use { "lervag/vimtex", filetype = "tex" }
		use { "b0o/schemastore.nvim", filetype = "json" }
		use {
			"smjonas/inc-rename.nvim",
			config = function()
				require("inc_rename").setup()
			end,
			event = "LspAttach",
		}
		use {
			"kylechui/nvim-surround",
			config = function()
				require("nvim-surround").setup {}
			end,
			event = "InsertEnter",
		}
		use {
			"catppuccin/nvim",
			as = "catppuccin",
			config = function()
				require "plugins.catpuccin"
			end,
		}
		use {
			"phaazon/hop.nvim",
			branch = "v2", -- optional but strongly recommended
			config = function()
				require "plugins.hop"
			end,
			event = "BufEnter",
		}
		use {
			"williamboman/mason.nvim",
			config = function()
				require("mason").setup()
			end,
		}
		use {
			"j-hui/fidget.nvim",
			config = function()
				require("fidget").setup {}
			end,
		}
		use {
			"jghauser/kitty-runner.nvim",
			config = function()
				require("kitty-runner").setup()
			end,
		}
	end,
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float { border = "single" }
			end,
		},
	},
}
