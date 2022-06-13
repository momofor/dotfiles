local utils = require "core._utils"
utils.nnoremap("gd", function()
	vim.lsp.buf.definition()
end)
utils.nnoremap("gD", function()
	vim.lsp.buf.declaration()
end)
utils.nnoremap("gr", function()
	vim.lsp.buf.references()
end)
utils.nnoremap("gi", function()
	vim.lsp.buf.implementation()
end)
utils.nnoremap("K", function()
	vim.lsp.buf.hover()
end)
utils.nnoremap("ga", function()
	vim.lsp.buf.signature_help()
end)
utils.nnoremap("<C-n>", function()
	vim.diagnostic.goto_prev()
end)
utils.nnoremap("<C-p>", function()
	vim.diagnostic.goto_next()
end)

utils.nnoremap("<Leader>a", ":lua vim.lsp.buf.code_action()<CR>")
utils.nnoremap("<leader>R", ":IncRename ")
utils.nnoremap("<leader>pd", ":Lspsaga preview_definition<CR>")
utils.nnoremap("<leader>t", ":NvimTreeToggle<CR>")
utils.nnoremap("<leader>ff", function()
	require("telescope.builtin").find_files()
end)
utils.nnoremap("<leader>fF", function()
	require("telescope").extensions.file_browser.file_browser()
end)
utils.nnoremap("<leader>fw", "<cmd> Telescope live_grep<CR>")
utils.nnoremap("<leader>fo", "<cmd> Telescope oldfiles<CR>")

utils.nnoremap("<leader>F", function()
	vim.lsp.buf.formatting_sync()
end)
utils.nnoremap("<leader>d", function()
	vim.diagnostic.open_float()
end)
utils.nnoremap("<leader>s", ":source %<CR>")
utils.nnoremap(";", ":")
utils.nnoremap("<leader>oft", ":Lspsaga open_floaterm<CR>")
utils.nnoremap("<leader>cft", ":Lspsaga close_floaterm<CR>")
utils.nnoremap("<leader>cp", ":! gcc -g %<CR>")
utils.nnoremap("<leader>e", ":Telescope lsp_document_diagnostics<CR>")
utils.nnoremap("<leader>ps", function()
	utils.packer_sync()
end)
utils.nnoremap("<leader>ts", function()
	utils.trailspace_trim()
end)

utils.nnoremap("<leader>M", function()
	require("telescope.builtin").man_pages()
end)
utils.nnoremap("<leader>T", function()
	require("telescope.builtin").treesitter()
end)

utils.nnoremap("<leader>fn", function()
	utils.Search("< NeovimRC >", "~/.config/nvim/")
end)
utils.nnoremap("<leader>fr", function()
	utils.Search("< SwayRC >", "~/.config/sway/")
end)
--
