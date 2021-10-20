local function lspSymbol(name, icon)
    vim.fn.sign_define("DiagnosticSign" .. name,
                       {text = icon, numhl = "DiagnosticDefault" .. name})
end
lspSymbol("Error", "")
lspSymbol("Information", "")
lspSymbol("Hint", "")
lspSymbol("Info", "")
lspSymbol("Warning", "")

