local M = {}
function M.map(mode , keys , action , options)
    if options == nil then
        options = {}
    end
    vim.api.nvim_set_keymap(mode , keys , action , options)
end

local options_info = vim.api.nvim_get_all_options_info()

--[[ function M.set_option_advanced(option , optionValue)
    local scope = options_info[option].scope
    vim.o[option] = optionValue
    if scope == 'win' then
            vim.wo[option] = optionValue
            vim.o[option] = optionValue
        elseif scope == 'buf' then
            vim.bo[option] = optionValue
            vim.o[option] = optionValue
    end
    end ]]

function M.set_options(options)
    for key, value in pairs(options) do
        -- M.set_option_advanced(key , value)
        vim.opt[key] = value
    end
end

function M.set_var(locality , options)
    for key, value in pairs(options) do
        locality[key] = value
    end
end

function M.define_augroups (definitions)
    -- Create autocommand groups based on the passed definitions
    --
    -- The key will be the name of the group, and each definition
    -- within the group should have:
    --    1. Trigger
    --    2. Pattern
    --    3. Text
    -- just like how they would normally be defined from Vim itself
    for group_name, definition in pairs(definitions) do
        vim.cmd('augroup ' .. group_name)
        vim.cmd('autocmd!')

        for _, def in pairs(definition) do
            local command = table.concat(vim.tbl_flatten {'autocmd', def}, ' ')
            vim.cmd(command)
        end

        vim.cmd('augroup END')
    end
end


return M
