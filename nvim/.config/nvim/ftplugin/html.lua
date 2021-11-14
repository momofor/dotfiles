--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.emmet_ls.setup {
  capabilities = capabilities,
}
vim.cmd "LspStart"

