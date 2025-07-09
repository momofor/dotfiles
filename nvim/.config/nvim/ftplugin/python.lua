local utils = require("core._utils")

vim.lsp.config("basedpyright", {
	on_attach = utils.on_attach,
})

vim.cmd("LspStart")
