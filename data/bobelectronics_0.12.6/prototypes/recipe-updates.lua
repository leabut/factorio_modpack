for i, recipe in pairs(data.raw.recipe) do
  if
    recipe.name == "offshore-pump" or
    recipe.name == "basic-inserter" or
    recipe.name == "basic-mining-drill" or
    recipe.name == "lab" or
    recipe.name == "radar" or
    recipe.name == "repair-pack" or
    recipe.name == "assembling-machine-1" or
    recipe.name == "basic-splitter" or
    recipe.name == "frame-1" --DyTech basic mining drill
  then
    bobmods.lib.replace_recipe_item(recipe.name, "electronic-circuit", "basic-circuit-board")
  end
end

data.raw.recipe["red-wire"].ingredients = {{"insulated-cable", 1}}
data.raw.recipe["green-wire"].ingredients = {{"insulated-cable", 1}}


if data.raw.fluid["hydrogen-chloride"] then
  bobmods.lib.replace_recipe_item("ferric-chloride-solution", "water", "hydrogen-chloride")
end

if data.raw.item["tinned-copper-cable"] then
  bobmods.lib.replace_recipe_item("insulated-cable", "copper-cable", "tinned-copper-cable")
  bobmods.lib.replace_recipe_item("basic-electronic-components", "copper-cable", "tinned-copper-cable")
  bobmods.lib.replace_recipe_item("electronic-components", "copper-cable", "tinned-copper-cable")
  bobmods.lib.replace_recipe_item("intergrated-electronics", "copper-cable", "tinned-copper-cable")
end

if data.raw.item["carbon"] then
  bobmods.lib.replace_recipe_item("basic-electronic-components", "coal", "carbon")
end

if data.raw.item["silicon-wafer"] then
  bobmods.lib.add_recipe_item("electronic-components", {"silicon-wafer", 2})
  bobmods.lib.add_recipe_item("intergrated-electronics", {"silicon-wafer", 4})
  bobmods.lib.add_recipe_item("processing-electronics", {"silicon-wafer", 6})
else
  if data.raw.item["silicon"] then
    bobmods.lib.add_recipe_item("electronic-components", {"silicon", 1})
    bobmods.lib.add_recipe_item("intergrated-electronics", {"silicon", 2})
    bobmods.lib.add_recipe_item("processing-electronics", {"silicon", 3})
  else
    bobmods.lib.add_recipe_item("electronic-components", {"copper-plate", 1})
    bobmods.lib.add_recipe_item("intergrated-electronics", {"copper-plate", 2})
    bobmods.lib.add_recipe_item("processing-electronics", {"copper-plate", 3})
  end
end


if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.replace_recipe_item("processing-electronics", "copper-cable", "gilded-copper-cable")
else
  if data.raw.item["tinned-copper-cable"] then
    bobmods.lib.replace_recipe_item("processing-electronics", "copper-cable", "tinned-copper-cable")
  end
end

if data.raw.item["silicon-nitride"] then
  bobmods.lib.replace_recipe_item("processing-electronics", "plastic-bar", "silicon-nitride")
end

if data.raw.item["glass"] then
  bobmods.lib.add_recipe_item("fibreglass-board", {"glass", 1})
else
  bobmods.lib.add_recipe_item("fibreglass-board", {"plastic-bar", 1})
end

if data.raw.item["tin-plate"] then
  bobmods.lib.add_recipe_item("circuit-board", {"tin-plate", 1})
else
  bobmods.lib.add_recipe_item("circuit-board", {"copper-plate", 1})
end

if data.raw.item["gold-plate"] then
  bobmods.lib.add_recipe_item("superior-circuit-board", {"gold-plate", 1})
  bobmods.lib.add_recipe_item("multi-layer-circuit-board", {"gold-plate", 2})
else
  if data.raw.item["tin-plate"] then
    bobmods.lib.add_recipe_item("superior-circuit-board", {"tin-plate", 1})
    bobmods.lib.add_recipe_item("multi-layer-circuit-board", {"tin-plate", 2})
  else
    bobmods.lib.add_recipe_item("superior-circuit-board", {"copper-plate", 1})
    bobmods.lib.add_recipe_item("multi-layer-circuit-board", {"copper-plate", 2})
  end
end

if data.raw.item["solder"] then
  bobmods.lib.add_recipe_item("electronic-circuit", {"solder", 1})
  bobmods.lib.add_recipe_item("advanced-circuit", {"solder", 1})
  bobmods.lib.add_recipe_item("processing-unit", {"solder", 2})
  bobmods.lib.add_recipe_item("advanced-processing-unit", {"solder", 4})
end

