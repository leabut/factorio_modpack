local function Health(level)
	return 1000 + 250 * level
end

local function DecreaseRes(level)
	return level
end

local function PercentRes(level)
	return level * 5
end

local function returnAmount(level)
	return 1
end

local function returnCopperAmount(level)
	return 5
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

local function productionAmount(level)
	if level <= 0 then
		return 60
	else
		return 10 * productionAmount(level - 1)
	end
end

local function fnWeight(level)
	return 1500
end
local function fnSpeed(level)
	return 1.2 + 0.2 * level
end
local function fnPower(level)
	return "1000kW"
end
local function fnBraking(level)
	return 15
end
local function fnFriction(level)
	return 0.0
end
local function fnAirResistance(level)
	return -0.002
end
local solarMod = {
	typeName = "locomotive",
	baseName = "diesel-locomotive",
	objectName = "vzy-faster-train",
	entityMod = {
		healthFn = Health,
		--baseResists = basesolarResistances,
		decreaseResFn = DecreaseRes,
		percentResFn = PercentRes,
		--fastReplaceGroup = "solar-panel",
    	production = productionAmount,
    	--train things
    	weight = fnWeight,
    	max_speed = fnSpeed,
    	max_power = fnPower,
    	braking_force = fnBraking,
    	friction_force = fnFriction,
    	-- this is a percentage of current speed that will be subtracted
    	air_resistance = function(level) return -0.002 end,
	},
	itemMod = {
	},
	recipeMod = {
		usePreviousItem = true,
		previousCountFn = returnAmount,
		energyRequiredFn = energyRequired,
		ingredients = {
			{ name = "engine-unit", countFn = returnCopperAmount },
		}
	},
	techMod = {
		--tech needed to use first tech
		baseTech = "railway",
		--techName = "vzy-compressed-solar-techName",
		--order = "vzy-solar",
		countFn = researchAmount,
		timeFn = researchTime,
		ingredients = {
			{"science-pack-1", packAmount},
			{"science-pack-2", packAmount},
			{"science-pack-3", packAmount, minLevel = 5} 
		}
	},
	groupMod = {
    	icon = "__base__/graphics/technology/railway.png"
	},
	levelCount = 20,
}

return { solarMod }
