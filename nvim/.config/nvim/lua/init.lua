-- to fix lua highlighting for lua add (self) @variable.builtin to lua parser highlights.scm file
-- in the treesitter plugin folder

require "tele"
require "hotkeys"
require "options"
require "plugins"

require "compe-config"
require "mehu"
require "lsp-hotkeys"
require "ccGG"

-- require "tsserveru"
-- require "emmetu"
-- require "htmlu"
--
require "lspsaga-config"
-- require("navigator").setup()
require'colorizer'.setup()

require "variables"
require "groupsu"
require("nvimtree-config")
require "treesitteru"
require "which-key".setup()
require "lineu"
require "lsp_sig"
require "whichWho"
require "icons"
-- require "omniBoy"
-- require "preview-defs"
-- require "formatting"
require "git-signs"
-- require 'lspconfig'.jsonls.setup{}
