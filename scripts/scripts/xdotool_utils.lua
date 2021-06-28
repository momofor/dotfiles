local _h = require "_helpers"

local M = {}
--- gives the id of the window
--- @param window_name string
--- @return number  window_id
function M.get_window(window_name)
	return _h.do_tool {"search" , "'" .. window_name .. "'"  , "|" , "head -1"}
end

--- activates the window
--- @param window_id number the id from get_window
--- @return nil
function M.window_activate(window_id)
	_h.do_tool {"windowactivate" , "--sync" , window_id }
end

return M
