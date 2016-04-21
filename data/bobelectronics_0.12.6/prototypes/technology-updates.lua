bobmods.lib.add_technology_prerequisite("oil-processing", "electronics")
bobmods.lib.add_technology_prerequisite("advanced-electronics", "plastics")

bobmods.lib.add_new_science_pack("advanced-electronics-2", "science-pack-3", 1)
if data.raw.tool["science-pack-4"] then
  bobmods.lib.replace_science_pack("advanced-electronics-3", "alien-science-pack", "science-pack-4")
end


--base game
bobmods.lib.remove_technology_recipe("advanced-electronics", "processing-unit")

--dytech
bobmods.lib.remove_technology_recipe("advanced-electronics-2", "advanced-processing-unit")

--old bobplates
bobmods.lib.remove_technology_recipe("electronics", "basic-electronic-circuit-board")
bobmods.lib.remove_technology_recipe("advanced-electronics", "electronic-circuit-board")
bobmods.lib.remove_technology_recipe("advanced-electronics-2", "electronic-processing-board")
bobmods.lib.remove_technology_recipe("advanced-electronics-3", "electronic-processing-board-2")

--new bobplates
bobmods.lib.remove_technology_recipe("advanced-electronics-2", "processing-unit")

-- fix a difficulty shift.
bobmods.lib.replace_technology_prerequisite ("robotics", "advanced-electronics-2", "advanced-electronics")


bobmods.lib.add_technology_recipe("oil-processing", "bob-resin-oil")

bobmods.lib.add_technology_recipe("advanced-oil-processing", "coal-cracking")
bobmods.lib.add_technology_recipe("advanced-oil-processing", "bob-oil-processing")

bobmods.lib.add_technology_recipe("plastics", "synthetic-wood")
bobmods.lib.add_technology_recipe("plastics", "wooden-board-synthetic")


if data.raw.technology["chemical-processing-2"] then
  bobmods.lib.add_technology_recipe("chemical-processing-2", "ferric-chloride-solution")
  bobmods.lib.add_technology_prerequisite ("advanced-electronics", "chemical-processing-2")
else
  bobmods.lib.add_technology_recipe("oil-processing", "ferric-chloride-solution")
  bobmods.lib.add_technology_prerequisite ("advanced-electronics", "oil-processing")
end

if data.raw.recipe["silicon-wafer"] then
  if data.raw.technology["silicon-processing"] then
    bobmods.lib.add_technology_recipe("silicon-processing", "silicon-wafer")
  else
    data.raw.recipe["silicon-wafer"].enabled = true
  end
end


if data.raw.recipe["solder"] then
  bobmods.lib.add_technology_recipe("electronics", "solder")
end
if data.raw.recipe["solder-alloy"] then
  if data.raw.technology["alloy-processing-2"] and data.raw.item["silver-plate"] then
    bobmods.lib.add_technology_recipe("alloy-processing-2", "solder-alloy")
  else
    bobmods.lib.add_technology_recipe("electronics", "solder-alloy")
  end
end
if data.raw.recipe["solder-alloy-lead"] then
  bobmods.lib.add_technology_recipe("electronics", "solder-alloy-lead")
end
if data.raw.recipe["tinned-copper-cable"] then
  bobmods.lib.add_technology_recipe("electronics", "tinned-copper-cable")
end

bobmods.lib.add_technology_recipe("electronics", "insulated-cable")
bobmods.lib.add_technology_recipe("electronics", "basic-electronic-components")
bobmods.lib.add_technology_recipe("electronics", "electronic-circuit")


bobmods.lib.add_technology_recipe("advanced-electronics", "electronic-components")
bobmods.lib.add_technology_recipe("advanced-electronics", "phenolic-board")
bobmods.lib.add_technology_recipe("advanced-electronics", "phenolic-board-synthetic")
bobmods.lib.add_technology_recipe("advanced-electronics", "circuit-board")
bobmods.lib.add_technology_recipe("advanced-electronics", "advanced-circuit") --to re-add if it was removed in previous mod
if data.raw.technology["silicon-processing"] then
  bobmods.lib.add_technology_prerequisite("advanced-electronics", "silicon-processing")
end

bobmods.lib.add_technology_recipe("advanced-electronics-2", "intergrated-electronics")
bobmods.lib.add_technology_recipe("advanced-electronics-2", "fibreglass-board")
bobmods.lib.add_technology_recipe("advanced-electronics-2", "superior-circuit-board")
bobmods.lib.add_technology_recipe("advanced-electronics-2", "processing-unit")
if data.raw.technology["gold-processing"] then
  bobmods.lib.add_technology_prerequisite("advanced-electronics-2", "gold-processing")
end


if data.raw.recipe["gilded-copper-cable"] then
  bobmods.lib.add_technology_recipe("advanced-electronics-3", "gilded-copper-cable")
end

bobmods.lib.add_technology_recipe("advanced-electronics-3", "processing-electronics")
bobmods.lib.add_technology_recipe("advanced-electronics-3", "multi-layer-circuit-board")
bobmods.lib.add_technology_recipe("advanced-electronics-3", "advanced-processing-unit")


