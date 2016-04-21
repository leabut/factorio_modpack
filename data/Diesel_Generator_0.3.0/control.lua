
require "defines"
require "util"


script.on_event(defines.events.on_tick, function(event)
			check_generators()
end)




script.on_event(defines.events.on_built_entity, function(event)

	if event.created_entity.name == "petroleum-generator" then	
			local petroleum_generator = event.created_entity
						if global.petroleum_generator == nil
						then global.petroleum_generator = {}
						end
					table.insert(global.petroleum_generator, petroleum_generator)

	end
end)


script.on_event(defines.events.on_robot_built_entity, function(event)

	if event.created_entity.name == "petroleum-generator" then		
			local petroleum_generator = event.created_entity
						if global.petroleum_generator == nil
						then global.petroleum_generator = {}
						end
					table.insert(global.petroleum_generator, petroleum_generator)
	end
end)



function check_generators()
   if global.petroleum_generator ~= nil then
      for k,gen in pairs(global.petroleum_generator) do
      	if k % 60 == game.tick % 60 then
					if gen.valid then
         				if gen.fluidbox[1] ~= nil then 
         				local pot = gen.fluidbox[1]
         				local p = gen.position
					
						if pot.type == "petroleum-gas" then 					
						pot["temperature"] = 80
						gen.surface.pollute({p.x, p.y}, 0.8)

						elseif pot.type == "light-oil" then 					
						pot["temperature"] = 100
						gen.surface.pollute({p.x, p.y}, 1)

						elseif pot.type == "heavy-oil" then 					
						pot["temperature"] = 60
						gen.surface.pollute({p.x, p.y}, 0.6)

						else pot["temperature"] = 15 end

						gen.fluidbox[1] = pot

							end
						else table.remove(global.petroleum_generator, k)
end				
end
end
end
end
				

				
			
