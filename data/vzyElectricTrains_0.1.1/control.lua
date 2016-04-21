require "defines"
script.on_init(function() On_Load() end)
script.on_load(function() On_Load() end)
script.on_event(defines.events.on_tick, function() On_Tick() end)

script.on_event(defines.events.on_built_entity, function(event) On_Built(event) end)
script.on_event(defines.events.on_robot_built_entity, function(event) On_Built(event) end)
script.on_event(defines.events.on_preplayer_mined_item, function(event) On_Removed(event) end)
script.on_event(defines.events.on_robot_pre_mined, function(event) On_Removed(event) end)
script.on_event(defines.events.on_entity_died, function(event) On_Removed(event) end)
--This is the Max Energy a train will have with a 600kW power limit.
trainMaxPower = 10666.6666666667
function On_Load()
	if not global.vzyPoweredTrainList then
		global.vzyPoweredTrainList = {}
	end
	if not global.vzyPoweredTrainAccumulatorList then
		global.vzyPoweredTrainAccumulatorList = {}
	end
end
function On_Tick()
	myString = ""
	enNeeded = 0
	for i=1,#global.vzyPoweredTrainList do
		enNeeded = enNeeded + (trainMaxPower - global.vzyPoweredTrainList[i].energy)
	end
	myString = myString .. " " .. #global.vzyPoweredTrainList .. " Trains want " .. enNeeded .. " Power."
	if enNeeded == 0 then
		--print(myString)
		return
	end
	enStored = 0
	for i=1,#global.vzyPoweredTrainAccumulatorList do
		enStored = enStored + global.vzyPoweredTrainAccumulatorList[i].energy
	end
	myString = myString .. " " .. #global.vzyPoweredTrainAccumulatorList .. " ACCUs have " .. enStored .. " Power."
	if enStored == 0 then
		--print(myString)
		return
	end
	enAvailable = enStored - enNeeded
	myString = myString .. " for a net of " .. enAvailable .. " Power."
	--print(myString)
	if enAvailable >= 0 then
		--we have enough to give power to all of our trains!
		for i=1,#global.vzyPoweredTrainList do
			global.vzyPoweredTrainList[i].energy = trainMaxPower
		end
		enPer = enAvailable / #global.vzyPoweredTrainAccumulatorList 
		for i=1,#global.vzyPoweredTrainAccumulatorList do
			global.vzyPoweredTrainAccumulatorList[i].energy = enPer
		end
	else
		--we need to spare power to all the trains, they won't be able to be maxed out :<
		for i=1,#global.vzyPoweredTrainAccumulatorList do
			global.vzyPoweredTrainAccumulatorList[i].energy = 0
		end
		--enAvailable is negetive!
		enPer = (enNeeded + enAvailable) / #global.vzyPoweredTrainList
		for i=1,#global.vzyPoweredTrainList do
			global.vzyPoweredTrainList[i].energy = enPer
		end
	end
end

function On_Built(event)
	local entity = event.created_entity
	if entity.name == "vzy-Powered-locomotive" then
    	global.vzyPoweredTrainList[#global.vzyPoweredTrainList+1] = entity
    end
	if entity.name == "vzy-Powered-Accumulator" then
    	global.vzyPoweredTrainAccumulatorList[#global.vzyPoweredTrainAccumulatorList+1] = entity
    end
end
function On_Removed(event)
	local entity = event.entity
	if entity.name == "vzy-Powered-locomotive" then
		--this needs the index... to lazy and it's a copy from another mod that does this same thing...
		--that other mod had the issue and wasn't fixed...
		for i=1,#global.vzyPoweredTrainList do
			if entity == global.vzyPoweredTrainList[i] then
				table.remove(global.vzyPoweredTrainList, i)
				return
			end
		end
    end
	if entity.name == "vzy-Powered-Accumulator" then
		--this needs the index... to lazy and it's a copy from another mod that does this same thing...
		--that other mod had the issue and wasn't fixed...
		for i=1,#global.vzyPoweredTrainAccumulatorList do
			if entity == global.vzyPoweredTrainAccumulatorList[i] then
				table.remove(global.vzyPoweredTrainAccumulatorList, i)
				return
			end
		end
    end
end
