" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/momofor/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/momofor/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/momofor/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/momofor/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/momofor/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["coc-nvim-lua"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/coc-nvim-lua"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["codi.vim"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/codi.vim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nerdtree-git-plugin"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/nerdtree-git-plugin"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["omnisharp-vim"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/omnisharp-vim"
  },
  playground = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-be-good"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/opt/vim-be-good"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gist"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/vim-gist"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-indent-guides"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/vim-indent-guides"
  },
  ["vim-nerdtree-syntax-highlight"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/vim-nerdtree-syntax-highlight"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["webapi-vim"] = {
    loaded = true,
    path = "/home/momofor/.local/share/nvim/site/pack/packer/start/webapi-vim"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
