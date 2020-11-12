call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'justinmk/vim-sneak'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-fugitive'
"Plug 'frazrepo/vim-rainbow'
Plug 'airblade/vim-gitgutter/'
Plug 'tpope/vim-surround'
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'sheerun/vim-polyglot'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'SirVer/ultisnips'
Plug 'vim-python/python-syntax'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' |
            \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'gabrielelana/vim-markdown'
Plug 'liuchengxu/vim-which-key'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'norcalli/nvim-colorizer.lua'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'easymotion/vim-easymotion'
Plug 'OmniSharp/omnisharp-vim'
call plug#end()

let g:NERDTreeGitStatusConcealBrackets = 1

let g:webdevicons_conceal_nerdtree_brackets = 1

