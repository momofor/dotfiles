local pid = vim.fn.getpid()
local omnisharp_bin = "/home/momofor/.other/programs/lsps/rosylin/run"
require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}
