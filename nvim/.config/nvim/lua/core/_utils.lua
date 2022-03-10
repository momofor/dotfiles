local M = {}
function M.map(mode, keys, action, options)
	if options == nil then
		options = {}
	end
	vim.keymap.set(mode, keys, action, options)
end

function M.TableConcat(t1, t2)
	for key, value in pairs(t2) do
		t1[key] = value
	end
	return t1
end
--- @param keys string key to trigger action
---@param action string action to be triggered
---@param options table || nil table of option can be nil
function M.nnoremap(keys, action, options)
	if options == nil then
		options = { noremap = true }
	else
		options = M.TableConcat(options, { noremap = true })
	end
	M.map("n", keys, action, options)
end

-- local options_info = vim.api.nvim_get_all_options_info()

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
		-- M.set_option_advanced(key , value) legacy code used before the merge of vim.opt
		vim.opt[key] = value
	end
end

function M.set_var(locality, options)
	for key, value in pairs(options) do
		locality[key] = value
	end
end

-- function M.define_augroups(definitions)
-- 	-- Create autocommand groups based on the passed definitions
-- 	--
-- 	-- The key will be the name of the group, and each definition
-- 	-- within the group should have:
-- 	--    1. Trigger
-- 	--    2. Pattern
-- 	--    3. Text
-- 	-- just like how they would normally be defined from Vim itself
-- 	for group_name, definition in pairs(definitions) do
-- 		vim.api.nvim_create_augroup(group_name, {})
--
-- 		for _, def in pairs(definition) do
-- 			local command = table.concat(vim.tbl_flatten { "autocmd", def }, " ")
-- 			print(command)
-- 			-- vim.cmd(command)
-- 		end
-- 	end
-- end

return M
