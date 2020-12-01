function MyCustomHighlights()
hi semshiSelf            ctermfg=red guifg=#88C0D0 cterm=bold
hi semshiLocal           ctermfg=209 guifg=#88C0D0
hi semshiGlobal          ctermfg=214 guifg=#fff000 cterm=bold cterm=underline
hi semshiImported        ctermfg=214 guifg=#5E81AC
hi semshiParameter       ctermfg=75  guifg=#8FBCBB
hi semshiParameterUnused ctermfg=117 guifg=#d70000 cterm=underline gui=underline
hi semshiFree            ctermfg=218 guifg=#ffafd7
hi semshiBuiltin         ctermfg=207 guifg=#88C0D0
hi semshiAttribute       ctermfg=49  guifg=red
hi semshiUnresolved      ctermfg=226 guifg=#EBCB8B cterm=underline gui=underline
"hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f

hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
sign define semshiError text=E> texthl=semshiErrorSign
endfunction
autocmd FileType python call MyCustomHighlights()
let g:semshi#excluded_hl_groups=[]
let g:semshi#mark_selected_nodes=0
