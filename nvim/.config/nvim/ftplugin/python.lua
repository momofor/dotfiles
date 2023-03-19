local utils = require("core._utils")

require("lspconfig").pylsp.setup({
	on_attach = utils.on_attach,
})

vim.cmd("LspStart")
