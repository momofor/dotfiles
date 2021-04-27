local M = {}
-- checks if a parameter is nil
function M.is_nil(opt)
    if (type(opt) == "nil") then
        return true
    end
    return false
end

-- returns user input
function M.input(opts)
    if (M.is_nil(opts)) then
        return io.read()
    end

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

return M
