local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

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
