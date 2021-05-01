#! /usr/bin/env luajit
local _h = require("_helpers")
local M = {}

function M.is_app_installed(apps)
    local not_installed = {}
    for _,app in pairs(apps) do
        local is_installed = _h.get_output("which " .. app)
        if is_installed == "" then
            local next_index = #not_installed + 1
            not_installed[next_index] = app
        end
    end
    if not_installed ~= nil then
        return not_installed
    else
        return nil
    end
end
function M.install_app(app_name)
    _h.exec("sudo apt install " .. app_name)
end

return M
