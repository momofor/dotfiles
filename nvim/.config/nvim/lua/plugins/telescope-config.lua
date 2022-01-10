require("telescope").setup({
	defaults = {
		extensions = {
			file_browser = {
				theme = "ivy",
			},
		},
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		prompt_prefix = "> ",
		selection_caret = "> ",
		entry_prefix = "  ",
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			prompt_position = "top",
			width = 0.9,
			height = 0.9,
			horizontal = { mirror = false, preview_cutoff = 80 },
			vertical = { mirror = false, preview_cutoff = 80 },
		},
		file_sorter = require("telescope.sorters").get_fuzzy_file,
		file_ignore_patterns = {},
		generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
		winblend = 0,
		border = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		color_devicons = true,
		use_less = true,
		path_display = {},
		set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
		-- Developer configurations: Not meant for general override
		buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
	},
})
local utils = require("core._utils")
local M = {}

function M.Search(title, cwd)
	require("telescope.builtin").find_files({ prompt_title = title, cwd = cwd })
end

vim.g.mapleader = " "
utils.map("n", "<Leader>M", ":lua require'telescope.builtin'.man_pages() <CR>", { noremap = true })
utils.map("n", "<Leader>T", ":lua require'telescope.builtin'.treesitter() <CR>", { noremap = true })
utils.map("n", "<Leader>rc", ":lua require'tele'.Search('< NeovimRC >' , '~/.config/nvim/' ) <CR>", {})
utils.map("n", "<Leader>Aw", ":lua require'tele'.Search('< AwesomewmRC >' , '~/.config/awesome/' ) <CR>", {})
utils.map("n", "<Leader>sr", ":lua require'tele'.Search('< swayRC >' , '~/.config/sway' ) <CR>", {})
return M
