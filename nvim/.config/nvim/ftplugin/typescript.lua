local nvim_lsp = require("lspconfig")
require("null-ls").setup {}

nvim_lsp.tsserver.setup {
    on_attach = function(client, bufnr)
        local ts_utils = require("nvim-lsp-ts-utils")

        -- defaults
        ts_utils.setup {
            debug = false,
            disable_commands = false,
            enable_import_on_completion = true,
            import_on_completion_timeout = 5000,

            -- eslint
            eslint_enable_code_actions = true,
            eslint_bin = "eslint_d",
            eslint_args = {"-f", "json", "--stdin", "--stdin-filename", "$FILENAME" , "--cache"},
            eslint_enable_disable_comments = true,

	    -- experimental settings!
            -- eslint diagnostics
            eslint_enable_diagnostics = true,
            eslint_diagnostics_debounce = 250,

            -- formatting
            enable_formatting = true,
            formatter = "prettierd",
            formatter_config_fallback = nil,
             formatter_args = {"$FILENAME"},
            format_on_save = true,
            no_save_after_format = false,

            -- parentheses completion
            complete_parens = false,
            signature_help_in_parens = true,

	    -- update imports on file move
	    update_imports_on_move = true,
	    require_confirmation_on_move = true,
	    watch_dir = "/src",
        }

        -- required to enable ESLint code actions and formatting
        ts_utils.setup_client(client)

        -- disable tsserver formatting
        client.resolved_capabilities.document_formatting = false

        -- define an alias
        vim.cmd("command -buffer Formatting lua vim.lsp.buf.formatting()")

        -- format on save
        vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")

        -- no default maps, so you may want to define some here
        --[[ vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", {silent = true})
        vim.api.nvim_buf_set_keymap(bufnr, "n", "qq", ":TSLspFixCurrent<CR>", {silent = true})
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", {silent = true})
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", {silent = true}) ]]
    end
}
vim.cmd("LspStart")
