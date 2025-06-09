local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local capabilities = require("blink.cmp").get_lsp_capabilities()

local utils = require("core._utils")

vim.lsp.config("clangd", {
	cmd = {
		"clangd",
		"--background-index",
		"--suggest-missing-includes",
		"--all-scopes-completion",
		"--completion-style=detailed",
	}, -- custom build dir
	capabilities = capabilities,
	on_attach = utils.on_attach,
})

vim.lsp.enable("clangd")
vim.cmd([[LspStart]])
