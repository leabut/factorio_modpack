
function vzyFnDoWork(recipe)
	print("Grinding to make "..recipe.name.."?")
	if not (string.find(recipe.name, "dust") == nil) then
		return
	end
	print("  Grinding.")
	duster = {
		category = "grinding",
		energy_required = 1,
		enabled = false,
		name = recipe.name.."-dust",
		result = recipe.name.."-dust",
		result_count = 2
	}
	cooker = {
		enabled = false,
		ingredients = {{recipe.name.."-dust", 1}},
		name = recipe.name.."-from-dust"
	}
	if recipe.energy_required then
		cooker.energy_required = recipe.energy_required - 1
		if cooker.energy_required < 0.1 then
			cooker.energy_required = 0.1
		end
	end
	data.raw.technology[duster.name] = {
		icon = "__base__/graphics/icons/copper-ore.png",
		name = duster.name,
		order = "grinding-"..duster.name,
		prerequisites = {"grinding"},
		type = "technology",
		effects = {
				{type = "unlock-recipe",recipe = duster.name},
				{type = "unlock-recipe",recipe = cooker.name}
			},
		unit = {
			count = 50,
			time = 30,
			ingredients = {
				{"science-pack-1",1},
				{"science-pack-2",1}
			}
		}
	}
	data.raw.item[duster.name] = {
		name = duster.name,
		order = "dust["..recipe.name.."]",
		stack_size = 50,
		subgroup = "raw-resource",
		type = "item",
		flags = {"goes-to-main-inventory"},
		icon = "__base__/graphics/icons/copper-ore.png"
	}
	_G.vzyGenerateThing(duster, recipe, nil)
	_G.vzyGenerateThing(cooker, recipe, nil)
end
function vzyFnWork(recipe)
	if recipe.name == "wood" then
		vzyFnDoWork(recipe)
		return
	end
	if recipe.category == "smelting" then
		vzyFnDoWork(recipe)
		return
	end
end

local machineName = "grinding-machine"
local machineFrom = "assembling-machine-2"

--Recipe Categories
_G.vzyGenerateThing({name = "grinding"}, data.raw["recipe-category"].smelting, nil)
--Grinder Entity
_G.vzyGenerateThing({
		nameAll = machineName,
		crafting_categories = {"grinding"}
	}, data.raw["assembling-machine"][machineFrom], nil)
--Grinder Item
_G.vzyGenerateThing({nameAll = machineName, order = "b["..machineName.."]"}, data.raw.item[machineFrom], nil)
--Grinder Recipe
_G.vzyGenerateThing({nameAll = machineName}, data.raw.recipe[machineFrom], nil)
--Grinder Tech
_G.vzyGenerateThing({
		name = "grinding",
		order = "a-b-b-G",
		prerequisites = {"automation-2"},
		effects = {{
			recipe = machineName,
			type = "unlock-recipe"
		}}
	}, data.raw.technology["automation-2"], nil)
--Start Building our Recipe List.
_G.vzyGetRecipes(vzyFnWork)
