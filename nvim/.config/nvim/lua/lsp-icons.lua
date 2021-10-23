local function lspSymbol(name, icon)
    vim.fn.sign_define("DiagnosticSign" .. name,
                       {text = icon, numhl = "DiagnosticDefault" .. name})
end
lspSymbol("Error", "")
lspSymbol("Information", "")
lspSymbol("Hint", "")
lspSymbol("Info", "")
lspSymbol("Warning", "")

vim.lsp.handlers["textDocument/hover"] =
    vim.lsp.with(vim.lsp.handlers.hover, {
        -- see vim.api.nvim_open_win()
        border = {
            {"╭", "FloatBorder"}, {"─", "FloatBorder"},
            {"╮", "FloatBorder"}, {"│", "FloatBorder"},
            {"╯", "FloatBorder"}, {"─", "FloatBorder"},
            {"╰", "FloatBorder"}, {"│", "FloatBorder"}
        }

    })
-- , "│", "─", , , , , "╰"
