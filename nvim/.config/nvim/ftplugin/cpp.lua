local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
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
	on_attach = utils.on_attach,
})
--local lspconfig = require'lspconfig'
--lspconfig.ccls.setup {
--init_options = {
--compilationDatabaseDirectory = "build";
--index = {
--threads = 0;
--};
--clang = {
--excludeArgs = { "-frounding-math"} ;
--};
--}
--}
