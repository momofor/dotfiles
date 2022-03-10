vim.api.nvim_create_augroup("my_auto_groups", {})
vim.api.nvim_create_autocmd("BufEnter", { pattern = "*", group = "my_auto_groups", command = "LspStart" })
