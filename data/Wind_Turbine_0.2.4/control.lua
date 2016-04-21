
require "defines"
require "util"


script.on_event(defines.events.on_tick, function(event)

		if (game.tick % 25000) == 0 then
			change_wind_day()
		end

		if (game.tick % 2500) == 0 then
			change_wind_hour()
		end

		if (game.tick % 125) == 0 then
			tick_wind()
		end
		check_generators()
end)




script.on_event(defines.events.on_built_entity, function(event)

	if event.created_entity.name == "wind-turbine" then	
			local wind_turbine = event.created_entity
						if global.wind_turbine == nil
						then global.wind_turbine = {}
						end
					table.insert(global.wind_turbine, wind_turbine)
					wind_turbine.fluidbox[1] = {type="wind", amount=100, temperature=(game.wind_speed*2500)}

	end
end)


script.on_event(defines.events.on_robot_built_entity, function(event)

	if event.created_entity.name == "wind-turbine" then		
			local wind_turbine = event.created_entity
						if global.wind_turbine == nil
						then global.wind_turbine = {}
						end
					table.insert(global.wind_turbine, wind_turbine)
					wind_turbine.fluidbox[1] = {type="wind", amount=100, temperature=(game.wind_speed*2500)}
	end
end)



function check_generators()
   if global.wind_turbine ~= nil then

  	    for k,gen in pairs(global.wind_turbine) do
      		if k % 125 == game.tick % 125 then

				if gen.valid then
         			if gen.fluidbox[1] ~= nil then 

         					local pot = gen.fluidbox[1]
							pot["amount"] = 10				
							pot["temperature"] = 100*(game.wind_speed*25)
							gen.fluidbox[1] = pot
							
					else table.remove(global.wind_turbine, k)

					end				
				end
			end
		end
	end
end
		
function change_wind_hour()

	if global.wind_hour == nil
		then global.wind_hour = 0.02
	end
global.wind_hour = math.random(5,40)/1000
end

function change_wind_day()
	if global.wind_day == nil
		then global.wind_day = 1
		end

	global.wind_day = math.random(80,120)/100
end

function tick_wind()
if global.wind_hour == nil
		then global.wind_hour = 0.02
	end
if global.wind_day == nil
		then global.wind_day = 1
		end	
	local nv = global.wind_hour * global.wind_day
	local v = game.wind_speed

	if nv > v then 
		dv = (nv-v)/20
		game.wind_speed = v + dv
	end

	if nv < v then
		dv = (v-nv)/20
		game.wind_speed = v - dv
	end



end
				
			
