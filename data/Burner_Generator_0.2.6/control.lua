
require "defines"
require "util"


script.on_event(defines.events.on_tick, function(event)
			check_pots()

end)

script.on_event(defines.events.on_built_entity, function(event)

		if event.created_entity.name == "burner-generator" then	

			local pot = event.created_entity
			local surface = pot.surface
			local XY = pot.position
			local lid =	surface.create_entity{name = "burner-generator-power", position = XY, force= game.forces.neutral}
						if global.pot == nil							
						then global.pot = {}
						end
					table.insert(global.pot, pot)
					
					pot.fluidbox[1] = {type="water", amount=100, temperature=15}
					lid.fluidbox[1] = {type="water", amount=0.95, temperature=15}
		
	end
end)


script.on_event(defines.events.on_robot_built_entity, function(event)

		if event.created_entity.name == "burner-generator" then	

			local pot = event.created_entity
			local surface = pot.surface
			local XY = pot.position
			local lid =	surface.create_entity{name = "burner-generator-power", position = XY, force= game.forces.neutral}
						if global.pot == nil							
						then global.pot = {}
						end
					table.insert(global.pot, pot)
					
					pot.fluidbox[1] = {type="water", amount=100, temperature=15}
					lid.fluidbox[1] = {type="water", amount=9.5, temperature=15}
		
	end
end)



function check_pots()
   if global.pot ~= nil then
      for k,pot in pairs(global.pot) do
      	if k % 40 == game.tick % 40 then
					if pot.valid then
										if pot.energy ~= 0 then
										local X = pot.position.x
										local Y = pot.position.y + 0.5
										lid = {}
									lid =	pot.surface.find_entities_filtered{area = {{X -0.5, Y - 0.5 }, {X + 0.5  , Y +0.5 }}, name= "burner-generator-power"}
									if lid[1] ~= nil then
									local 	top = lid[1].fluidbox[1]
																		if top == nil then 	top = {type="water", amount=1, temperature=15} end
									if top ~= nil then
										if pot.fluidbox[1] ~= nil then 
										bot = pot.fluidbox[1]



									t1 = top["temperature"]
									v1 = top["amount"] * 100
									t2 = bot["temperature"]
									v2 = bot["amount"]
									dv = v2 - v1

							
									if v1 < 99 then
										v1 = 100
										t2 = 99 end				

										bot["temperature"] = t2
										pot.fluidbox[1] = bot
										top["amount"]= v1/100
										top["temperature"] = 100
										lid[1].fluidbox[1] = top
											end
					end
end
end

else table.remove(global.pot, k) --game.players[1].print("pot removed")
end
end
end	
end
end
				
				
	

script.on_event(defines.events.on_preplayer_mined_item , function(event)

	if event.entity.name == "burner-generator" then
	local X = event.entity.position.x 
	local Y = event.entity.position.y + 0.5
	
		
		local power = {}		
		panels =	game.players[1].surface.find_entities_filtered{area = {{X -0.5, Y - 0.5 }, {X + 0.5  , Y +0.5 }}, name= "burner-generator-power"}
		if panels[1] ~= nil then
		panels[1].destroy()	end
		
		
	end


end)





script.on_event(defines.events.on_entity_died , function(event)

if event.entity.name == "burner-generator" then
	local X = event.entity.position.x 
	local Y = event.entity.position.y + 0.5
	
		
		local power = {}		
		panels =	game.players[1].surface.find_entities_filtered{area = {{X -0.5, Y - 0.5 }, {X + 0.5  , Y +0.5 }}, name= "burner-generator-power"}
		if panels[1] ~= nil then
		panels[1].destroy()	end
		
		
	end


end)

script.on_event(defines.events.on_robot_pre_mined  , function(event)

if event.entity.name == "burner-generator" then
	local X = event.entity.position.x 
	local Y = event.entity.position.y + 0.5
	
		
		local power = {}		
		panels =	game.players[1].surface.find_entities_filtered{area = {{X -0.5, Y - 0.5 }, {X + 0.5  , Y +0.5 }}, name= "burner-generator-power"}
		if panels[1] ~= nil then
		panels[1].destroy()	end
		
		
	end


end)

