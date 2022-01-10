-- Setup nvim-cmp.
local cmp = require "cmp"
local lsp_kind = require "lspkind"
local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
end

local luasnip = require "luasnip"
require("luasnip/loaders/from_vscode").lazy_load()
cmp.setup {
	formatting = {
		format = function(entry, vim_item)
			vim_item.kind = lsp_kind.presets.default[vim_item.kind]
			vim_item.menu = ({
				nvim_lsp = "[LSP]",
				luasnip = "[Snp]",
				buffer = "[Buf]",
				nvim_lua = "[Lua]",
				path = "[Pth]",
				calc = "[Clc]",
				emoji = "[Emj]",
			})[entry.source.name]

			return vim_item
		end,
	},
	snippet = {
		expand = function(args)
			-- For `vsnip` user.
			-- vim.fn["vsnip#anonymous"](args.body)

			-- For `luasnip` user.
			require("luasnip").lsp_expand(args.body)

			-- For `ultisnips` user.
			-- vim.fn["UltiSnips#Anon"](args.body)
		end,
	},
	mapping = {
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm { select = true },
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	},
	experimental = {
		native_menu = false,
	},
	sources = {
		{ name = "nvim_lsp" }, -- For vsnip user.
		{ name = "luasnip" }, -- For luasnip user.
		{ name = "crates" }, -- { name = 'luasnip' },
		{ name = "nvim_lua" }, -- For ultisnips user.
		{ name = "path" }, -- { name = 'ultisnips' },
		{ name = "buffer" },
		{ name = "spell" },
	},
}