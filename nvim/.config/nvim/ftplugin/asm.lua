local uls = require("core._utils")
require("lspconfig").asm_lsp.setup({ on_attach = uls.on_attach })
vim.cmd([[LspStart]])
