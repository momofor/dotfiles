vim.api.nvim_create_augroup("LspStart", {})
vim.api.nvim_create_autocmd("BufEnter", { pattern = "*", group = "LspStart", command = "LspStart" })
vim.api.nvim_create_augroup("packer_user_config", {})
vim.api.nvim_create_autocmd(
	"BufWritePost",
	{
		pattern = "plugins.lua",
		group = "packer_user_config",
		command = "source <afile> | PackerCompile | echo 'hello' ",
	}
)
