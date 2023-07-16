local null_ls = require("null-ls")
-- register any number of sources simultaneously
local diagnostics = null_ls.builtins.diagnostics
-- local code_actions = null_ls.builtins.code_actions
local formatting = null_ls.builtins.formatting

local sources = {
	diagnostics.write_good,
	-- code_actions.gitsigns,
	formatting.stylua,
	formatting.black,
	diagnostics.hadolint,
	formatting.clang_format,
	-- null_ls.builtins.code_actions.gitsigns,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	sources = sources,
	-- you can reuse a shared lspconfig on_attach callback here
	on_attach = function(client, bufnr)
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({ bufnr = bufnr })
			end,
		})
	end,
})
