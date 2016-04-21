require "defines"
require "util"
require "utils.ldUtils";

--[[ 
Everything will be prefixed by ldEB_

Persistent storage:
  - global.ldEB_AllBoilers -- a list of all boilers built.
--]]

-----------------------------------------------------------
-- On game initialization
-----------------------------------------------------------
function ldEB_Initialize(event)
	if global.ldEB_AllBoilers == nil then
		global.ldEB_AllBoilers = {}
	end
end
-----------------------------------------------------------
-- register our handler
-----------------------------------------------------------
script.on_init(ldEB_Initialize)

-----------------------------------------------------------
-- Utility
-----------------------------------------------------------
local function ldEB_GetNeighbor(entity, index)
  if(#entity.neighbours >= index)
  then
    return entity.neighbours[index];
  else
    return nil;
  end
end

-----------------------------------------------------------
-- On each game tick
-----------------------------------------------------------
function ldEB_Tick(event)
  -- how often to we raise the temperatures? every 1/5/10/30 ticks?
  -- game run at 60 ticks / sec
  --[[
  local frequency = 60;
  if (game.tick % frequency ~= 0)
  then
    return
  end
  local boil_off_frequency = frequency * 10;  -- how often do we boil off (lose) some liquid.
  --]]
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
  local specific_heat = 4200 -- J/unit/degree
  -- specific_heat = specific_heat / 50; -- see reasoning above
  local max_temp = 100 -- degree C
  local max_amt = 10 -- game constant?
  local debug = false; -- (game.tick % 600 == 0);
  invalid_boilers = {};
  for key, boiler in pairs(global.ldEB_AllBoilers)
  do
    --[[
    if(debug)
    then
      ldUtils_debugMsg("type(boiler) = " .. type(boiler));
      debug = false;
    end
    --]]
    if(boiler.valid)
    then
      if((boiler.energy > 0) and (#boiler.fluidbox > 0) and (boiler.fluidbox[1] ~= nil))
      then
        local fbox = boiler.fluidbox[1];
        if(debug)
        then
          ldUtils_debugMsg("original   amt/temp/energy: " .. fbox.amount .. "/" .. fbox.temperature .. "/" .. boiler.energy);
        end
        -- because we're based on a pump, all pumpings are done for us automatically.
        local current_temp = fbox.temperature
        if ((current_temp < max_temp) and (fbox.amount > 0))
        then
          local raise = boiler.energy / (fbox.amount * specific_heat)
          if (current_temp + raise > max_temp)
          then
            raise = max_temp - current_temp
          end
          local usage = raise * (fbox.amount * specific_heat)
          fbox.temperature = current_temp + raise
          boiler.energy = boiler.energy - usage
          boiler.fluidbox[1] = fbox
        end
        if(debug)
        then
          ldUtils_debugMsg("after heat amt/temp/energy: " .. fbox.amount .. "/" .. fbox.temperature .. "/" .. boiler.energy);
        end
        debug = false;
      end -- if energy
    else -- if valid
      table.insert(invalid_boilers, boilers)
    end -- if valid
  end -- for
  for key, boiler in pairs(invalid_boilers)
  do
    ldUtils_debugMsg("invalid, type(boiler) = " .. type(boiler));
    global.ldEB_AllBoilers = ldUtils_removeByVal(global.ldEB_AllBoilers, boiler);
  end
end
-----------------------------------------------------------
-- register our handler
-----------------------------------------------------------
script.on_event(defines.events.on_tick, ldEB_Tick)

-----------------------------------------------------------
-- utility functions
-----------------------------------------------------------
local function ldEB_IsElectricBoiler(name)
  if    (name == "ldEB-electric-boiler") 
  then
    return true
  else
    return false
  end
end

-----------------------------------------------------------
-- when a boiler is created
-----------------------------------------------------------
function ldEB_BoilerCreated(event)
  if ldEB_IsElectricBoiler(event.created_entity.name) 
  then
    local boiler = event.created_entity
    -- ldUtils_debugObj("Created boiler", boiler)
    table.insert(global.ldEB_AllBoilers, boiler)
  end
end
-----------------------------------------------------------
-- register our handler
-----------------------------------------------------------
script.on_event(defines.events.on_built_entity, ldEB_BoilerCreated)
script.on_event(defines.events.on_robot_built_entity, ldEB_BoilerCreated)

-----------------------------------------------------------
-- just before a boiler is mined
-----------------------------------------------------------
function ldEB_BoilerPreMined(event)
  if ldEB_IsElectricBoiler(event.entity.name) 
  then
    local boiler = event.entity
    -- ldUtils_debugObj("Destroyed boiler", boiler)
    global.ldEB_AllBoilers = ldUtils_removeByVal(global.ldEB_AllBoilers, boiler);
  end
end
-----------------------------------------------------------
-- register our handler
-----------------------------------------------------------
script.on_event(defines.events.on_preplayer_mined_item, ldEB_BoilerPreMined)
script.on_event(defines.events.on_robot_pre_mined, ldEB_BoilerPreMined)

-----------------------------------------------------------
-- a boiler died
-----------------------------------------------------------
function ldEB_BoilerDied(event)
  -- same logic as above
  ldEB_BoilerPreMined(event) 
end
-----------------------------------------------------------
-- register our handler
-----------------------------------------------------------
script.on_event(defines.events.on_entity_died, ldEB_BoilerDied)
