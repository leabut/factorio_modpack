require "defines"
require "util"
-----------------------------------------------------------
-- On game initialization
-----------------------------------------------------------
function vzy_Initialize(event)
	if not global.vzy_PollutionEngine then
		global.vzy_PollutionEngine = {}
	end
end
local function vzy_IsPollutionEngine(name)
  if    (name == "vzy-pollution-engine-1") then
    return true
  else
    return false
  end
end
local function vzy_GetNeighbor(entity, index)
  if(#entity.neighbours >= index)
  then
    return entity.neighbours[index];
  else
    return nil;
  end
end
-----------------------------------------------------------
-- when a boiler is created
-----------------------------------------------------------
function vzy_Created(event)
  if vzy_IsPollutionEngine(event.created_entity.name) then
    local engine = event.created_entity
    engine.fluidbox[1] = {type="water", amount=10, temperature=15}
    -- ldEB_DebugObj("Created boiler", boiler)
    table.insert(global.vzy_PollutionEngine, engine)
  end
end
-----------------------------------------------------------
-- just before a boiler is mined
-----------------------------------------------------------
function vzy_Mined(event)
  if vzy_IsPollutionEngine(event.entity.name) then
  	print("Mined")
    local engine = event.entity
		for i=1,#global.vzy_PollutionEngine do
			if entity == global.vzy_PollutionEngine[i] then
				table.remove(global.vzy_PollutionEngine, i)
				return
			end
		end
  end
end
-----------------------------------------------------------
-- On each game tick
-----------------------------------------------------------
function vzy_Tick(event)
  --[[
      need to work out the math here...
      1 Watt = 1 Joule per second
      water's specific heat is 4.2 joules per gram per degree (C) or 4.2 kJ / kg / C
      regular boiler: 390 kW @ 50% = 195 kJ / sec -> heating 46C / unit / sec
      our boiler    : 390 kW @ 90% = 351 kJ / sec -> heating 83C / unit / sec
        -- boiler's energy = 6933.33(3)
        -- assuming entity.energy is already computed as useful energy = energy consumed * efficiency (in Joules) = 351K
        -- that's a factor of 50
  --]]
  -- assume it's water here: 100C max, 4.2 J/g/degree
  -- specific_heat = specific_heat / 50; -- see reasoning above
  local max_temp = 100 -- degree C
  local min_temp = 15
  local range_temp = max_temp - min_temp
  local pollutionEffectiveness = 0.01
  local max_amt = 10 -- game constant?
  for key, engine in pairs(global.vzy_PollutionEngine) do
  	if (#engine.fluidbox > 0) then
    --if engine.valid and (#engine.fluidbox > 0) and (engine.fluidbox[1] ~= nil) then
    	pollutionAmount = script.get_pollution(engine.position)
    	tempAmount = pollutionAmount
    	if tempAmount > range_temp*pollutionEffectiveness then
    		tempAmount = range_temp*pollutionEffectiveness
    	end
    	script.pollute(engine.position, tempAmount * -1)
    	engine.fluidbox[1] = {type="water", amount=10, temperature=(tempAmount/pollutionEffectiveness)+min_temp}
    end
  end
end
-----------------------------------------------------------
-- register our handler
-----------------------------------------------------------
script.on_init(vzy_Initialize)
script.on_event(defines.events.on_tick, vzy_Tick)
script.on_event(defines.events.on_built_entity, vzy_Created)
script.on_event(defines.events.on_preplayer_mined_item, vzy_Mined)
script.on_event(defines.events.on_robot_built_entity, vzy_Created)
script.on_event(defines.events.on_robot_pre_mined, vzy_Mined)
script.on_event(defines.events.on_entity_died, vzy_Mined)
