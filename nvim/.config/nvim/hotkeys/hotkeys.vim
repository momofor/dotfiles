"leaderkey
let mapleader=' '
"git fugitive 
map <leader>g :Git<cr> 
"fzf
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
map <leader>f :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>
nnoremap <leader>cmm :CocList marketplace<CR>
" Nerdcommenter
"
nmap <C-_> <plug>NERDCommenterToggle

"NERDTree
let NERDTreeQuitOnOpen=1
nmap <leader>t :NERDTreeToggle <cr>
"Prettier 
nnoremap <leader>ff :Prettier<CR>
"Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#framemode=':t'
nmap <leader>1 :bp <cr>
nmap <leader>2 :bn <cr>
nmap <C-w> :bd <cr>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <leader>j    :resize -2<CR>
nnoremap <leader>k    :resize +2<CR>
nnoremap <leader>h    :vertical resize -2<CR>
nnoremap <leader>l    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
