--'leaderkey
--git fugitive
vim.api.nvim_set_keymap('' , '<leader>g' , ':Git<cr>' , {})
-- This is the default extra key bindings
--noremap <leader>r :Rg<CR>
--tag bar

vim.api.nvim_set_keymap('n', '<leader>T' , ':Tags<CR>' , {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>m' , ':Marks<CR>' , {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>n' , ':nohlsearch<CR>' , {noremap = true})

vim.api.nvim_set_keymap('n' , '<leader>cmm' , ':CocList marketplace<CR>' , {noremap = true})
vim.api.nvim_set_keymap('n' , '<leader>co' , ':CocList outline<CR>' , {noremap = true})
vim.api.nvim_set_keymap('n' , '<leader>r' , ':CocCommand document.renameCurrentWord<CR> ' , {noremap = true})
vim.api.nvim_set_keymap('n' , '<leader>Tb' , ':TagbarToggle<CR>' , {noremap = true})
--Git
vim.api.nvim_set_keymap('' , '<leader>gh' , ':GitGutterLineHighlightsToggle<CR>' , {})
vim.api.nvim_set_keymap('n' , '<leader>n' , ':nohlsearch<CR>' , {noremap = true})
-- Nerdcommenter
vim.api.nvim_set_keymap('n' , '<C-_>' , '<plug>NERDCommenterToggle' , {})
--NERDTree
vim.api.nvim_set_keymap('n' , '<leader>t' , ':NERDTreeToggle <cr>' , {})
--Prettier
vim.api.nvim_set_keymap('n' , '<leader>ff' , ':Prettier<CR>' , {noremap = true})
--Tabs
vim.api.nvim_set_keymap('n' , '<leader>1' , ':bp <cr>' , {})
vim.api.nvim_set_keymap('n' , '<leader>2' , ':bn <cr>' , {})
vim.api.nvim_set_keymap('n' , '<leader>w' , ':bd <cr>' , {})

-- Better nav for omnicomplete
vim.api.nvim_set_keymap('i' , '<c-j> ' , [[("\<C-n>")]] , {noremap = true , expr = true})
vim.api.nvim_set_keymap('i' , '<c-k> ' , [[("\<C-p>")]] , {noremap = true , expr = true})

-- Use alt + hjkl to resize windows
vim.api.nvim_set_keymap('n' , '<leader>j' , ':resize -2<CR>' , {noremap = true})
vim.api.nvim_set_keymap('n' , '<leader>k' , ':resize +2<CR>' , {noremap = true})
vim.api.nvim_set_keymap('n' , '<leader>h' , ':vertical resize -2<CR>' , {noremap = true})
vim.api.nvim_set_keymap('n' , '<leader>l' , ':vertical resize +2<CR>' , {noremap = true})

-- I hate escape more than anything else
vim.api.nvim_set_keymap('i' , 'jk' , '<Esc>' , {noremap = true})
vim.api.nvim_set_keymap('i' , 'kj' , '<Esc>' , {noremap = true})
-- Easy CAPS
vim.api.nvim_set_keymap('i' , '<c-u>' , '<ESC>viwUi' , {noremap = true})
vim.api.nvim_set_keymap('n' , '<c-u>' , 'viwU<Esc>' , {noremap = true})

-- TAB in general mode will move to text buffer
vim.api.nvim_set_keymap('n' , '<TAB>' , ':bnext<CR>' , {noremap = true})
-- SHIFT-TAB will go back
vim.api.nvim_set_keymap('n' , '<S-TAB>' , ':bprevious<CR>' , {noremap = true})

-- Alternate way to save
vim.api.nvim_set_keymap('n' , '<C-s>' , ':w<CR>' , {noremap = true})
-- Alternate way to quit
vim.api.nvim_set_keymap('n' , '<C-Q>' , ':wq!<CR>' , {noremap = true})
-- Use control-c instead of escape
vim.api.nvim_set_keymap('n' , '<C-c>' , '<Esc>' , {})

-- Better window navigation
vim.api.nvim_set_keymap('n' , '<C-h>' , '<C-w>h' , {})
vim.api.nvim_set_keymap('n' , '<C-j>' , '<C-w>j' , {})
vim.api.nvim_set_keymap('n' , '<C-k>' , '<C-w>k' , {})
vim.api.nvim_set_keymap('n' , '<C-l>' , '<C-w>l' , {})

vim.api.nvim_set_keymap('n' , '<Leader>o' , 'o<Esc>^Da' , {noremap = true})
vim.api.nvim_set_keymap('n' , '<Leader>O' , 'O<Esc>^Da' , {noremap = true})
--actoin
vim.api.nvim_set_keymap('n' , '<leader>z' , ':CocAction<CR>' , {noremap = true})
--color
vim.api.nvim_set_keymap('n' , '<leader>cll' , ':CocCommand editor.action.pickColor<CR>' , {noremap = true})
vim.api.nvim_set_keymap('n' , ';' , ':' , {noremap = true})
vim.api.nvim_set_keymap('i' , '<Tab>' , [[pumvisible() ? "\<C-n>" : "\<TAB>"]] , {expr = true} )
