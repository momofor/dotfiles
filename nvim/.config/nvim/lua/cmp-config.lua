-- Setup nvim-cmp.
local cmp = require 'cmp'

local cmp_kinds = {
    Class = ' ',
    Color = ' ',
    Constant = 'ﲀ ',
    Constructor = ' ',
    Enum = '練',
    EnumMember = ' ',
    Event = ' ',
    Field = ' ',
    File = '',
    Folder = ' ',
    Function = ' ',
    Interface = 'ﰮ ',
    Keyword = ' ',
    Method = ' ',
    Module = ' ',
    Operator = '',
    Property = ' ',
    Reference = ' ',
    Snippet = ' ',
    Struct = ' ',
    Text = ' ',
    TypeParameter = ' ',
    Unit = '塞',
    Value = ' ',
    Variable = ' '
}
local luasnip = require "luasnip"
require('luasnip.loaders.from_vscode').lazy_load()
vim.opt.completeopt = 'menuone,noselect'
cmp.setup({
    formatting = {
        format = function(entry, vim_item)
            vim_item.kind = string.format('%s %s', cmp_kinds[vim_item.kind],
                                          vim_item.kind)
            vim_item.menu = ({
                nvim_lsp = '[LSP]',
                luasnip = '[Snp]',
                buffer = '[Buf]',
                nvim_lua = '[Lua]',
                path = '[Pth]',
                calc = '[Clc]',
                emoji = '[Emj]'
            })[entry.source.name]

            return vim_item
        end
    },
    snippet = {
        expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end
    },
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item({
            behavior = cmp.SelectBehavior.Insert
        }),
        ['<C-p>'] = cmp.mapping.select_prev_item({
            behavior = cmp.SelectBehavior.Insert
        }),
        ['<Tab>'] = cmp.mapping.select_next_item({
            behavior = cmp.SelectBehavior.Select
        }),
        ['<S-tab>'] = cmp.mapping.select_prev_item({
            behavior = cmp.SelectBehavior.Select
        }),
        --[[ ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end,
        ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, ]]
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        })
    },
    sources = {
        {name = 'nvim_lsp'},{name = 'luasnip'} ,{name = 'buffer'},
        {name = 'path'}
    }
})