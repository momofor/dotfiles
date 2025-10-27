local utils = require "core._utils"

vim.api.nvim_create_augroup("LspStart", {})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
		utils.on_attach(client, args.buf)
	end,
})

vim.api.nvim_create_autocmd("VimEnter", {
	pattern = { "*.py", "*.c" },
	callback = function()
		vim.cmd [[LspStart]]
	end,
})
