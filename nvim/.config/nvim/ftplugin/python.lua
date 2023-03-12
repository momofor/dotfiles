local utils = require("core._utils")
require("lspconfig").pyright.setup({
	analysis = {
		inlayHints = {
			variableTypes = true,
			functionReturnTypes = true,
		},
	},
	on_attach = utils.on_attach(),
})
vim.cmd("LspStart")
