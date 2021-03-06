-- made with by Mohammed Amine Chennoufi(momofor)
                                                        --▄▄▄▄
                                                      --▄█▀ ▀▀
                                                      --██▀
--▀████████▄█████▄   ▄██▀██▄▀████████▄█████▄   ▄██▀██▄ █████   ▄██▀██▄▀███▄███
  --██    ██    ██  ██▀   ▀██ ██    ██    ██  ██▀   ▀██ ██    ██▀   ▀██ ██▀ ▀▀
  --██    ██    ██  ██     ██ ██    ██    ██  ██     ██ ██    ██     ██ ██
  --██    ██    ██  ██▄   ▄██ ██    ██    ██  ██▄   ▄██ ██    ██▄   ▄██ ██
--▄████  ████  ████▄ ▀█████▀▄████  ████  ████▄ ▀█████▀▄████▄   ▀█████▀▄████▄

local M = {}
-- checks if a parameter is nil
function M.is_nil(opt)
    if (type(opt) == "nil") then
        return true
    end
    return false
end

-- returns user input
function M.input(opts , message )
    message = message or ""
    if (M.is_nil(opts)) then
        io.write(message)
        return io.read()
    end
    io.write(message)
    return io.read(opts)
end

-- returns current directory
function M.current_dir()
    return os.getenv("PWD")
end

-- executes a program
function M.exec(program)
    os.execute(program)
end

-- makes a new file
function M.mk_file(file_name)
    io.open(file_name , "w")
end

-- removes a file
function M.rm_file(file_name)
    os.remove(file_name)
end

-- search and replace in a file
function M.rpl(string , word , new_word)
    string:gsub(word ,new_word)
end

-- appends to a file
function M.append(file_name , text)
    io.open(file_name , "a+")
    io.output(file_name)
    io.write(text)
    io.close()
end
-- looks for lines that match regex in a file
function M.lines_match(regexp, path)
    local lines = {}
    for line in io.lines(path) do
        if string.match(line, regexp) then
            lines[#lines + 1] = line
        end
    end
    return lines
end
--copy files
function M.cp(file , dest)
    M.exec("cp " .. file .. " " .. dest)
end
--get output of command
function M.get_output(command)
    local first = io.popen(command)
    local output = first:read("*all")
    return output
end
-- write formated message
function M.format(message , vars)
    print(string.format(message , vars))
end
--map over array
function M.map(arr)
    for _,key in pairs(arr) do
        arr[#arr+1] = key
    end
end
-- check if element exists in array
function M.is_in_array(element , array)
    if element == nil then return nil end
    for _,item in pairs(array) do
        if item == element then
            return element
        else
            return nil
    end
end
end
-- kind of a fake switch statement from clang
function M.switch(choice , case)
    if case[choice] then
        case[choice]()
    else
        case["default"]()
    end
end
-- this was very hard
function M.contact(stringu , arr)
    new_kid = stringu
    for words in string.gmatch(new_kid, "${%a+}") do
        local testvar = string.gsub(words , "[${}]" , "")
        new_kid = new_kid:gsub("${" .. testvar .. "}" , arr[testvar])
    end
    print(new_kid)
end
function M.mysplit (inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
end
-- do stuff with awesomewm
function M.do_tool(params)
	if params == nil then return end
	local command = ""
	for _ , param in ipairs(params) do
		command = command .. " " .. param
	end
	return M.get_output("xdotool" .. command)
end

return M
