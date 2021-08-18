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

local modes = require("modes")
local video_cmd_fmt = "mpv --hwdec=auto --ytdl '%s'"
modes.add_binds(
    "ex-follow",
    {
        {
            "m",
            "Hint all links and open the video behind that link externally with MPV.",
            function(w)
                w:set_mode(
                    "follow",
                    {
                        prompt = "open with MPV",
                        selector = "uri",
                        evaluator = "uri",
                        func = function(uri)
                            assert(type(uri) == "string")
                            luakit.spawn(string.format(video_cmd_fmt, uri))
                            w:notify("Launched MPV")
                        end
                    }
                )
            end
        },
        {
            "M",
            "Open the video on the current page externally with MPV.",
            function(w)
                local uri = string.gsub(w.view.uri or "", " ", "%%20")
                luakit.spawn(string.format(video_cmd_fmt, uri))
                w:notify("Launched MPV")
            end
        }
    }
)
