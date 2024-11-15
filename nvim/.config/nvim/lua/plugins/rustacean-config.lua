local utils = require("core._utils")
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
-- capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
vim.g.rustaceanvim = {
	-- rust-analyer options
	server = {
		-- standalone file support
		-- setting it to false may improve startup time
		standalone = false,
		cmd = { "/usr/bin/rustup", "run", "nightly", "rust-analyzer" },
		-- capabilities = capabilities,
		on_attach = utils.on_attach,
		settings = {
			["rust-analyzer"] = {
				check = {
					command = "clippy",
				},
			},
		},
	},
}
