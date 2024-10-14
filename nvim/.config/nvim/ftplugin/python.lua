local utils = require("core._utils")

require("lspconfig").pyright.setup({
	on_attach = utils.on_attach,
})

vim.cmd("LspStart")
