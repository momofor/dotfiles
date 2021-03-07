vim.api.nvim_set_keymap("n" , "<Leader>f" , ":lua require'telescope.builtin'.find_files()<CR>" , {noremap = true} )
vim.api.nvim_set_keymap("n" , "<Leader>M" , ":lua require'telescope.builtin'.man_pages()<CR>" , {noremap = true})
vim.api.nvim_set_keymap("n" , "<Leader>T" , ":lua require'telescope.builtin'.treesitter()<CR>" , {noremap = true})

