local player =game.Players.LocalPlayer
--Array of banned terms, must be in lowercase
local prohibited={"55ox95","cmz","bull","goon","bbc","gooning","porn","snowbunny","fuck","sex","snow_bunny","vore","loli","furry","porno","sumiso","submisive"}

function isInArraySimple(arr_allowed, name)
	for i, value in ipairs(arr_allowed) do
		if value == name then
			return true
		end
		print()
	end

	return false
end
function isInArray(arr, name)
	--Array of permitted names, must be in lowercase
	local allowed={""}
	for i, value in ipairs(arr) do
		if string.find(name, value, 1, true) and isInArraySimple(allowed, name)==false then
			player:Kick("Username not allowed.")

			return true -- Return true if condition met
		end
	end
	return false -- Return false after checking all elements in arr
end

local name=player.Name
local name_display=player.DisplayName
isInArray(prohibited,string.lower(name))
isInArray(prohibited,string.lower(name_display))
