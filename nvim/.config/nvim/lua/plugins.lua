local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {"mhinz/vim-startify", event = "VimEnter"}

    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use {
        "nvim-telescope/telescope.nvim",
        config = function() require("tele") end,
		event = "BufRead"
    }
    use {"tpope/vim-surround", event = "InsertEnter"}
    use {
        "norcalli/nvim-colorizer.lua",
        config = function() require"colorizer".setup() end,
        event = "BufRead"
    }
    use "christianchiarulli/nvcode-color-schemes.vim"

    use {
        "nvim-treesitter/nvim-treesitter",
        config = function() require "treesitteru" end,
        requires = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "nvim-treesitter/playground",
            "nvim-treesitter/nvim-treesitter-refactor"
        }
    }

    use "kyazdani42/nvim-web-devicons"
    use {
        "kyazdani42/nvim-tree.lua",
        config = function() require "nvimtree-config" end,
        event = "BufRead"
    }
    use {"romgrk/barbar.nvim", event = "BufEnter"}
    use "neovim/nvim-lspconfig"

    use {"Raimondi/delimitMate", event = "InsertEnter"}
    use {
        "ray-x/lsp_signature.nvim",
        config = function() require "lsp_sig" end,
        event = "BufEnter"
    }
    use {"folke/trouble.nvim", event = "BufRead"}
    use {"onsails/lspkind-nvim", config = function() require "icons" end}

    use {
        "nvim-lualine/lualine.nvim",
        config = function() require "lineu" end,
        event = "BufRead"
    }

    -- use {"folke/lsp-colors.nvim"}
    use {"b3nj5m1n/kommentary", event = "BufRead"}

    -- use "folke/lua-dev.nvim"

    use {
        "jose-elias-alvarez/nvim-lsp-ts-utils",
        requires = "jose-elias-alvarez/null-ls.nvim",

        ft = {
            "javascript", "javascriptreact", "javascript.jsx", "typescript",
            "typescriptreact", "typescript.tsx"
        },
        event = "BufRead"
    }

    use {"nathanaelkane/vim-indent-guides", event = "BufWinEnter"}
    use {
        "lewis6991/gitsigns.nvim",
        config = function() require "git-signs" end,
        event = "BufRead"
    }
    use {
        "ahmedkhalf/lsp-rooter.nvim",
        config = function() require("lsp-rooter").setup() end,
        event = "BufEnter"
    }

    use {
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        ft = "markdown",
        event = "BufRead"
    }

    use {
        "mhartington/formatter.nvim",
        config = function() require "formatting" end,
        event = "BufRead"
    }

    use {
        "simrat39/rust-tools.nvim",
        ft = {"rust"},
        config = function() require "cocoon" end
    }

    -- use {"fladson/vim-kitty", event = "BufRead", ft = "config"}
    use {'L3MON4D3/LuaSnip', requires = "rafamadriz/friendly-snippets"}
    use {
        'hrsh7th/nvim-cmp',
        config = function() require "test-cmp-config" end,
        requires = {
            'saadparwaiz1/cmp_luasnip', 'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-nvim-lua'
        }
    }

    --[[ use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lua' ]]

    use {
        'saecki/crates.nvim',
        ft = "toml",
        config = function() require "crate" end,
        event = "BufRead"
    }
    use {'lervag/vimtex'}

    if packer_bootstrap then require('packer').sync() end
end)
