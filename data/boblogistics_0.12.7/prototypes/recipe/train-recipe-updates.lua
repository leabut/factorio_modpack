if data.raw.item["invar-alloy"] then
  bobmods.lib.replace_recipe_item("diesel-locomotive-2", "steel-plate", "invar-alloy")
  bobmods.lib.replace_recipe_item("cargo-wagon-2", "steel-plate", "invar-alloy")
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.add_new_recipe_item("diesel-locomotive-2", {"steel-bearing", 16})
  bobmods.lib.add_new_recipe_item("cargo-wagon-2", {"steel-bearing", 8})
else
  bobmods.lib.add_new_recipe_item("diesel-locomotive-2", {"iron-gear-wheel", 10})
  bobmods.lib.add_new_recipe_item("cargo-wagon-2", {"iron-gear-wheel", 8})
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.replace_recipe_item("diesel-locomotive-2", "iron-gear-wheel", "steel-gear-wheel")
  bobmods.lib.replace_recipe_item("cargo-wagon-2", "iron-gear-wheel", "steel-gear-wheel")
end



if data.raw.item["titanium-plate"] then
  bobmods.lib.replace_recipe_item("diesel-locomotive-3", "steel-plate", "titanium-plate")
  bobmods.lib.replace_recipe_item("cargo-wagon-3", "steel-plate", "titanium-plate")

  bobmods.lib.replace_recipe_item("armoured-diesel-locomotive", "steel-plate", "titanium-plate")
  bobmods.lib.replace_recipe_item("armoured-cargo-wagon", "steel-plate", "titanium-plate")
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.add_new_recipe_item("diesel-locomotive-3", {"titanium-bearing", 16})
  bobmods.lib.add_new_recipe_item("cargo-wagon-3", {"titanium-bearing", 8})
else
  bobmods.lib.add_new_recipe_item("diesel-locomotive-3", {"iron-gear-wheel", 10})
  bobmods.lib.add_new_recipe_item("cargo-wagon-3", {"iron-gear-wheel", 8})
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.replace_recipe_item("diesel-locomotive-3", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.replace_recipe_item("cargo-wagon-3", "iron-gear-wheel", "titanium-gear-wheel")
end




