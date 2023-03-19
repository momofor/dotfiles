local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
local utils = require("core._utils")

local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
require("neodev").setup({
	library = {
		plugins = false,
	},
	-- add any options here, or leave empty to use the default settings
})

require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			completion = {
				keywordSnippet = "Replace",
				callSnippet = "Replace",
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
	capabilities = capabilities,
	on_attach = utils.on_attach,
})
vim.cmd([[LspStart]])
