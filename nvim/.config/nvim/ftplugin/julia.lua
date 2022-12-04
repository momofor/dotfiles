local utils = require("core._utils")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").julials.setup({
	on_attach = utils.on_attach,
	capabilities = capabilities,
})
