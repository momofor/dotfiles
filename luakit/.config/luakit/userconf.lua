local select = require "select"

select.label_maker = function ()
    local chars = charset("asonetuh")
    return trim(sort(reverse(chars)))
end
