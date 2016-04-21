local function Health(level)
	return 500 + 250 * level
end

local function DecreaseRes(level)
	return level
end

local function PercentRes(level)
	return level * 5
end

local function returnAmount(level)
	return 8
end

local function returnCopperAmount(level)
	return 10
end

local function energyRequired(level)
	return 1 + level / 2
end

local function researchTime(level)
	return 30 + math.floor(10 * level / 2)
end

local function researchAmount(level)
	return 100 + 50 * level
end

local function packAmount(level)
	return 1 + math.floor(level / 2)
end

local function fnChargeCooldown(level)
	return 30 / (level + 1)
end
local function fnDischargeCooldown(level)
	return 60 / (level + 1)
end
local function fnFlowLimit(level)
	if level <= 0 then
		return 300
	else
		return 10 * fnFlowLimit(level - 1)
	end
end
local function fnCapacityLimit(level)
	if level <= 0 then
		return 5
	else
		return 10 * fnFlowLimit(level - 1)
	end
end
local function fnEnergySource(level)
	return {
      		type = "electric",
      		buffer_capacity = fnCapacityLimit(level) .. "MJ",
      		usage_priority = "terciary",
      		input_flow_limit = fnFlowLimit(level) .. "kW",
      		output_flow_limit = fnFlowLimit(level) .. "kW"
    	}
end

local Mod = {
	typeName = "accumulator",
	baseName = "basic-accumulator",
	objectName = "vzy-compressed-accumulator",
	entityMod = {
		healthFn = Health,
		decreaseResFn = DecreaseRes,
		percentResFn = PercentRes,
		--New for accumulators
    	discharge_cooldown = fnDischargeCooldown,
    	charge_cooldown = fnChargeCooldown,
    	energy_source = fnEnergySource,
	},
	itemMod = {
	},
	recipeMod = {
		usePreviousItem = true,
		previousCountFn = returnAmount,
		energyRequiredFn = energyRequired,
		ingredients = {
			{ name = "copper-cable", countFn = returnCopperAmount },
		}
	},
	techMod = {
		--tech needed to use first tech
		baseTech = "electric-energy-accumulators-1",
		countFn = researchAmount,
		timeFn = researchTime,
		ingredients = {
			{"science-pack-1", packAmount},
			{"science-pack-2", packAmount},
			{"science-pack-3", packAmount, minLevel = 5} 
		}
	},
	groupMod = {
    	icon = "__base__/graphics/technology/electric-energy-acumulators.png"
	},
	levelCount = 20,
}

return { Mod }
