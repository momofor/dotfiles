--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}


local nvim_lsp = require'lspconfig'
local configs = require'lspconfig/configs'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

configs.emmet_ls = {
  default_config = {
    cmd = {'emmet-ls', '--stdio'};
    filetypes = {'html', 'css'};
    root_dir = function()
      return vim.loop.cwd()
    end;
    settings = {};
  };
}

nvim_lsp.emmet_ls.setup{
  -- on_attach = on_attach;
}
vim.cmd("LspStart")
