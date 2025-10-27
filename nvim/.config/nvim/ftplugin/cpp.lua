local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local capabilities = require("blink.cmp").get_lsp_capabilities()

local utils = require("core._utils")

require("lspconfig").clangd.setup({
	cmd = {
		"clangd",
		"--background-index",
		"--suggest-missing-includes",
		"--all-scopes-completion",
		"--completion-style=detailed",
	}, -- custom build dir
	capabilities = capabilities,
})
