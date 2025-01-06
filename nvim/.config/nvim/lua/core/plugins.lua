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
			{ "<leader>e", desc = "document diagnostics" },
			{ "<leader>M", desc = "Man pages" },
			{ "<leader>T", desc = "treesitter keys" },
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
	{ "stevearc/dressing.nvim", dependencies = "nvim-telescope/telescope.nvim", event = "LspAttach" },

	--[[ {
		"NvChad/nvim-colorizer.lua",
		config = function()
			require "plugins.colorizer"
		end,
		event = "BufRead",
	}, ]]

	{
		event = "BufRead",
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"nvim-treesitter/nvim-treesitter-refactor",
			"nvim-treesitter/playground",
			-- "nvim-treesitter/nvim-treesitter-context",
		},
		build = ":TSUpdate",
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

	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
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
		-- config = function()
		-- 	require "plugins.git-signs"
		-- end,
		event = "BufRead",
	},
	{
		"mrcjkb/rustaceanvim",
		config = function()
			require "plugins.rustacean-config"
		end,
		version = "^5", -- Recommended
		ft = { "rust" },
	},

	--[[ {
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
	}, ]]

	{
		"saghen/blink.cmp",
		dependencies = {
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
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},

			{
				"xzbdmw/colorful-menu.nvim",
				opts = { ... },
			},
		},
		build = "cargo build --release",

		config = function()
			require("blink-cmp").setup {
				-- keymap = { preset = "super-tab" },
				keymap = {
					["<Tab>"] = { "select_next", "snippet_forward", "fallback" }, -- snippets
					["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
					["<CR>"] = { "accept", "fallback" },
					["<C-l>"] = { "show", "hide", "fallback" },
					["<C-e>"] = { "cancel", "fallback" },
					["<C-Space>"] = { "show_documentation", "hide_documentation", "fallback" },
					["<C-f>"] = { "scroll_documentation_down", "fallback" },
					["<C-b>"] = { "scroll_documentation_up", "fallback" },
				},
				appearance = {
					use_nvim_cmp_as_default = true,
					-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
					-- Adjusts spacing to ensure icons are aligned
					nerd_font_variant = "mono",
				},
				sources = {
					default = {
						"lazydev",
						"lsp",
						"path",
						"luasnip",
						"buffer",
					},
					providers = {
						lazydev = { name = "LazyDev", module = "lazydev.integrations.blink", score_offset = 100 },
					},
				},

				completion = {
					trigger = { prefetch_on_insert = true },
					accept = { auto_brackets = { enabled = true } },
					menu = {
						border = "rounded",
						scrolloff = 1,
						scrollbar = false,

						draw = {
							columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "source_name" } },
							gap = 1,
							-- treesitter = { "lazydev", "lsp", "luasnip" },
							components = {
								label = {
									text = require("colorful-menu").blink_components_text,
									highlight = require("colorful-menu").blink_components_highlight,
								},
							},
						},
					},
					list = { selection = "auto_insert" },
					documentation = {
						auto_show_delay_ms = 0,
						auto_show = true,
						window = {
							border = "rounded",
						},
					},
				},
				snippets = {
					expand = function(snippet)
						require("luasnip").lsp_expand(snippet)
					end,
					active = function(filter)
						if filter and filter.direction then
							return require("luasnip").jumpable(filter.direction)
						end
						return require("luasnip").in_snippet()
					end,
					jump = function(direction)
						require("luasnip").jump(direction)
					end,
				},

				signature = {
					enabled = true,
					window = { border = "rounded" },
				},
			}
		end,
	},

	{
		"saecki/crates.nvim",
		ft = "toml",
		config = function()
			require("crates").setup {}
		end,
		event = "BufRead Cargo.toml",
	},

	--[[ {
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
		event = "BufEnter",
	}, ]]
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

	{ "lervag/vimtex", ft = "tex" },
	--[[ {
		"iurimateus/luasnip-latex-snippets.nvim",
		-- vimtex isn't required if using treesitter
		requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
		config = function()
			require("luasnip-latex-snippets").setup { use_treesitter = true }
			require("luasnip").config.setup { enable_autosnippets = true }
		end,
	}, ]]
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
		keys = { "<leader>to", desc = "Open kitty runner" },
		ft = { "julia" },
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
	--[[ {
		"nvim-neorg/neorg",
		-- build = ":Neorg sync-parsers",
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
	}, ]]

	{ "SmiteshP/nvim-navic", opts = { highlight = true }, event = "LspAttach" },
	-- {
	-- 	"HiPhish/nvim-ts-rainbow2",
	-- 	dependencies = "nvim-treesitter",
	-- 	event = "BufRead",
	-- 	config = function()
	-- 		require "plugins.ts-rainbow"
	-- 	end,
	-- },
	-- {
	-- 	"mfussenegger/nvim-dap",
	-- 	event = "LspAttach",
	-- 	ft = { "rust", "cpp", "c" },
	-- 	config = function()
	-- 		require "plugins.nvim-dap-config"
	-- 	end,
	-- },
	-- {
	-- 	"rcarriga/nvim-dap-ui",
	-- 	event = "LspAttach",
	-- 	ft = { "rust", "cpp", "c" },
	-- 	dependencies = "nvim-dap",
	-- 	config = function()
	-- 		require "plugins.nvim-dap-ui-config"
	-- 	end,
	-- },
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
		"mikesmithgh/kitty-scrollback.nvim",
		enabled = true,
		lazy = true,
		cmd = { "KittyScrollbackGenerateKittens", "KittyScrollbackCheckHealth" },
		event = { "User KittyScrollbackLaunch" },
		-- version = '*', -- latest stable version, may have breaking changes if major version changed
		-- version = '^2.0.0', -- pin major version, include fixes and features that do not have breaking changes
		config = function()
			require("kitty-scrollback").setup()
		end,
	},
	--[[ {"frabjous/knap",config = function ()
		require("plugins.knap-conf")
	end} ]]
	{
		"stevearc/oil.nvim",
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"stevearc/conform.nvim",
		config = function()
			require "plugins.conform-config"
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},

	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			bigfile = { enabled = true },
			dashboard = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = false },
		},

		keys = {
			{
				"<leader>z",
				function()
					Snacks.zen()
				end,
				desc = "Toggle Zen Mode",
			},
			{
				"<leader>Z",
				function()
					Snacks.zen.zoom()
				end,
				desc = "Toggle Zoom",
			},
			{
				"<leader>.",
				function()
					Snacks.scratch()
				end,
				desc = "Toggle Scratch Buffer",
			},
			{
				"<leader>S",
				function()
					Snacks.scratch.select()
				end,
				desc = "Select Scratch Buffer",
			},
			{
				"<leader>nh",
				function()
					Snacks.notifier.show_history()
				end,
				desc = "Notification History",
			},
			{
				"<leader>bd",
				function()
					Snacks.bufdelete()
				end,
				desc = "Delete Buffer",
			},
			{
				"<leader>cR",
				function()
					Snacks.rename.rename_file()
				end,
				desc = "Rename File",
			},
			{
				"<leader>gB",
				function()
					Snacks.gitbrowse()
				end,
				desc = "Git Browse",
			},
			{
				"<leader>gb",
				function()
					Snacks.git.blame_line()
				end,
				desc = "Git Blame Line",
			},
			{
				"<leader>gf",
				function()
					Snacks.lazygit.log_file()
				end,
				desc = "Lazygit Current File History",
			},
			{
				"<leader>gg",
				function()
					Snacks.lazygit()
				end,
				desc = "Lazygit",
			},
			{
				"<leader>gl",
				function()
					Snacks.lazygit.log()
				end,
				desc = "Lazygit Log (cwd)",
			},
			{
				"<leader>un",
				function()
					Snacks.notifier.hide()
				end,
				desc = "Dismiss All Notifications",
			},
			{
				"<c-/>",
				function()
					Snacks.terminal()
				end,
				desc = "Toggle Terminal",
			},
			{
				"<c-_>",
				function()
					Snacks.terminal()
				end,
				desc = "which_key_ignore",
			},
		},
	},

	--[[ {
		"OXY2DEV/markview.nvim",
		lazy = false, -- Recommended
		-- ft = "markdown" -- If you decide to lazy-load anyway

		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	}, ]]

	--[[ {
		"Thiago4532/mdmath.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		opts = { ... },

		-- The build is already done by default in lazy.nvim, so you don't need
		-- the next line, but you can use the command `:MdMath build` to rebuild
		-- if the build fails for some reason.
		-- build = ':MdMath build'
	}, ]]

	-- Session manager
	--[[ {
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
	}, ]]

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
