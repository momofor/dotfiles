--local system_name
--if vim.fn.has("mac") == 1 then
  --system_name = "macOS"
--elseif vim.fn.has("unix") == 1 then
  --system_name = "Linux"
--elseif vim.fn.has('win32') == 1 then
  --system_name = "Windows"
--else
  --print("Unsupported system for sumneko")
--end

local path = vim.split(package.path, ";")

-- this is the ONLY correct way to setup your path
table.insert(path, "?.lua")
table.insert(path, "?/init.lua")

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local sumneko_root_path = vim.fn.stdpath('cache')..'/lspconfig/sumneko_lua/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/Linux/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
		  -- [vim.fn.expand('$HOME/.other/programs/awesome/lib')] = true
          -- [vim.fn.expand('$HOME/.config/nvim/lua/types/')] = true
        },
      },
    },
  },
}

vim.cmd("LspStart")
