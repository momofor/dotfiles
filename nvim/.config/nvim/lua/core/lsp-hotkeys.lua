local utils = require "core._utils"

vim.g.mapleader = " "

utils.nnoremap("<leader>R", ":IncRename ")
utils.nnoremap("<leader>pd", ":Lspsaga preview_definition<CR>")

utils.nnoremap("<leader>F", function()
	vim.lsp.buf.formatting_sync()
end)
utils.nnoremap("<leader>d", function()
	vim.diagnostic.open_float()
end)
utils.nnoremap("<leader>s", ":source %<CR>")
utils.nnoremap(";", ":")
utils.nnoremap("<leader>cp", ":! gcc -g %<CR>")
utils.nnoremap("<leader>ps", function()
	utils.packer_sync()
end)
utils.nnoremap("<leader>ts", function()
	utils.trailspace_trim()
end)

utils.nnoremap("<leader>fn", function()
	utils.Search("< NeovimRC >", "~/.config/nvim/")
end)
utils.nnoremap("<leader>fr", ":e ~/.config/hypr/hyprland.conf<CR>")

utils.nnoremap("<leader>mk", ":TexlabForward<CR>")

utils.nnoremap("<leader>j", ":resize -2<CR>")
utils.nnoremap("<leader>k", ":resize +2<CR>")
utils.nnoremap("<leader>h", ":vertical resize -2<CR>")
utils.nnoremap("<leader>l", ":vertical resize +2<CR>")
utils.nnoremap("<leader>n", ":nohlsearch<CR>")

utils.nnoremap("<TAB>", ":bnext<CR>")
utils.nnoremap("<S-TAB>", ":bp<CR>")
utils.nnoremap("<leader>w", ":bd<CR>")

utils.map("n", "<C-h>", "<C-w>h", {})
utils.map("n", "<C-k>", "<C-w>k", {})
utils.map("n", "<C-l>", "<C-w>l", {})
utils.map("n", "<C-j>", "<C-w>j", {})
utils.map("v", "J", ":m '>+1<CR>gv=gv'")
utils.map("v", "K", ":m '<-2<CR>gv=gv'")
utils.map("n", "J", "mzJ`z")
utils.map("n", "<C-d>", "<C-d>zz")
utils.map("n", "<C-u>", "<C-u>zz")
-- utils.map("n", "n", "nzzzv")
-- utils.map("n", "N", "Nzzzv")
utils.map("x", "<leader>p", [[\"_dP]])

utils.map("n", "<Leader>cg", ":TSHighlightCapturesUnderCursor<CR>", { noremap = true })

utils.map("t", "<Esc>", [[ <C-\><C-n> ]], { noremap = true })
utils.nnoremap("<Leader>e", vim.diagnostic.open_float)

utils.nnoremap("<leader>Ds", ":! objdump -d ./target/release/simd-testing --disassembler-options=intel<CR>")
