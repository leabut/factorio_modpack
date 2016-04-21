bobmods.lib.add_technology_prerequisite("bob-railway-2", "invar-processing")
bobmods.lib.add_technology_prerequisite("bob-fluid-handling-2", "invar-processing")

bobmods.lib.add_technology_prerequisite("bob-robotics-1", "aluminium-processing")
bobmods.lib.add_technology_prerequisite("bob-robo-modular-2", "aluminium-processing")

bobmods.lib.add_technology_prerequisite("bob-robo-modular-3", "nickel-processing")

bobmods.lib.add_technology_prerequisite("bob-robotics-2", "advanced-electronics-2")
bobmods.lib.add_technology_prerequisite("bob-robo-modular-3", "advanced-electronics-2")

bobmods.lib.add_technology_prerequisite("bob-railway-3", "titanium-processing")
bobmods.lib.add_technology_prerequisite("bob-armoured-railway", "titanium-processing")
bobmods.lib.add_technology_prerequisite("purple-inserters", "titanium-processing")
bobmods.lib.add_technology_prerequisite("bob-logistics-4", "titanium-processing")
bobmods.lib.add_technology_prerequisite("bob-fluid-handling-3", "titanium-processing")
bobmods.lib.add_technology_prerequisite("bob-robotics-2", "titanium-processing")
bobmods.lib.add_technology_prerequisite("bob-robo-modular-3", "titanium-processing")

if data.raw.item["lithium-ion-battery"] and data.raw.technology["battery-2"] then
  bobmods.lib.add_technology_prerequisite("bob-robotics-2", "battery-2")
  bobmods.lib.add_technology_prerequisite("bob-robo-modular-3", "battery-2")
end

bobmods.lib.add_technology_prerequisite("bob-robotics-3", "advanced-electronics-3")
bobmods.lib.add_technology_prerequisite("bob-robo-modular-4", "advanced-electronics-3")

bobmods.lib.add_technology_prerequisite("bob-logistics-5", "nitinol-processing")
bobmods.lib.add_technology_prerequisite("bob-fluid-handling-4", "nitinol-processing")
bobmods.lib.add_technology_prerequisite("bob-robotics-3", "nitinol-processing")
bobmods.lib.add_technology_prerequisite("bob-robo-modular-4", "nitinol-processing")

bobmods.lib.add_technology_prerequisite("bob-robo-modular-4", "gold-processing")

if data.raw.item["silver-zinc-battery"] and data.raw.technology["battery-3"] then
  bobmods.lib.add_technology_prerequisite("bob-robotics-3", "battery-3")
  bobmods.lib.add_technology_prerequisite("bob-robo-modular-4", "battery-3")
end



if data.raw.tool["science-pack-4"] then
  bobmods.lib.replace_science_pack("bob-robotics-3", "alien-science-pack", "science-pack-4")
  bobmods.lib.replace_science_pack("bob-robo-modular-4", "alien-science-pack", "science-pack-4")
  bobmods.lib.replace_science_pack("toolbelt-3", "alien-science-pack", "science-pack-4")
  bobmods.lib.replace_science_pack("character-logistic-slots-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.replace_science_pack("character-logistic-slots-6", "alien-science-pack", "science-pack-4")

  bobmods.lib.add_new_science_pack("character-logistic-slots-7", "science-pack-4", 1)

  if data.raw.technology["bob-logistics-5"] then
    bobmods.lib.replace_science_pack("bob-logistics-5", "alien-science-pack", "science-pack-4")
  end
end

if
  data.raw.tool["science-pack-gold"] and
  data.raw.tool["alien-science-pack-blue"] and
  data.raw.tool["alien-science-pack-orange"] and
  data.raw.tool["alien-science-pack-purple"] and
  data.raw.tool["alien-science-pack-yellow"] and
  data.raw.tool["alien-science-pack-green"] and
  data.raw.tool["alien-science-pack-red"]
then
  data.raw.technology["character-logistic-slots-8"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["character-logistic-slots-9"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["character-logistic-slots-10"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}
else
  if data.raw.tool["science-pack-4"] then
    bobmods.lib.add_new_science_pack("character-logistic-slots-8", "science-pack-4", 1)
    bobmods.lib.add_new_science_pack("character-logistic-slots-9", "science-pack-4", 1)
    bobmods.lib.add_new_science_pack("character-logistic-slots-10", "science-pack-4", 1)
  end
end



bobmods.lib.add_technology_recipe("steel-processing", "steel-pipe")
bobmods.lib.add_technology_recipe("steel-processing", "steel-pipe-to-ground")

bobmods.lib.add_technology_recipe("plastics", "plastic-pipe")
bobmods.lib.add_technology_recipe("plastics", "plastic-pipe-to-ground")


if data.raw.technology["alloy-processing-1"] then
  bobmods.lib.add_technology_recipe("alloy-processing-1", "bronze-pipe")
  bobmods.lib.add_technology_recipe("alloy-processing-1", "bronze-pipe-to-ground")
end

if data.raw.technology["zinc-processing"] then
  bobmods.lib.add_technology_recipe("zinc-processing", "brass-pipe")
  bobmods.lib.add_technology_recipe("zinc-processing", "brass-pipe-to-ground")
end

if data.raw.technology["titanium-processing"] then
  bobmods.lib.add_technology_recipe("titanium-processing", "titanium-pipe")
  bobmods.lib.add_technology_recipe("titanium-processing", "titanium-pipe-to-ground")
end

if data.raw.technology["tungsten-processing"] then
  bobmods.lib.add_technology_recipe("tungsten-processing", "tungsten-pipe")
  bobmods.lib.add_technology_recipe("tungsten-processing", "tungsten-pipe-to-ground")
end

if data.raw.technology["ceramics"] then
  bobmods.lib.add_technology_recipe("ceramics", "ceramic-pipe")
  bobmods.lib.add_technology_recipe("ceramics", "ceramic-pipe-to-ground")
end



if data.raw.technology["lava-smelting-05"] then
  bobmods.lib.add_technology_recipe("lava-smelting-05", "tungsten-pipe")
  bobmods.lib.add_technology_recipe("lava-smelting-05", "tungsten-pipe-to-ground")
end

if data.raw.technology["lava-smelting-06"] then
  bobmods.lib.add_technology_recipe("lava-smelting-06", "bronze-pipe")
  bobmods.lib.add_technology_recipe("lava-smelting-06", "bronze-pipe-to-ground")

  bobmods.lib.add_technology_recipe("lava-smelting-06", "brass-pipe")
  bobmods.lib.add_technology_recipe("lava-smelting-06", "brass-pipe-to-ground")
end

