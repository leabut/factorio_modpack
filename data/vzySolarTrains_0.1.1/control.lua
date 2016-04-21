require "defines"
script.on_init(function() On_Load() end)
script.on_load(function() On_Load() end)
script.on_event(defines.events.on_tick, function() On_Tick() end)

script.on_event(defines.events.on_built_entity, function(event) On_Built(event) end)
script.on_event(defines.events.on_robot_built_entity, function(event) On_Built(event) end)
script.on_event(defines.events.on_preplayer_mined_item, function(event) On_Removed(event) end)
script.on_event(defines.events.on_robot_pre_mined, function(event) On_Removed(event) end)
script.on_event(defines.events.on_entity_died, function(event) On_Removed(event) end)
ticks = 120
tickWait = 60
letters = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
"-","_"}
function brute(item)
	stringArr = {1}
	print("Working: '.'")
	while #stringArr <= 15 do
		name = ""
		for i=1,#stringArr do
			name = name .. letters[stringArr[i]]
		end
		if not item[name] then
			print("Found '" .. name .. "' it is: " .. type(item[name]))
		end
		good = false
		iSub = 1
		while not good do
			good = true
			stringArr[iSub] = stringArr[iSub] + 1
			if stringArr[iSub] > #letters then
				if iSub == 1 then
					print("Working: '." .. string.sub(name,2) .. "'")
				end
				good = false
				stringArr[iSub] = 1
				iSub = iSub + 1
			end
		end
	end
end
function On_Load()
	if not global.trainList then
		global.trainList = {}
	end
	--print("Train power: ",global.trainList[1].energy)
	--print(global.trainList[1].help())
	--brute(global.trainList[1])
end
function On_Tick()
		for i=1,#global.trainList do
			--print("Pre  Train #",i," power: ",global.trainList[i].energy)
			global.trainList[i].energy = 500000000
			--print("Post Train #",i," power: ",global.trainList[i].energy)
		end
end

function On_Built(event)
	local entity = event.created_entity
	if entity.name == "vzy-solar-locomotive" then
    	global.trainList[#global.trainList+1] = entity
    end
end
function On_Removed(event)
	local entity = event.entity
	if entity.name == "vzy-solar-locomotive" then
		--this needs the index... to lazy and it's a copy from another mod that does this same thing...
		--that other mod had the issue and wasn't fixed...
		for i=1,#global.trainList do
			if entity == global.trainList[i] then
				table.remove(global.trainList, i)
				return
			end
		end
    end
end
