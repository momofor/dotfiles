local utils = require("core._utils")

local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}
require("lspconfig")["hls"].setup({
	filetypes = { "haskell", "lhaskell", "cabal" },
	on_attach = utils.on_attach,
	capabilities = capabilities,
})
