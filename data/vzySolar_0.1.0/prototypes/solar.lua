local function solarHealth(level)
	return 500 + 250 * level
end

local function solarDecreaseRes(level)
	return level
end

local function solarPercentRes(level)
	return level * 5
end

local function returnSolarAmount(level)
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

local function productionAmount(level)
	if level <= 0 then
		return 60
	else
		return 10 * productionAmount(level - 1)
	end
end

local solarMod = {
	typeName = "solar-panel",
	baseName = "solar-panel",
	objectName = "vzy-compressed-solar",
	entityMod = {
		healthFn = solarHealth,
		--baseResists = basesolarResistances,
		decreaseResFn = solarDecreaseRes,
		percentResFn = solarPercentRes,
		--fastReplaceGroup = "solar-panel",
    	production = productionAmount
	},
	itemMod = {
	},
	recipeMod = {
		usePreviousItem = true,
		previousCountFn = returnSolarAmount,
		energyRequiredFn = energyRequired,
		ingredients = {
			{ name = "copper-cable", countFn = returnCopperAmount },
		}
	},
	techMod = {
		--tech needed to use first tech
		baseTech = "solar-energy",
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
    	icon = "__base__/graphics/technology/solar-energy.png"
	},
	levelCount = 20,
}

return { solarMod }
