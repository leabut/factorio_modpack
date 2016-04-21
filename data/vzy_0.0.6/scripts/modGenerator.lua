local function createObjectName(baseName, level)
	return baseName.."-"..level
end

local function modifyResistances(resistances, decreaseValue, percentValue)

	local decreaseMod = math.ceil(decreaseValue)
	local percentMod = math.ceil(percentValue)
	
	for _,resistance in pairs(resistances) do
	
		resistance.decrease = resistance.decrease or 0
		resistance.percent = resistance.percent or 0
		
		resistance.decrease = resistance.decrease + decreaseMod
		resistance.percent = resistance.percent + percentMod
		
		if resistance.percent > 100 then
			resistance.percent = 100
		end
	end
end

local function generateIngredients(ingredients, target, level)
	for _, ingredient in pairs(ingredients) do
		ingredient.minLevel = ingredient.minLevel or 1
		ingredient.maxLevel = ingredient.maxLevel or 1000
		
		if level >= ingredient.minLevel and level <= ingredient.maxLevel then
			local actualLevel = level - ingredient.minLevel + 1
			if ingredient[1] and ingredient[2] then
				target.ingredients[#target.ingredients + 1] = {ingredient[1], ingredient[2](actualLevel)}
			else
				target.ingredients[#target.ingredients + 1] = {ingredient.name, ingredient.countFn(actualLevel)}
			end
		end
	end
end

local function generatePrototypeData(objectName, dataMod, level)

	local entityMod = dataMod.entityMod
	local prototypeCopy = table.deepcopy(data.raw[dataMod.typeName][dataMod.baseName])
	
	prototypeCopy.name = objectName
	prototypeCopy.minable.result = objectName

	if entityMod then
		if entityMod.healthFn then
			prototypeCopy.max_health = entityMod.healthFn(level)
		end
		
		if entityMod.ammoCountFn then
			prototypeCopy.automated_ammo_count = entityMod.ammoCountFn(level)
		end
		
		if entityMod.fastReplaceGroup then
			prototypeCopy.fast_replaceable_group = entityMod.fastReplaceGroup
		else
			prototypeCopy.fast_replaceable_group = data.raw[dataMod.typeName][dataMod.baseName].fast_replaceable_group
		end

		if entityMod.rangeFn then
			prototypeCopy.attack_parameters.range = prototypeCopy.attack_parameters.range + entityMod.rangeFn(level)
		end
		
		if entityMod.baseResists and entityMod.decreaseResFn and entityMod.percentResFn then
			local resistancesCopy = table.deepcopy(entityMod.baseResists)
			modifyResistances(resistancesCopy, entityMod.decreaseResFn(level), entityMod.percentResFn(level))
			prototypeCopy.resistances = resistancesCopy
		end
		if entityMod.picture then
			prototypeCopy.picture = entityMod.picture(level)
		end
		if entityMod.production then
			prototypeCopy.production = (entityMod.production(level).."kW")
		end
		if entityMod.discharge_cooldown then
			prototypeCopy.discharge_cooldown = math.floor(entityMod.discharge_cooldown(level))
		end
		if entityMod.charge_cooldown then
			prototypeCopy.charge_cooldown = math.floor(entityMod.charge_cooldown(level))
		end
		if entityMod.energy_source then
			prototypeCopy.energy_source = entityMod.energy_source(level)
		end
		if entityMod.weight then
			prototypeCopy.weight = entityMod.weight(level)
		end
		if entityMod.max_speed then
			prototypeCopy.max_speed = entityMod.max_speed(level)
		end
		if entityMod.max_power then
			prototypeCopy.max_power = entityMod.max_power(level)
		end
		if entityMod.braking_force then
			prototypeCopy.braking_force = entityMod.braking_force(level)
		end
		if entityMod.friction_force then
			prototypeCopy.friction_force = entityMod.friction_force(level)
		end
		if entityMod.air_resistance then
			prototypeCopy.air_resistance = entityMod.air_resistance(level)
		end
	end
	
	data.raw[dataMod.typeName][objectName] = prototypeCopy
end

local function generateItemData(objectName, dataMod, level)

	local itemCopy = table.deepcopy(data.raw.item[dataMod.baseName])
	itemCopy.name = objectName
	itemCopy.place_result = objectName
	
	if dataMod.ItemGroup then
		itemCopy.subgroup = dataMod.ItemGroup
	end
	if dataMod.itemMod then
		if dataMod.itemMod.subgroup then
			itemCopy.subgroup = dataMod.itemMod.subgroup
		end
	end
	
	data.raw.item[objectName] = itemCopy
end

local function generateRecipeData(objectName, dataMod, level)

	local recipeCopy = table.deepcopy(data.raw.recipe[dataMod.baseName])
	recipeCopy.name = objectName
	recipeCopy.result = objectName
	recipeCopy.enabled = false
	
	local recipeMod = dataMod.recipeMod
	
	if recipeMod then
		if recipeMod.energyRequiredFn then
			recipeCopy.energy_required = recipeMod.energyRequiredFn(level)
		end
		
		recipeCopy.ingredients = {}
		
		if recipeMod.usePreviousItem then
			recipeCopy.ingredients = recipeCopy.ingredients or {}
		
			local prevObjectName = dataMod.baseName
			if level > 1 then
				prevObjectName = createObjectName(dataMod.objectName, level - 1)
			end
			
			recipeCopy.ingredients[#recipeCopy.ingredients + 1] = {prevObjectName, recipeMod.previousCountFn(level)}
		end
		
		if recipeMod.useItem and recipeMod.useItemName and recipeMod.useItemLevelFn and recipeMod.useItemCountFn then
			recipeCopy.ingredients = recipeCopy.ingredients or {}
			
			local itemName = createObjectName(recipeMod.useItemName, recipeMod.useItemLevelFn(level))
			recipeCopy.ingredients[#recipeCopy.ingredients + 1] = {itemName, recipeMod.useItemCountFn(level)}
			
		end

		if recipeMod.ingredients then
			generateIngredients(recipeMod.ingredients, recipeCopy, level)
		end
	end
	
	data.raw.recipe[objectName] = recipeCopy
end

function generateTechData(objectName, dataMod, level)
	
	local techMod = dataMod.techMod
	
	if techMod then
		
		local techCopy = table.deepcopy(data.raw.technology[techMod.baseTech])
		
		techCopy.effects[1].recipe = objectName
		
		if techMod.techName then
		else
			techMod.techName = (dataMod.objectName .. "-technology")
		end
		if techMod.techName then
			techCopy.name = createObjectName(techMod.techName, level)
		end
		techCopy.order = createObjectName(dataMod.objectName, level)
		if techMod.order then
			techCopy.order = createObjectName(techMod.order, level)
		end
		
		if level == 1 then
			techCopy.prerequisites = {techMod.baseTech}
		else
			techCopy.prerequisites = {createObjectName(techMod.techName, level - 1)}
			techCopy.upgrade = "true"
		end
		
		if techMod.countFn then
			techCopy.unit.count = techMod.countFn(level)
		end
		
		if techMod.timeFn then
			techCopy.unit.time = techMod.timeFn(level)
		end
		
		if techMod.ingredients then
			techCopy.unit = techCopy.unit or {}
			techCopy.unit.ingredients = {}
			generateIngredients(techMod.ingredients, techCopy.unit, level)
		end
		
		data.raw.technology[techCopy.name] = techCopy
	end

end

function generateGoupData(dataMod)
	groupName = dataMod.objectName
	if dataMod.groupMod then
		if dataMod.groupMod.name then
			groupName = dataMod.groupMod.name
		end
	end
	groupSubName = groupName .. "Sub"
	if dataMod.groupMod then
		if dataMod.groupMod.subName then
			groupSubName = dataMod.groupMod.subName
		end
	end
	groupOrder = groupName
	groupInvOrder = "a"
	groupInvSubOrder = "a"
	groupIcon = ""
	if dataMod.groupMod then
		if dataMod.groupMod.icon then
			groupIcon = dataMod.groupMod.icon
		end
		if dataMod.groupMod.order then
			groupOrder = dataMod.groupMod.order
		end
		if dataMod.groupMod.inventoryOrder then
			groupInvOrder = dataMod.groupMod.inventoryOrder
		end
		if dataMod.groupMod.subInventoryOrder then
			groupInvSubOrder = dataMod.groupMod.subInventoryOrder
		end
	end
	dataMod.ItemGroup = groupSubName
	data:extend({
  		{
	    	type = "item-group",
    		name = groupName,
	    	order = groupOrder,
	    	inventory_order = groupInvOrder,
	    	icon = groupIcon
  		},
  		{
		    type = "item-subgroup",
	    	name = groupSubName,
	    	group = groupName,
	    	order = groupInvSubOrder,
  		},  
	})
end

function generateData(dataMod)
	print("Generating Mod: "..dataMod.objectName)
	generateGoupData(dataMod)
	if data.raw[dataMod.typeName][dataMod.baseName].fast_replaceable_group then
	else
		data.raw[dataMod.typeName][dataMod.baseName].fast_replaceable_group = dataMod.typeName
	end
	for level = 1,dataMod.levelCount do
		local objectName = createObjectName(dataMod.objectName, level)
		print("Making: "..objectName)
		generateItemData(objectName, dataMod, level)
		generatePrototypeData(objectName, dataMod, level)
		generateRecipeData(objectName, dataMod, level)
		generateTechData(objectName, dataMod, level)
	end
end

function generateMod(mod)
	--print("Generating Mod: "..mod.objectName)
	if mod.objectName then
		generateData(mod)
	else
		for _, modData in ipairs(mod) do
			generateData(modData)
		end
	end
end
