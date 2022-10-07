local M = {}
function M.get_output(command)
    local first = io.popen(command)
    local output = first:read("*all")
    return output
end

function M.do_tool(params)
	if params == nil then return end
	local command = ""
	for _ , param in ipairs(params) do
		command = command .. " " .. param
	end
	return M.get_output("xdotool" .. command)
end
return M
