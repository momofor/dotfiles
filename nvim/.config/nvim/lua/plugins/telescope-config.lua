require("telescope").setup({
	defaults = {
		extensions = {
			file_browser = {
				theme = "ivy",
			},
			vimgrep_arguments = {
				"rg",
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--smart-case",
				"--hidden",
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
			undo = {
				side_by_side = true,
				layout_strategy = "vertical",
				layout_config = {
					preview_height = 0.8,
				},
			},
		},
	},
})

vim.keymap.set("n", "<leader>ff", function()
	require("telescope.builtin").find_files({ hidden = true })
end, { noremap = true })
-- vim.keymap.set("n", "<leader>fF", function()
-- 	require("telescope").extensions.file_browser.file_browser()
-- end, { noremap = true })
vim.keymap.set("n", "<leader>fw", "<cmd> Telescope live_grep<CR>", { noremap = true })
vim.keymap.set("n", "<leader>fo", "<cmd> Telescope oldfiles<CR>", { noremap = true })
vim.keymap.set("n", "<leader>u", "<cmd> Telescope undo<CR>", { noremap = true })

vim.keymap.set("n", "<leader>M", function()
	require("telescope.builtin").man_pages()
end, { noremap = true })
vim.keymap.set("n", "<leader>T", function()
	require("telescope.builtin").treesitter()
end, { noremap = true })

vim.keymap.set("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols, { noremap = true })
vim.keymap.set("n", "<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, { noremap = true })
