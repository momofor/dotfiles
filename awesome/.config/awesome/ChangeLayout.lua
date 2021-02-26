-- changing layouts
I = 1
function ChangeLayout ()
    if I < 2 then
        I = I + 1
    else
        I = 1
    end
    CurrentLayout = Layouts[I]
    local layoutChangedNotification = Coolu:add{
        titleuu = "Yo Layout do be changed" ,
        textuu = "You Layout now Is the now Hot shit wich is \n " .. CurrentLayout
    }
    layoutChangedNotification:print()
    return CurrentLayout
end
