-- to fix lua highlighting for lua add (self) @variable.builtin to lua parser highlights.scm file
-- in the treesitter plugin folder
require "tele"
require "hotkeys"
require "options"
require "plugins"



require("lsp-colors").setup({
    Error = "#bf616a",
    Warning = "#ebcb8b",
    Information = "#d08770",
    Hint = "#10B981"
})

-- require "compe-config"
-- require "mehu"
require "lsp-hotkeys"
-- require "ccGG"

-- require "tsserveru"
-- require "emmetu"
-- require "htmlu"
--
-- require "lspsaga-config"
-- require("navigator").setup()

require "variables"
require "groupsu"
--[[ require("nvimtree-config")
require "treesitteru" ]]
-- require "which-key".setup()
-- require "lineu"
-- require "lsp_sig"
-- require "whichWho"
-- require "icons"
-- require "omniBoy"
-- require "preview-defs"
-- require "git-signs"
require "formatting"

require('lspconfig').texlab.setup {
    --[[ capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                                   .make_client_capabilities()) ]]
}

-- require "octo-SAN"
-- require 'lspconfig'.jsonls.setup{}
