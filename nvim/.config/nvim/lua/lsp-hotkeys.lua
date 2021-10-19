local utils = require("_utils")
utils.map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>",
          {noremap = true, silent = true})
utils.map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>",
          {noremap = true, silent = true})
utils.map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>",
          {noremap = true, silent = true})
utils.map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>",
          {noremap = true, silent = true})
utils.map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>",
          {noremap = true, silent = true})
utils.map("n", "ga", "<cmd>lua vim.lsp.buf.signature_help()<CR>",
          {noremap = true, silent = true})
utils.map("n", "<C-n> ", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>",
          {noremap = true, silent = true})
utils.map("n", "<C-p> ", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
          {noremap = true, silent = true})

utils.nnoremap("<Leader>a", ":Telescope lsp_code_actions<CR>")
utils.nnoremap('<leader>R', ':lua vim.lsp.buf.rename()<CR>')
utils.nnoremap('<leader>pd', ':Lspsaga preview_definition<CR>')
utils.nnoremap('<leader>t', ':NvimTreeToggle<CR>')
-- utils.map('n' , '<leader>f' , ':Format<CR>' , {noremap = true})
utils.nnoremap("<leader>f", ":Format<CR>")
utils.nnoremap("<leader>s", ":source %<CR>")
utils.nnoremap(";", ":")
utils.nnoremap("<leader>oft", ":Lspsaga open_floaterm<CR>")
utils.nnoremap("<leader>cft", ":Lspsaga close_floaterm<CR>")
utils.nnoremap("<leader>cp", ":! gcc -g %<CR>")
-- utils.map("i" , "<C-Space> " , "compe#complete()" , {noremap = true , silent = true , expr = true})
-- utils.map("i" , "<C-e>" , "compe#close('<C-e>')" , {noremap   = true , silent = true , expr = true})
-- utils.map("i" , "<C-f>" , "compe#scroll({ 'delta': +4 })" , {noremap= true , silent = true , expr = true})
-- utils.map("i" , "<C-d>" , "compe#scroll({ 'delta': -4 })" , {noremap= true , silent = true , expr = true})
