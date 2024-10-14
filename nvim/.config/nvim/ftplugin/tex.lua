local capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
local utils = require("core._utils")
--
require("lspconfig").texlab.setup({
	settings = {
		["texlab"] = {
			auxDirectory = "./out",
			bibtexFormatter = "texlab",
			build = {
				args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f", "-outdir=./out" },
				executable = "latexmk",
				forwardSearchAfter = false,
				onSave = true,
			},
			chktex = {
				onEdit = true,
				onOpenAndSave = true,
			},
			diagnosticsDelay = 300,
			formatterLineLength = 80,
			forwardSearch = {
				executable = "zathura",
				args = { "--synctex-forward", "%l:1:%f", "%p" },
			},
			latexFormatter = "latexindent",
			latexindent = {
				modifyLineBreaks = true,
			},
		},
	},
	capabilities = capabilities,
	on_attach = utils.on_attach,
})
vim.cmd([[LspStart]])

vim.cmd([[syn sync maxlines=200]])
vim.cmd([[syn sync minlines=50]])
vim.keymap.set("n", "<leader>tf", ":TexlabForward<CR>")
vim.keymap.set("n", "<leader>tb", ":TexlabBuild<CR>")
vim.keymap.set("n", "<leader>ft", function()
	vim.lsp.buf.format()
end)
-- vim.keymap.set("n", "<leader>I", ":VimtexTocToggle<CR>")
