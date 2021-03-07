local M = {}
function M.map(mode , keys , action , options)
    if options == nil then
        options = {}
    end
    vim.api.nvim_set_keymap(mode , keys , action , options)
end

function M.set_options(locality , options)
    for key, value in pairs(options) do
        locality[key] = value
    end
end

function M.set_var(locality , options)
    for key, value in pairs(options) do
        locality[key] = value
    end
end

return M
