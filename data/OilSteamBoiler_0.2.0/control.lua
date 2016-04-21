require "defines"
require "util"


script.on_event(defines.events.on_tick, function(event)
			heat_pot()
end)


script.on_event(defines.events.on_built_entity, function(event)

	if event.created_entity.name == "OilSteamBoiler" then
	
			if global.steampot == nil then
				global.steampot = {}
			end
			
		local steampot = event.created_entity
			table.insert(global.steampot, steampot)
	end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)

	if event.created_entity.name == "OilSteamBoiler" then
	
			if global.steampot == nil then
				global.steampot = {}
			end
			
		local steampot = event.created_entity
			table.insert(global.steampot, steampot)
	end
end)




function heat_pot()

	if global.steampot ~= nil then 
		for k,steampot in pairs(global.steampot) do
			if k % 50 == game.tick % 50 then
			if steampot.valid then 
			if steampot.fluidbox[3] ~= nil then 

				local steambox = steampot.fluidbox[3]
					steamtemp = 100
					steambox["temperature"] = 100
					steampot.fluidbox[3] = steambox
				end
			else
				table.remove(global.steampot, k)
		end end
	end
	end
end
