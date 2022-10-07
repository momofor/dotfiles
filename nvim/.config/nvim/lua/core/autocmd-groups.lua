vim.api.nvim_create_augroup("LspStart", {})
vim.api.nvim_create_autocmd("BufEnter", { pattern = "*", group = "LspStart", command = "LspStart" })
