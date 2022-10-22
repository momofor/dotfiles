-- local tparser = vim.treesitter.get_parser(0, "lua")
-- local tstree = tparser:parse()
-- local ts_utils = require "nvim-treesitter.ts_utils"
-- -- local tsroot = tstree:root()
-- local cur_node = ts_utils.get_node_at_cursor()
-- print(cur_node)
-- while cur_node do
-- 	if cur_node:type() == "function_definition" then
-- 		print(cur_node)
-- 		break
-- 	end
-- 	cur_node = cur_node:parent()
-- 	print(cur_node)
-- end
-- print(cur_node, 0)
--
-- function noice()
-- 	local woo = "yeah"
-- end
--
-- print "Hello world"

local ts_utils = require "nvim-treesitter.ts_utils"
local ts_locals = require "nvim-treesitter.locals"
local function i(value)
	print(vim.inspect(value))
end

local function noice()
	print "cool"
end

local cur_node = ts_utils.get_node_at_cursor()
local scope = ts_locals.get_scope_tree(cur_node, 0)

function is_inside_a_function()
	for _, node in ipairs(scope) do
		if node:type() == "function_declaration" then
			return true
		end
	end
	return false
end

print(is_inside_a_function())
