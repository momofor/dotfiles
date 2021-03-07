local utils = require("_utils")

local variables_glabal = {
    NERDTreeQuitOnOpen = 1 ,
    gitgutter_grep = rg ,
}

utils.set_var(vim.g , variables_glabal)
