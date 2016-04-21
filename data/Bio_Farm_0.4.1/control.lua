require "defines"
require "util"


---------------------------------------------
script.on_event(defines.events.on_robot_built_entity, function(event) On_Built(event) end)
script.on_event(defines.events.on_built_entity, function(event) On_Built(event) end)
script.on_event({defines.events.on_entity_died,defines.events.on_robot_pre_mined_item,defines.events.on_preplayer_mined_item,},function(event) On_Remove(event) end)


---------------------------------------------
function On_Built(event)
     
    --- Bio Farm has been built
	if event.created_entity.name == "bf_bio_farm" then
	
    local surface = event.created_entity.surface
    local force = event.created_entity.force
	surface.create_entity({name = "bf_medium-electric-pole_for_Bio_Farm", position = event.created_entity.position, force = force})
	surface.create_entity({name = "bf_light_for_Bio_Farm", position = event.created_entity.position, force = force})
	surface.create_entity({name = "bf_solar-panel_for_Bio_Farm", position = event.created_entity.position, force = force})
	
	
	end
	
end
 
---------------------------------------------
function On_Remove(event)
	
	--- Bio Farm has been removed
   	if event.entity.name == "bf_bio_farm" then
		
		res2 = game.get_surface(1).find_entities_filtered{name="bf_medium-electric-pole_for_Bio_Farm", area=GetArea(event.entity.position, 0.5)}
		res = game.get_surface(1).find_entities_filtered{name="bf_light_for_Bio_Farm", area=GetArea(event.entity.position, 0.5)}
		res3 = game.get_surface(1).find_entities_filtered{name="bf_solar-panel_for_Bio_Farm", area=GetArea(event.entity.position, 0.5)}

		if #res then
         -- If we've found it, destroy it.
         res[1].destroy()
		end
		if #res2 then
         -- If we've found it, destroy it.
         res2[1].destroy()
		end
		if #res3 then
         -- If we've found it, destroy it.
         res3[1].destroy()
		end
	end
	--[[
	--- Bio Farm's Light Source has been removed
   	if event.entity.name == "bf_bio_farm_light" then		
		res = game.get_surface(1).find_entities_filtered{name="bf_bio_farm", area=GetArea(event.entity.position, 0.5)}

		if #res then
         -- If we've found it, destroy it.
         res[1].destroy()
		end
	end
        ]]
end

function GetArea(pos, radius)
   -- This calculates a box of the given radius around the given position.
   return {{x = pos.x - radius, y = pos.y - radius}, {x = pos.x + radius, y = pos.y + radius}}
end