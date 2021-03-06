" source $HOME/.config/nvim/theme-config/nord-treesitter.vim
source $HOME/.config/nvim/lua/init.lua
colorscheme nord-treesitter
" let g:slime_target = "tmux"
" let g:arduino_use_slime = 1
" let g:slime_default_config = {"socket_name": "default", "target_pane": ":.1"}

inoremap <silent><expr> <CR>      compe#confirm({ 'keys': "\<Plug>delimitMateCR", 'mode': '' })
inoremap <silent><expr> <CR>      compe#confirm({ 'keys': "\<Plug>delimitMateCR", 'mode': '' })
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

