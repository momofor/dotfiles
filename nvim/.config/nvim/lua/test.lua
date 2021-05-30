-- return a string: either yes or no
--- @param no string no value
--- @param yes string yes value
--- @return string
local function testuw(no , yes)
    return("either " .. yes .. " or " .. no)
end

testuw("not nice" , "nice")
