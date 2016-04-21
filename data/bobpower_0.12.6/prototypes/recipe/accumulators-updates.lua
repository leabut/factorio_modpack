if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.replace_recipe_item ("large-accumulator-2", "battery", "lithium-ion-battery")
  bobmods.lib.replace_recipe_item ("fast-accumulator-2", "battery", "lithium-ion-battery")
  bobmods.lib.replace_recipe_item ("slow-accumulator-2", "battery", "lithium-ion-battery")
  bobmods.lib.add_technology_prerequisite ("bob-electric-energy-accumulators-3", "battery-2")
end


if data.raw.item["titanium-plate"] then
  bobmods.lib.replace_recipe_item ("large-accumulator-3", "steel-plate", "titanium-plate")
  bobmods.lib.replace_recipe_item ("fast-accumulator-3", "steel-plate", "titanium-plate")
  bobmods.lib.replace_recipe_item ("slow-accumulator-3", "steel-plate", "titanium-plate")
  bobmods.lib.add_technology_prerequisite ("bob-electric-energy-accumulators-4", "titanium-processing")
else
  if data.raw.item["aluminium-plate"] then
    bobmods.lib.replace_recipe_item ("large-accumulator-3", "steel-plate", "aluminium-plate")
    bobmods.lib.replace_recipe_item ("fast-accumulator-3", "steel-plate", "aluminium-plate")
    bobmods.lib.replace_recipe_item ("slow-accumulator-3", "steel-plate", "aluminium-plate")
    bobmods.lib.add_technology_prerequisite ("bob-electric-energy-accumulators-4", "aluminium-processing")
  end
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.replace_recipe_item ("large-accumulator-3", "battery", "silver-zinc-battery")
  bobmods.lib.replace_recipe_item ("fast-accumulator-3", "battery", "silver-zinc-battery")
  bobmods.lib.replace_recipe_item ("slow-accumulator-3", "battery", "silver-zinc-battery")
  bobmods.lib.add_technology_prerequisite ("bob-electric-energy-accumulators-4", "battery-3")
else
  if data.raw.item["lithium-ion-battery"] then
    bobmods.lib.replace_recipe_item ("large-accumulator-3", "battery", "lithium-ion-battery")
    bobmods.lib.replace_recipe_item ("fast-accumulator-3", "battery", "lithium-ion-battery")
    bobmods.lib.replace_recipe_item ("slow-accumulator-3", "battery", "lithium-ion-battery")
  end
end

