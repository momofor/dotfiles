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
            -- For `vsnip` user.
            vim.fn["vsnip#anonymous"](args.body)

            -- For `luasnip` user.
            -- require('luasnip').lsp_expand(args.body)

            -- For `ultisnips` user.
            -- vim.fn["UltiSnips#Anon"](args.body)
        end
    },
    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({select = true}),
        ['<Tab>'] = cmp.mapping.select_next_item({
            behavior = cmp.SelectBehavior.Replace
        }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({
            behavior = cmp.SelectBehavior.Replace
        })
    },
    sources = {
        {name = 'nvim_lsp'}, -- For vsnip user.
        {name = 'vsnip'}, -- For luasnip user.
        -- { name = 'luasnip' },
        -- For ultisnips user.
        -- { name = 'ultisnips' },
        {name = 'buffer'}
    }
})
