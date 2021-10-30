require'lspconfig'.rust_analyzer.setup{}
vim.api.nvim_set_keymap("n", "<Leader>r",":RustRun",{noremap = true})
vim.cmd "LspStart"
