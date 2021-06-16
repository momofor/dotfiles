-- return a string: either yes or no
--- @param no string no value
--- @param yes string yes value
--- @return string
local function testuw(no , yes)
    return("either " .. yes .. " or " .. no)
end

local function yoink()
    print("wo")
end
testuw("not nice" , "nice" );
yoink();
local function foo()
    local bin
    if foo then
        for bar in pairs(foo) do
            bin = "Hello world! %s"
        end
    end
    return string.format(bin, 'foo');
end
