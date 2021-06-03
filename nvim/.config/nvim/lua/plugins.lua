local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end


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
    use 'norcalli/nvim-colorizer.lua'

    --use 'OmniSharp/omnisharp-vim'
    --
    use 'christianchiarulli/nvcode-color-schemes.vim'

    use 'nvim-treesitter/nvim-treesitter' -- We recommend updating the parsers on update
    --use 'nvim-treesitter/nvim-treesitter-textobjects'
    --
    use 'nvim-treesitter/playground'

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
    -- use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    --use 'rafcamlet/coc-nvim-lua'

    -- use {'neoclide/coc.nvim', branch = 'release' }

    use {'mattn/vim-gist' , requires = 'mattn/webapi-vim' }
    use 'romgrk/barbar.nvim'
    --use 'tversteeg/registers.nvim'
    --use 'dag/vim-fish'
    --
    --use 'lervag/vimtex'
    --
    --use 'sindrets/diffview.nvim'
    --
    use 'stevearc/vim-arduino'
    use 'jpalardy/vim-slime'

    --use 'p00f/nvim-ts-rainbow'

     use 'neovim/nvim-lspconfig'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/nvim-compe'
    use 'glepnir/lspsaga.nvim'
    use 'Raimondi/delimitMate'
    use 'folke/which-key.nvim'
    use 'ray-x/lsp_signature.nvim'
    use 'folke/trouble.nvim'
    use 'onsails/lspkind-nvim'
    --use {'tzachar/compe-tabnine' , run = './install.sh'}

    --use 'famiu/feline.nvim'

    use {
        'hoob3rt/lualine.nvim',
    }
    use 'folke/lsp-colors.nvim'
    -- use 'ahmedkhalf/lsp-rooter.nvim'
    use 'b3nj5m1n/kommentary'
    use 'folke/lua-dev.nvim'
    use 'OmniSharp/omnisharp-vim'
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'
    use 'nathanaelkane/vim-indent-guides'
    use 'Pocco81/AbbrevMan.nvim'
    --use 'shaunsingh/nord.nvim'
    --use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}}
    --use 'mattn/emmet-vim'
end)

