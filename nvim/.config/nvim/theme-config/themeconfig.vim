"make airline theme nord
let g:airline_theme = 'nord'
let g:material_theme_style = 'ocean'
colorscheme nord
"colorscheme material

if (has('termguicolors'))
  set termguicolors
endif
hi Normal guibg=NONE ctermbg=NONE
lua require'colorizer'.setup()
"airline
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme

" Always show tabs
set showtabline=2
"transparency
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
"24 bit color
set termguicolors

 "Correct RGB escape codes for vim inside tmux
"if !has('nvim') && $TERM ==# 'screen-256color'
  "let &t_8f ="\<Esc>[38;2;%lu;%lu;%lum"  
  "let &t_8b = \<Esc>[48;2;%lu;%lu;%lum
"endif

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
