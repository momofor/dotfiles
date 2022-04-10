local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
end

return require("packer").startup(function(use)
	-- use { "mhinz/vim-startify", event = "VimEnter" }
	use "lewis6991/impatient.nvim"
	use "wbthomason/packer.nvim"

	use "nvim-lua/popup.nvim"
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
	use { "tpope/vim-surround", event = "InsertEnter" }
	use {
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	}
	use "christianchiarulli/nvcode-color-schemes.vim"

	use {
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require "plugins.treesitter-config"
		end,
		requires = {
			{ "nvim-treesitter/nvim-treesitter-textobjects" },
			"nvim-treesitter/playground",
			"nvim-treesitter/nvim-treesitter-refactor",
		},
	}

	use "kyazdani42/nvim-web-devicons"
	use {
		"kyazdani42/nvim-tree.lua",
		config = function()
			require "plugins.nvimtree-config"
		end,
		module = "nvim-web-devicons",
	}
	use { "romgrk/barbar.nvim", event = "BufRead" }
	use "neovim/nvim-lspconfig"

	use { "Raimondi/delimitMate", event = "InsertEnter" }
	-- use {
	-- 	"ray-x/lsp_signature.nvim",
	-- 	config = function()
	-- 		require "plugins.lsp_sig"
	-- 	end,
	-- 	event = "BufEnter",
	-- }
	use { "folke/trouble.nvim", event = "BufEnter" }
	use {
		"onsails/lspkind-nvim",
	}

	use {
		"nvim-lualine/lualine.nvim",
		config = function()
			require "plugins.lualine-config"
		end,
		requires = { "arkav/lualine-lsp-progress" },
		event = "BufRead",
	}

	-- use {"folke/lsp-colors.nvim"}
	use {
		"numToStr/Comment.nvim",
		event = "BufRead",
		config = function()
			require("Comment").setup()
		end,
	}

	-- use "folke/lua-dev.nvim"

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
		"ahmedkhalf/lsp-rooter.nvim",
		config = function()
			require("lsp-rooter").setup()
		end,
		event = "BufEnter",
	}

	-- use {
	-- 	"iamcco/markdown-preview.nvim",
	-- 	run = "cd app && npm install",
	-- 	ft = "markdown",
	-- 	event = "BufRead",
	-- }

	--[[ use {
		"mhartington/formatter.nvim",
		config = function()
			require "formatting"
		end,
		event = "BufRead",
	} ]]

	use {
		"simrat39/rust-tools.nvim",
		ft = { "rust" },
		config = function()
			require "plugins.rust-tools"
		end,
	}

	-- use {"fladson/vim-kitty", event = "BufRead", ft = "config"}
	use {
		"L3MON4D3/LuaSnip",
		requires = "rafamadriz/friendly-snippets",
		config = function()
			require "plugins.luasnip"
		end,
	}
	use {
		"hrsh7th/nvim-cmp",
		config = function()
			require "plugins.cmp-config"
		end,
		requires = {
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-nvim-lsp-signature-help",
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
	use { "eraserhd/parinfer-rust", ft = "yuck", event = "BufRead" }
	use { "elkowar/yuck.vim", ft = "yuck", event = "BufRead" }
	--[[ use {
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require "plugins.dashboard-config"
		end,
	} ]]
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
		event = "BufRead",
	}

	use { "lervag/vimtex", filetype = "tex" }
	--	use {'j-hui/fidget.nvim', config = function() require "fidget".setup{} end}
	use {
		"nvim-neorg/neorg",
		ft = "norg",
		after = "nvim-treesitter", -- You may want to specify Telescope here as well
		config = function()
			require("neorg").setup { load = { ["core.defaults"] = {}, ["core.norg.concealer"] = {} } }
		end,
	}
	use { "b0o/schemastore.nvim", filetype = "json" }
	if packer_bootstrap then
		require("packer").sync()
	end
end)
