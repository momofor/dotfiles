local naughty       = require("naughty")
I = 1


function ChangeLayout()
    CurrentLayout = Layouts[I]
    local max = #Layouts
    if I < max then
        I = I + 1
        else
            I = 1
    end

    naughty.notify({
        title = "You Changed you layout to " .. CurrentLayout ,
        text = "To Change you layout again press mod ctl l" })
    return CurrentLayout
end

