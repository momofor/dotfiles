local M = {}
function M.map(mode , keys , action , options)
    if options == nil then
        options = {}
    end
    vim.api.nvim_set_keymap(mode , keys , action , options)
end

local options_info = vim.api.nvim_get_all_options_info()

function M.set_option_advanced(option , optionValue)
    vim.o[option] = optionValue
    local scope = options_info[option].scope
    if scope == 'win' then
            vim.wo[option] = optionValue
        elseif scope == 'buf' then
            vim.bo[option] = optionValue
    end
    end

function M.set_options(options)
    for key, value in pairs(options) do
        M.set_option_advanced(key , value)
    end
end

function M.set_var(locality , options)
    for key, value in pairs(options) do
        locality[key] = value
    end
end

return M
