local custom_nord = require 'lualine.themes.nord'
-- Chnage the background of lualine_c section for normal mode
custom_nord.normal.b.bg = '#81a1c1'-- rgb colors are supported
custom_nord.normal.b.fg = '#3b4252'

require'lualine'.setup {
    options = {
        icons_enabled = true,
        theme = custom_nord,
        component_separators = {'', ''},
        section_separators = {'', ''},
        disabled_filetypes = {}
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
}
