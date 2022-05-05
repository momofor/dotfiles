local null_ls = require("null-ls")
-- register any number of sources simultaneously
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions
local formatting = null_ls.builtins.formatting

local sources = {
	diagnostics.write_good,
	formatting.prettierd,
	code_actions.gitsigns,
	formatting.stylua,
	diagnostics.chktex,
	formatting.black,
	diagnostics.hadolint,
	null_ls.builtins.formatting.latexindent,
}

null_ls.setup({
	sources = sources,
})
