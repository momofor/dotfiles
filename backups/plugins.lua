local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " ..
                install_path)
    execute "packadd packer.nvim"
end

local packer_ok, packer = pcall(require, "packer")
if not packer_ok then return end

packer.init {
    -- compile_path = vim.fn.stdpath('data')..'/site/pack/loader/start/packer.nvim/plugin/packer_compiled.vim',
    compile_path = require("packer.util").join_paths(vim.fn.stdpath("config"),
                                                     "plugin",
                                                     "packer_compiled.vim"),
    git = {clone_timeout = 300},
    display = {
        open_fn = function()
            return require("packer.util").float {border = "single"}
        end
    }
}

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua
return require("packer").startup(function(use)
    use "mhinz/vim-startify"

    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use "tpope/vim-surround"
    use {
        "norcalli/nvim-colorizer.lua",
        config = function() require"colorizer".setup() end,
        event = "BufWinEnter"
    }
    use "christianchiarulli/nvcode-color-schemes.vim"

    use {
        "nvim-treesitter/nvim-treesitter",
        config = function() require "treesitteru" end
    }
    use "nvim-treesitter/nvim-treesitter-textobjects"
    use "nvim-treesitter/playground"
    use "nvim-treesitter/nvim-treesitter-refactor"
    use "kyazdani42/nvim-web-devicons"
    use {
        "kyazdani42/nvim-tree.lua",
        config = function() require "nvimtree-config" end
    }
    use {"romgrk/barbar.nvim", event = "BufEnter"}
    use "neovim/nvim-lspconfig"

    use "glepnir/lspsaga.nvim"
    use "Raimondi/delimitMate"
    --[[ use {
        "folke/which-key.nvim",
        config = function() require "whichWho" end,
        event = "BufWinEnter"
    } ]]
    use {"ray-x/lsp_signature.nvim", config = function() require "lsp_sig" end}
    use "folke/trouble.nvim"
    use {"onsails/lspkind-nvim", config = function() require "icons" end}

    use {"hoob3rt/lualine.nvim", config = function() require "lineu" end}

    use "folke/lsp-colors.nvim"
    use "b3nj5m1n/kommentary"
    -- use "folke/lua-dev.nvim"

    use {
        "jose-elias-alvarez/nvim-lsp-ts-utils",
        requires = "jose-elias-alvarez/null-ls.nvim",

        ft = {
            "javascript", "javascriptreact", "javascript.jsx", "typescript",
            "typescriptreact", "typescript.tsx"
        }
    }

    use "nathanaelkane/vim-indent-guides"
    use {
        "lewis6991/gitsigns.nvim",
        config = function() require "git-signs" end,
        event = "BufRead"
    }
    use {
        "ahmedkhalf/lsp-rooter.nvim",
        event = "BufRead",
        config = function() require("lsp-rooter").setup() end
    }

    --[[ use {
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        ft = "markdown"
    } ]]

    use {"mhartington/formatter.nvim"}
    use {
        "simrat39/rust-tools.nvim",
        ft = {"rust"},
        config = function() require "cocoon" end
    }

    -- use {"fladson/vim-kitty", event = "BufRead", ft = "config"}
    use {'hrsh7th/nvim-cmp', config = function() require "test-cmp-config" end}
    use "hrsh7th/vim-vsnip"
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use {
        'saecki/crates.nvim',
        ft = "toml",
        config = function() require "crate" end
    }
    use 'lervag/vimtex'
end)
