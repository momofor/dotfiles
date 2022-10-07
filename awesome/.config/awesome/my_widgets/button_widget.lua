local wibox = require("wibox")
local awful = require("awful")
local gears = require("gears")

local buttons_example = wibox {
    visible = true,
    bg = '#2E3440',
    ontop = true,
    height = 1E00,
    width = 200,
    shape = function(cr, width, height)
        gears.shape.rounded_rect(cr, width, height, 3)
    end
}

local button = wibox.widget{
    text = "hello world" ,
    widget = wibox.widget.textbox
} -- <- code examples go here

buttons_example:setup {
    button,
    valigh = 'center',
    layout = wibox.container.place
}

awful.placement.top(buttons_example, { margins = {top = 40}, parent = awful.screen.focused()})
