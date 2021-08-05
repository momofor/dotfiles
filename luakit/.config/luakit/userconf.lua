local select = require "select"

select.label_maker = function()
    local chars = charset("asonetuh")
    return trim(sort(reverse(chars)))
end

local editor = require "editor"
editor.editor_cmd = "kitty -e nvim {file} +{line}"

local actions = {
    test = {
        desc = "a cool function by momofor",
        func = function(w)
            w:notify("COOL FUNCTION BOOY")
        end
    }
}

local modes = require "modes"
modes.add_cmds({{":noice", actions.test}})
