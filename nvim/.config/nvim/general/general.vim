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

"if plugin is missing
filetype plugin on
" set leader key
let g:mapleader = "\<Space>"
set clipboard =unnamedplus 
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set t_Co=256                            " Support 256 colors

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
"nerdtree minimal ui 
let g:NERDTreeMinimalUI = 1
"activate prettier 
"tmux
"concieling
set conceallevel=1
"syntax highlighting for rasi files
au BufReadPost *.rasi set syntax=css
"ctags 
set tags+=tags;$HOME
"limit column
"set colorcolumn =100


"codi 
" Change the color
"highlight CodiVirtualText guifg=cyan

"let g:codi#virtual_text_prefix = "❯ "


""
"let g:codi#aliases = {
                   "\ 'javascript.jsx': 'javascript',
                   "\ }

"codi 
"" Change the color
 "highlight CodiVirtualText guifg=cyan

 "let g:codi#virtual_text_prefix = "❯ "

 "let g:codi#aliases = {
                    "\ 'javascript.jsx': 'javascript',
                                       "\ }
"let mapleader=' '

"let NERDTreeQuitOnOpen=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#framemode=':t'

" auto-format
"autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
"autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
"autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
" Use completion-nvim in every buffer
"autocmd BufEnter * lua require'completion'.on_attach()
"autocmd BufEnter * ts require'completion'.on_attach()


"inoremap <silent><expr> <C-Space> compe#complete()
"inoremap <silent><expr> <CR>      compe#confirm('<CR>')
"inoremap <silent><expr> <C-e>     compe#close('<C-e>')
"inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
"inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
"set completeopt=menuone,noinsert,noselect
