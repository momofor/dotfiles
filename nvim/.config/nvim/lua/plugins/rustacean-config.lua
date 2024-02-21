local utils = require("core._utils")
vim.g.rustaceanvim = {
	-- rust-analyer options
	server = {
		-- standalone file support
		-- setting it to false may improve startup time
		standalone = false,
		cmd = { "/usr/bin/rustup", "run", "nightly", "rust-analyzer" },
		capabilities = capabilities,
		on_attach = utils.on_attach,
		settings = {
			["rust-analyzer"] = {
				inlayHints = { lifetimeElisionHints = { enable = "always" } },
				check = {
					command = "clippy",
				},
			},
		},
	},
}
