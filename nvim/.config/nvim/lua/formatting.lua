require("formatter").setup({
    loogin = false ,
    filetype = {
        cpp = {
            function ()
                return {
                    exe = "clang-format" ,
                    args = {"--style=file" , vim.api.nvim_buf_get_name(0)} ,
                    stdin = true
                }
            end
        }
    }
})
