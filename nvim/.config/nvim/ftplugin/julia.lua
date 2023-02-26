local utils = require("core._utils")

local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = { "documentation", "detail", "additionalTextEdits" },
}
capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown" }
capabilities.textDocument.codeAction = {
	dynamicRegistration = true,
	codeActionLiteralSupport = {
		codeActionKind = {
			valueSet = (function()
				local res = vim.tbl_values(vim.lsp.protocol.CodeActionKind)
				table.sort(res)
				return res
			end)(),
		},
	},
}
require("lspconfig").julials.setup({
	on_attach = utils.on_attach,
	capabilities = capabilities,
})
