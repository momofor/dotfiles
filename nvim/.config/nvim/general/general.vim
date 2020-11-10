"custom startify header
"hello boys
    let g:startify_custom_header = [
\ ' ███▄ ▄███▓ ▒█████   ███▄ ▄███▓ ▒█████    █████▒ ▒█████   ██▀███ ', 
\ '▓██▒▀█▀ ██▒▒██▒  ██▒▓██▒▀█▀ ██▒▒██▒  ██▒▓██   ▒ ▒██▒  ██▒▓██ ▒ ██▒ ',
\ '▓██    ▓██░▒██░  ██▒▓██    ▓██░▒██░  ██▒▒████ ░ ▒██░  ██▒▓██ ░▄█ ▒ ',
\ '▒██    ▒██ ▒██   ██░▒██    ▒██ ▒██   ██░░▓█▒  ░ ▒██   ██░▒██▀▀█▄   ',
\ '▒██▒   ░██▒░ ████▓▒░▒██▒   ░██▒░ ████▓▒░░▒█░    ░ ████▓▒░░██▓ ▒██▒ ',
\ '░ ▒░   ░  ░░ ▒░▒░▒░ ░ ▒░   ░  ░░ ▒░▒░▒░  ▒ ░    ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░ ',
\ '░  ░      ░  ░ ▒ ▒░ ░  ░      ░  ░ ▒ ▒░  ░        ░ ▒ ▒░   ░▒ ░ ▒░ ',
\ '░      ░   ░ ░ ░ ▒  ░      ░   ░ ░ ░ ▒   ░ ░    ░ ░ ░ ▒    ░░   ░  ',
\ '      ░       ░ ░         ░       ░ ░              ░ ░     ░      ',
\ ]

"auto start  nerdtree with startify
    autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   NERDTree
                \ |   wincmd w
                \ | endif

set number relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=eol,indent,start 
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
filetype plugin on
syntax on
" set leader key
let g:mapleader = "\<Space>"

set hidden                              " Required to keep multiple buffers open multiple buffers
"set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
"enabling grip
let vim_markdown_preview_github=1
"enable tab highlighting
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#3B4252 ctermbg=3 "nord1
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#434C5E ctermbg=4 "nord2 
"add transparency 
"hi Normal guibg=NONE ctermbg=NONE closes as it doesn't work
"rainbow
let g:rainbow_active = 1
"nerdfonts for nerdtree git 
let g:NERDTreeGitStatusUseNerdFonts = 1
"close nerdtree if its the last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
