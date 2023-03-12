local utils = require("core._utils")
require("lspconfig").clangd.setup({
	on_attach = utils.on_attach,
})
