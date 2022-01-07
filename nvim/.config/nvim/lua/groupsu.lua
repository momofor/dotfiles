local u = require "_utils"
u.define_augroups {
	_airline_theme = {
		{ "VimEnter,Colorscheme", "*", ':hi IndentGuidesOdd  guibg=#3B4252 ctermbg=3 "nord1' },
		{ "VimEnter,Colorscheme", "*", ':hi IndentGuidesEven guibg=#434C5E ctermbg=4 "nord2' },
		{ "BufWritePre", "*.rs", ":lua vim.lsp.buf.formatting_sync(nil, 200)" },
		{ "BufEnter", "*", "LspStart" },
		-- fix for treesitter
	},
}
