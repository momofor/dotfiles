local utils = require("_utils")
vim.g.mapleader = " "
utils.map("n" , "<Leader>M" , ":lua require'telescope.builtin'.man_pages() <CR>" , {noremap = true})
utils.map("n" , "<Leader>T" , ":lua require'telescope.builtin'.treesitter() <CR>" , {noremap = true})
utils.map("n" , "<Leader>F" , ":lua require'telescope.builtin'.file_browser() <CR>" , {noremap = true})

local M = {}

function M.Search(title , cwd)
    require("telescope.builtin").find_files({
        prompt_title = title ,
        cwd = cwd ,
    })
end

utils.map("n" , "<Leader>rc" ,":lua require'tele'.Search('< NeovimRC >' , '~/.config/nvim/' ) <CR>", {} )
utils.map("n" , "<Leader>Aw" ,":lua require'tele'.Search('< AwesomewmRC >' , '~/.config/awesome/' ) <CR>", {} )
require('telescope').setup{
    defaults = {
        vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case'
    },
        -- prompt_position = "top",
        prompt_prefix = "> ",
        selection_caret = "> ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
        horizontal = {
            mirror = false,
        },
        vertical = {
            mirror = false,
        },
		width = 0.9,
		height = 0.9,
		prompt_position = "top"
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    -- width = 0.75,
    -- preview_cutoff = 0,
    --[[ results_height = 1,
    results_width = 0.8, ]]
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

return M
