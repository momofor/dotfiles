local coro = require "coro-http"
local json = require "json"

--- @param subreddit string
---@param sorting_method string
---@param limit number
---@param time string
local function mainu(subreddit , sorting_method , limit , time)
	coroutine.wrap(function ()
		local link = "https://www.reddit.com/r/" .. subreddit  .. "/" .. sorting_method .. ".json?limit=" .. limit .. "&t=" .. time
		local result, body = coro.request("GET" , link)
		for _, post in pairs(json.parse(body)['data']['children'])do
			local post_info = post['data']
			print("------------------------------------------\n")
			print(post_info['title'])
			print("score is " .. post_info['score'] .. "\n")
			print("ratio " .. post_info['upvote_ratio'] * 100 .. "%" .. "\n")
			print("link is " .. post_info['url'].. "\n")
			print("written by " .. post_info['author'] .. "\n")
			print("------------------------------------------\n")
		end

	end)()
end


local  open , failure = io.open("eco.json" , "r")
local parse

print(failure)
print(open)

if  failure then
	print("error fixing problem")
	open = io.open("eco.json" , "w")
	open:write('{"sub":"lua"}')
	print("the file now has the sub lua to change the sub just change it in the file")
	open:close()
	open = io.open("eco.json" , "r")
	parse = json.parse(open:read())
	open:close()
	else
		parse = json.parse(open:read())
		open:close()
end

 mainu(parse["sub"], "top" , 10 , "all")




