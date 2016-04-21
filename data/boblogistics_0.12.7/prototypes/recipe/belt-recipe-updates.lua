data.raw["transport-belt-to-ground"]["basic-transport-belt-to-ground"].max_distance = 5
data.raw["transport-belt-to-ground"]["fast-transport-belt-to-ground"].max_distance = 10
data.raw["transport-belt-to-ground"]["express-transport-belt-to-ground"].max_distance = 15

data.raw.recipe["express-transport-belt-to-ground"].category = "crafting-with-fluid"
data.raw.recipe["express-transport-belt-to-ground"].ingredients = { {"iron-gear-wheel", 20}, {"fast-transport-belt-to-ground", 2}, {type="fluid", name="lubricant", amount=10} }


if data.raw.item["titanium-bearing"] then
  bobmods.lib.add_recipe_item ("green-transport-belt", {"titanium-bearing", 5})
  bobmods.lib.add_recipe_item ("green-transport-belt-to-ground", {"titanium-bearing", 20})
  bobmods.lib.add_recipe_item ("green-splitter", {"titanium-bearing", 10})
else
  bobmods.lib.add_recipe_item ("green-transport-belt", {"iron-gear-wheel", 5})
  bobmods.lib.add_recipe_item ("green-transport-belt-to-ground", {"iron-gear-wheel", 20})
  bobmods.lib.add_recipe_item ("green-splitter", {"iron-gear-wheel", 10})
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.replace_recipe_item("green-transport-belt", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.replace_recipe_item("green-transport-belt-to-ground", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.replace_recipe_item("green-splitter", "iron-gear-wheel", "titanium-gear-wheel")
end


if data.raw.recipe["purple-transport-belt"] then
  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.add_recipe_item ("purple-transport-belt", {"nitinol-bearing", 5})
  else
    bobmods.lib.add_recipe_item ("purple-transport-belt", {"iron-gear-wheel", 5})
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.replace_recipe_item("purple-transport-belt", "iron-gear-wheel", "nitinol-gear-wheel")
  end
end

if data.raw.recipe["purple-transport-belt-to-ground"] then
  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.add_recipe_item ("purple-transport-belt-to-ground", {"nitinol-bearing", 20})
  else
    bobmods.lib.add_recipe_item ("purple-transport-belt-to-ground", {"iron-gear-wheel", 20})
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.replace_recipe_item("purple-transport-belt-to-ground", "iron-gear-wheel", "nitinol-gear-wheel")
  end
end

if data.raw.recipe["purple-splitter"] then
  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.add_recipe_item ("purple-splitter", {"nitinol-bearing", 10})
  else
    bobmods.lib.add_recipe_item ("purple-splitter", {"iron-gear-wheel", 10})
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.replace_recipe_item("purple-splitter", "iron-gear-wheel", "nitinol-gear-wheel")
  end
end

