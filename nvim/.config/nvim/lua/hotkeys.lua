local utils = require("_utils")
--git fugitive
utils.map('' , '<leader>g' , ':Git<cr>' , {})
-- This is the default extra key bindings
--noremap <leader>r :Rg<CR>
--tag bar

--utils.map('n', '<leader>m' , ':Marks<CR>' , {noremap = true})
utils.map('n', '<leader>n' , ':nohlsearch<CR>' , {noremap = true})

utils.map('n' , '<leader>cmm' , ':CocList marketplace<CR>' , {noremap = true})
utils.map('n' , '<leader>co' , ':CocList outline<CR>' , {noremap = true})
utils.map('n' , '<leader>r' , ':CocCommand document.renameCurrentWord<CR> ' , {noremap = true})
utils.map('n' , '<leader>Tb' , ':TagbarToggle<CR>' , {noremap = true})
--Git
utils.map('' , '<leader>gh' , ':GitGutterLineHighlightsToggle<CR>' , {})
utils.map('n' , '<leader>n' , ':nohlsearch<CR>' , {noremap = true})
-- Nerdcommenter
utils.map('n' , '<C-_>' , '<plug>NERDCommenterToggle' , {})
--NERDTree
utils.map('n' , '<leader>t' , ':NERDTreeToggle <cr>' , {})
--Prettier
utils.map('n' , '<leader>ff' , ':Prettier<CR>' , {noremap = true})
--Tabs
utils.map('n' , '<leader>1' , ':bp <cr>' , {})
utils.map('n' , '<leader>2' , ':bn <cr>' , {})
utils.map('n' , '<leader>w' , ':bd <cr>' , {})

-- Better nav for omnicomplete
utils.map('i' , '<c-j> ' , [[("\<C-n>")]] , {noremap = true , expr = true})
utils.map('i' , '<c-k> ' , [[\<C-p>]] , {noremap = true , expr = true})


-- Use alt + hjkl to resize windows
utils.map('n' , '<leader>j' , ':resize -2<CR>' , {noremap = true})
utils.map('n' , '<leader>k' , ':resize +2<CR>' , {noremap = true})
utils.map('n' , '<leader>h' , ':vertical resize -2<CR>' , {noremap = true})
utils.map('n' , '<leader>l' , ':vertical resize +2<CR>' , {noremap = true})

-- I hate escape more than anything else
utils.map('i' , 'jk' , '<Esc>' , {noremap = true})
utils.map('i' , 'kj' , '<Esc>' , {noremap = true})
-- Easy CAPS
utils.map('i' , '<c-u>' , '<ESC>viwUi' , {noremap = true})
utils.map('n' , '<c-u>' , 'viwU<Esc>' , {noremap = true})

-- TAB in general mode will move to text buffer
utils.map('n' , '<TAB>' , ':bnext<CR>' , {noremap = true})
-- SHIFT-TAB will go back
utils.map('n' , '<S-TAB>' , ':bprevious<CR>' , {noremap = true})

-- Alternate way to save
utils.map('n' , '<C-s>' , ':w<CR>' , {noremap = true})
-- Alternate way to quit
utils.map('n' , '<C-Q>' , ':wq!<CR>' , {noremap = true})
-- Use control-c instead of escape
utils.map('n' , '<C-c>' , '<Esc>' , {})

-- Better window navigation
utils.map('n' , '<C-h>' , '<C-w>h' , {})
utils.map('n' , '<C-j>' , '<C-w>j' , {})
utils.map('n' , '<C-k>' , '<C-w>k' , {})
utils.map('n' , '<C-l>' , '<C-w>l' , {})

utils.map('n' , '<Leader>o' , 'o<Esc>^Da' , {noremap = true})
utils.map('n' , '<Leader>O' , 'O<Esc>^Da' , {noremap = true})
--actoin
utils.map('n' , '<leader>z' , ':CocAction<CR>' , {noremap = true})
--color
utils.map('n' , '<leader>cll' , ':CocCommand editor.action.pickColor<CR>' , {noremap = true})
utils.map('n' , ';' , ':' , {noremap = true})
utils.map('i' , '<Tab>' , [[pumvisible() ? "\<C-n>" : "\<TAB>"]] , {expr = true} )
-- folding
utils.map('' , '<Leader>F' , "'<,'>fold ")
