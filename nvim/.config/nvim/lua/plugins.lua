local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end


local packer_ok, packer = pcall(require, "packer")
if not packer_ok then return end

packer.init {
    -- compile_path = vim.fn.stdpath('data')..'/site/pack/loader/start/packer.nvim/plugin/packer_compiled.vim',
    compile_path = require("packer.util").join_paths(vim.fn.stdpath('config'),
                                                     'plugin',
                                                     'packer_compiled.vim'),
    git = {clone_timeout = 300},
    display = {
        open_fn = function()
            return require("packer.util").float {border = "single"}
        end
    }
}

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua


return require('packer').startup(function(use)
    --use 'jiangmiao/auto-pairs'
    --
    --use 'vim-airline/vim-airline'
    --use 'vim-airline/vim-airline-themes'
    --use 'preservim/nerdcommenter'
    use 'mhinz/vim-startify'

    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    --use 'tpope/vim-fugitive'
    -- use 'airblade/vim-gitgutter/'
    use 'tpope/vim-surround'
    use {'norcalli/nvim-colorizer.lua', config = function () require'colorizer'.setup() end ,
			event = "BufWinEnter"}

    --use 'OmniSharp/omnisharp-vim'
    --
    use 'christianchiarulli/nvcode-color-schemes.vim'

    use {'nvim-treesitter/nvim-treesitter', config = function () require "treesitteru" end}
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'nvim-treesitter/playground'
	use 'nvim-treesitter/nvim-treesitter-refactor'

    --use 'metakirby5/codi.vim'

    --use {
        --'preservim/nerdtree' ,
        --requires = {
            --'Xuyuanp/nerdtree-git-plugin' ,
            --'ryanoasis/vim-devicons' ,
            --'tiagofumo/vim-nerdtree-syntax-highlight'
        --}
    --}
    --
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    --use 'rafcamlet/coc-nvim-lua'

    -- use {'neoclide/coc.nvim', branch = 'release' }

    -- use {'mattn/vim-gist' , requires = 'mattn/webapi-vim' }
    use 'romgrk/barbar.nvim'
    --use 'tversteeg/registers.nvim'
    --use 'dag/vim-fish'
    --
    --use 'lervag/vimtex'
    --
    --use 'sindrets/diffview.nvim'
    --
    -- use 'stevearc/vim-arduino'
    -- use 'jpalardy/vim-slime'

    --use 'p00f/nvim-ts-rainbow'

     use 'neovim/nvim-lspconfig'
    use {'hrsh7th/vim-vsnip', event = "InsertEnter"}

	use {
		"hrsh7th/nvim-compe",
		event = "InsertEnter",
		config = function()
			require "compe-config"
		end,
	}
    use 'glepnir/lspsaga.nvim'
    use 'Raimondi/delimitMate'
	use {
		"folke/which-key.nvim",
		config = function()
			require "whichWho"
		end,
		event = "BufWinEnter",
	}
    use {'ray-x/lsp_signature.nvim',
			config = function () require "lsp_sig" end}
    use 'folke/trouble.nvim'
    use {'onsails/lspkind-nvim', config = function() require "icons" end}
    --use {'tzachar/compe-tabnine' , run = './install.sh'}

    --use 'famiu/feline.nvim'

    use {'hoob3rt/lualine.nvim', config = function () require "lineu" end}

    use 'folke/lsp-colors.nvim'
    -- use 'ahmedkhalf/lsp-rooter.nvim'
    use 'b3nj5m1n/kommentary'
    use 'folke/lua-dev.nvim'
    -- use 'OmniSharp/omnisharp-vim'
	--typescript
    --[[ use 'jose-elias-alvarez/nvim-lsp-ts-utils'
    use 'jose-elias-alvarez/null-ls.nvim' ]]
	use {'jose-elias-alvarez/null-ls.nvim',
		ft = {
            "javascript", "javascriptreact", "javascript.jsx", "typescript",
            "typescriptreact", "typescript.tsx"
		}}

    use {
        "jose-elias-alvarez/nvim-lsp-ts-utils",
        ft = {
            "javascript", "javascriptreact", "javascript.jsx", "typescript",
            "typescriptreact", "typescript.tsx"
        }
    }

    use 'nathanaelkane/vim-indent-guides'
    -- use 'Pocco81/AbbrevMan.nvim'
    -- use 'rmagatti/goto-preview'
    -- use 'mhartington/formatter.nvim'
	use {'lewis6991/gitsigns.nvim', config = function () require "git-signs" end ,
			event = "BufRead"}
    -- use 'shaunsingh/nord.nvim'
	-- use {'sakhnik/nvim-gdb' , run = ':!./install.sh' }
	use {'andweeb/presence.nvim', event = "BufRead"}

    use {
        "ahmedkhalf/lsp-rooter.nvim",
        event = "BufRead",
        config = function()
            require("lsp-rooter").setup()
        end
    }

    use {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install',
        ft = 'markdown',
    }

	-- use 'pwntester/octo.nvim'

    --use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}}
    --use 'mattn/emmet-vim'
end)

