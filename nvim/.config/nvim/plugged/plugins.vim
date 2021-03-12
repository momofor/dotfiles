call plug#begin('~/.vim/plugged')

    Plug 'jiangmiao/auto-pairs'

    Plug 'vim-airline/vim-airline'

    Plug 'vim-airline/vim-airline-themes'

"Plug 'kaicataldo/material.vim', { 'branch': 'main' } 

    Plug 'preservim/nerdcommenter'

    Plug 'mhinz/vim-startify'

    Plug 'neoclide/coc.nvim', {'branch': 'release'} "Plug 'justinmk/vim-sneak'

    Plug 'arcticicestudio/nord-vim'

    "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    "Plug 'junegunn/fzf.vim'
    "
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    "Plug 'airblade/vim-rooter'

    Plug 'tpope/vim-fugitive'

    "Plug 'frazrepo/vim-rainbow'

    Plug 'airblade/vim-gitgutter/'

    Plug 'tpope/vim-surround'

    "Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

    "Plug 'sheerun/vim-polyglot'

    Plug 'nathanaelkane/vim-indent-guides'
    
    "Plug 'vim-python/python-syntax'

    Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' |
            \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    "Plug 'gabrielelana/vim-markdown'

    "Plug 'liuchengxu/vim-which-key'

    "Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

    Plug 'norcalli/nvim-colorizer.lua'

    "Plug 'puremourning/vimspector'

    "Plug 'szw/vim-maximizer'

    "Plug 'easymotion/vim-easymotion'

    Plug 'OmniSharp/omnisharp-vim'

    "Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

    "Plug 'pangloss/vim-javascript'

    "Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

    "Plug 'preservim/tagbar'

    "Plug 'vimwiki/vimwiki'
    
    "Plug 'dag/vim-fish'

    Plug 'christianchiarulli/nvcode-color-schemes.vim'

    "Plug 'arzg/vim-sh'


    Plug 'nvim-treesitter/nvim-treesitter'   " We recommend updating the parsers on update

    Plug 'nvim-treesitter/playground' 

    "Plug 'mhartington/oceanic-next'
    

    "Plug 'dracula/vim'
    
    "Plug 'lervag/vimtex'

    "Plug 'yggdroot/indentline'
    
    "Plug 'ChristianChiarulli/codi.vim'
    
    "Plug 'posva/vim-vue' 
    
    Plug 'metakirby5/codi.vim'

    "Plug 'kassio/neoterm'


    " React code snippets
    "Plug 'epilande/vim-react-snippets'

    " Ultisnips
    "Plug 'SirVer/ultisnips'
    
    "Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile& yarn compile' }
    "
    "Plug 'rafcamlet/coc-nvim-lua'

    "Plug 'neovim/nvim-lspconfig'

    "Plug 'hrsh7th/nvim-compe'

    "Plug 'nvim-lua/completion-nvim'
    
    "Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }
    call plug#end()

let g:NERDTreeGitStatusConcealBrackets = 1

let g:webdevicons_conceal_nerdtree_brackets = 1

