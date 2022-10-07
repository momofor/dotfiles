local naughty       = require("naughty")



--function Notif (titleu , messageu)
    --naughty.notify{
        --title = titleu ,
        --text = messageu ,
    --}
--end

-- Meta class
Coolu =  {textuu = "",titleuu = "" }

-- Primary method
function Coolu:add(u , textuu , titleuu)
    u = u or {}
    setmetatable(u , self)
    self.__index = self
    self.textuu = textuu or ""
    self.titleuu = titleuu or ""
    naughty.notify{
        title = self.titleuu ,
        text = self.textuu
    }
    return u
end


function Coolu:print()
    naughty.notify{
        title = self.titleuu,
        text = self.textuu
    }
end


return Coolu
