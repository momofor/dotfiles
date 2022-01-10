local function lspSymbol(name, icon)
	vim.fn.sign_define("DiagnosticSign" .. name, { text = icon, numhl = "DiagnosticDefault" .. name })
end
lspSymbol("Error", "")
lspSymbol("Information", "")
lspSymbol("Hint", "")
lspSymbol("Info", "")
lspSymbol("Warning", "")
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	-- see vim.api.nvim_open_win()
	border = {
		{ "╭", "FloatBorder" },
		{ "─", "FloatBorder" },
		{ "╮", "FloatBorder" },
		{ "│", "FloatBorder" },
		{ "╯", "FloatBorder" },
		{ "─", "FloatBorder" },
		{ "╰", "FloatBorder" },
		{ "│", "FloatBorder" },
	},
})
local function dorename(win)
	local new_name = vim.trim(vim.fn.getline ".")
	vim.api.nvim_win_close(win, true)
	vim.lsp.buf.rename(new_name)
end

local function rename()
	local opts = {
		relative = "cursor",
		row = 0,
		col = 0,
		width = 30,
		height = 1,
		style = "minimal",
		border = {
			{ "╭", "FloatBorder" },
			{ "─", "FloatBorder" },
			{ "╮", "FloatBorder" },
			{ "│", "FloatBorder" },
			{ "╯", "FloatBorder" },
			{ "─", "FloatBorder" },
			{ "╰", "FloatBorder" },
			{ "│", "FloatBorder" },
		},
	}
	local cword = vim.fn.expand "<cword>"
	local buf = vim.api.nvim_create_buf(false, true)
	local win = vim.api.nvim_open_win(buf, true, opts)
	local fmt = "<cmd>lua Rename.dorename(%d)<CR>"

	vim.api.nvim_buf_set_lines(buf, 0, -1, false, { cword })
	vim.api.nvim_buf_set_keymap(buf, "i", "<CR>", string.format(fmt, win), { silent = true })
end

_G.Rename = { rename = rename, dorename = dorename }

vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua Rename.rename()<CR>", { silent = true })

-- , "│", "─", , , , , "╰"
vim.diagnostic.config {
	underline = true,
	update_in_insert = true,
	virtual_text = {
		true,
		spacing = 1,
		source = "always",
		severity = { min = vim.diagnostic.severity.HINT },
		-- todo: icons for diagnostics?
		--[[ format = function(diagnostic)
        if diagnostic.severity == vim.diagnostic.severity.ERROR then
          return string.format('E: %s', diagnostic.message)
        end
        return diagnostic.message
      end, ]]
	},
	signs = true,
	severity_sort = true,
	float = { show_header = true, source = "always", border = "rounded" },
}
