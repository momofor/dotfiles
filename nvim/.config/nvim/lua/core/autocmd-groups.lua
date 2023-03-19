vim.api.nvim_create_augroup("LspStart", {})
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function()
		vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
	end,
})
