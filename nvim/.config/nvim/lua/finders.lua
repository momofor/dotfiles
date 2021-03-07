local finders = {}

-- Dropdown list theme using a builtin theme definitions :
local center_list = require'telescope.themes'.get_dropdown({
  winblend = 10,
  width = 0.5,
  prompt = " ",
  results_height = 15,
  previewer = false,
})

-- Settings for with preview option
local with_preview = {
  winblend = 10,
  show_line = false,
  results_title = false,
  preview_title = false,
  layout_config = {
    preview_width = 0.5,
  },
}

-- Find in neovim config with center theme
finders.fd_in_nvim = function()
  local opts = vim.deepcopy(center_list)
  opts.prompt_prefix = 'Nvim>'
  opts.cwd = vim.fn.stdpath("config")
  require'telescope.builtin'.fd(opts)
end

-- Find files with_preview settings
function fd()
  local opts = vim.deepcopy(with_preview)
  opts.prompt_prefix = 'FD>'
  require'telescope.builtin'.fd(opts)
end

return finders
