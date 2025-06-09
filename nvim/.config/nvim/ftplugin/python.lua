local utils = require("core._utils")

vim.lsp.config("pyright", {
	on_attach = utils.on_attach,
})

vim.cmd("LspStart")
