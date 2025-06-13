-- , "│", "─", , , , , "╰"
vim.diagnostic.config {
	underline = true,
	update_in_insert = true,
	virtual_text = {
		true,
		spacing = 1,
		source = true,
		severity = { min = vim.diagnostic.severity.HINT },
	},
	signs = true,
	severity_sort = true,
	float = { show_header = true, source = true, border = "rounded" },
}
