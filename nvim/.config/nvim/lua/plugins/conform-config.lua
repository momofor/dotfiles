require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt" },
		tex = { "latexindent" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 300,
		lsp_fallback = true,
	},
})
