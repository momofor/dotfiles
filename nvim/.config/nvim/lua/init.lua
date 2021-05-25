require("tele")
require("hotkeys")
require("options")
require("plugins")

require("compe-config")
require("mehu")
require("lsp-hotkeys")
require("ccGG")
 require("tsserveru")
require("lspsaga-config")
-- require("navigator").setup()
require'colorizer'.setup()

require("variables")
require("groupsu")
-- require("nvimtree-config")
require("treesitteru")
require("which-key").setup()
require("lineu")
require("lsp_sig")
require("troubleu")
require("whichWho")
require("icons")
require("omniBoy")

local pid = vim.fn.getpid()
local omnisharp_bin = "/home/momofor/.other/programs/lsps/rosylin/run"
require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}
