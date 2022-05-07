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

function M.prequire(module)
	local ok, err = pcall(require, module)
	if not ok then
		vim.notify(
			"[prequire|" .. debug.getinfo(2, "S").short_src .. "] Failed to load module `" .. module .. "`",
			vim.log.levels.ERROR
		)
	end
end

return M
