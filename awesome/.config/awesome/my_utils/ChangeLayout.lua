local naughty       = require("naughty")
I = 1


function ChangeLayout()
    CurrentLayout = Layouts[I]
    for index, value in ipairs (Layouts) do
        Max = index
    end
    if I < Max then
        I = I + 1
    else
        I = 1
    end
    naughty.notify({
        title = "You Changed you layout to " .. CurrentLayout ,
        text = "To Change you layout again press mod ctl l" })
    return CurrentLayout
end

