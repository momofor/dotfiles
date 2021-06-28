local discordia = require "discordia"
local client = discordia.Client()
local coro = require "coro-http"
local json = require "json"
local _h = require "haha"

local commands = {
	{command = "ping" ,description = "sends pong message"},
	{command = "chuck" , description = "gives a random bad chuck joke"} ,
	{command = "cool" , description  = "how cool you are"} ,
	{command = "cmd" , description = "this command :)"}

}

function ChuckNorris(message)
	coroutine.wrap(function ()
	local link = "https://api.chucknorris.io/jokes/random"
		local result,body = coro.request("GET" , link)
		body = json.parse(body)
		-- message:reply("<@!" .. message.member.id .. "> " .. body["value"] )
		message:reply{
			embed = {
				title = "heres a good one",
				fields = {
					{name = "Chuck Norris:", value = body["value"] , inline = false}
				},
				color = discordia.Color.fromRGB(100,100,255).value
			}
		}
	end)()
end

client:on("messageCreate", function (message)
	local content = message.content
	local memberid = message.member.id

	if content:lower() == "!ping" then
		message:reply "pong"
	end
	if content:lower() == "!chuck" then
		ChuckNorris(message)
	end

	if content:lower():sub(1,#"!cool") == "!cool" then
		local mentioned = message.mentionedUsers
		if #mentioned == 1 then
			message:reply("<@!" .. mentioned[1][1] .. "> is " .. math.random(1,100) .. "% cool :sunglasses:")
			elseif #mentioned == 0 then
				message:reply("<@!" .. message.member.id .. "> is " .. math.random(1,100) .. "% cool :sunglasses:")
		end
	end
	if content:lower() == "!cmd" then
		local list = "```"
		for i, v in pairs(commands) do
			list = list .. v.command .. ": " .. v.description .. "\n"
		end
		list = list..("```")
		message:reply(list)
	end

	if content:lower() == "!payday" then
		local open = io.open("eco.json" , "r")
		local json_data = json.parse(open:read())
		local earned = math.random(5,10)
		open:close()
		if json_data[memberid] then
			json_data[memberid] = json_data[memberid] + earned
			else
				json_data[memberid] = earned
		end
		message:reply("<@!" .. memberid .. "> has earned " .. earned .. "$")

		open = io.open("eco.json" , "w")
		open:write(json.stringify(json_data))
		open:close()
	end

	if content:lower() == "!bal" then
		local open = io.open("eco.json" , "r")
		local parse = json.parse(open:read())
		open:close()
		message:reply("<@!" .. memberid .. "> has " .. (parse[memberid] or 0) .. "$")
	end
	local guild = message.guild
	if content:lower():sub(1,#"!test") == "!test" then
		local deleted = false
		if string.find(content:lower() , "https://google.com") then
			message:delete()
			message:reply("message deleted cause it's a link to google :sunglasses: I own the platform")
			deleted = true
		end

		if deleted == false and string.find(content:lower() , "https://twitch.tv/[%a]+$") then
			local link = string.gsub(content:lower() , "!test" , "")
			local link2 = string.gsub(link , "https://twitch.tv/" , "")
			message:reply(link2 .. " is my favourite streamer too :)")
			message.member:send("hello bro")
		end

		if deleted == false and string.find(content:lower() , "https://[%a]+.com") then
			message:setContent("woot")
			message:reply("nice your url is really a url")
		end
	end

	if content:lower():sub(1,#"!nice") == "!nice" then
		local role = content:lower():gsub("!nice" , "")
		local args = _h.mysplit(role , "%s")
		message:reply("creating role")

		if args[1] == "members" then
			for key, value in message.guild.members:__pairs() do
				message:reply("<@!" .. value:__hash() .. "> is litty")
			end
		end
		if args[1] == "guild_name" then
			message:reply(message.guild.name)
			message:reply("<@!" .. message.guild.owner.id .. "> niceu")
		end

		if args[1] == "mkrole" then
			message.guild:createRole("helloWorld")
		end

		if args[1] == "roles" then
			for key , value in message.guild.roles:__pairs() do
				local role_guild = message.guild:getRole(value:__hash())
				message:reply(role_guild.name)
			end
		end

		if args[1] ==  "rol" then
			for key , value in message.guild.roles:__pairs() do
				local role_guild = message.guild:getRole(value:__hash())
				if role_guild.name == args[2] then
					message:reply("@" .. role_guild.name .. " woot")
				end
			end
		end

	end
end)

client:run("Bot " .. io.open("./login.txt"):read())
