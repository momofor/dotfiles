local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end


return require('packer').startup(function(use)
    use 'jiangmiao/auto-pairs'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'arcticicestudio/nord-vim'
    use 'preservim/nerdcommenter'
    use 'mhinz/vim-startify'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter/'
    use 'tpope/vim-surround'
    use 'nathanaelkane/vim-indent-guides'
    use 'norcalli/nvim-colorizer.lua'
    use 'OmniSharp/omnisharp-vim'
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'nvim-treesitter/nvim-treesitter' -- We recommend updating the parsers on update
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'nvim-treesitter/playground'
    use 'metakirby5/codi.vim'

    --use {
        --'preservim/nerdtree' ,
        --requires = {
            --'Xuyuanp/nerdtree-git-plugin' ,
            --'ryanoasis/vim-devicons' ,
            --'tiagofumo/vim-nerdtree-syntax-highlight'
        --}
    --}
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    use 'rafcamlet/coc-nvim-lua'

    use {'neoclide/coc.nvim', branch = 'release' }
    use {'mattn/vim-gist' , requires = 'mattn/webapi-vim' }
    use 'romgrk/barbar.nvim'
    use 'tversteeg/registers.nvim'
    --use 'p00f/nvim-ts-rainbow'

    --use 'neovim/nvim-lspconfig'
    --use 'hrsh7th/nvim-compe'
    --use 'glepnir/lspsaga.nvim'
    --use {'tzachar/compe-tabnine' , run = './install.sh' , opt = true}
    --use 'mattn/emmet-vim'
end)

