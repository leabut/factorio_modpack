if data.raw.item["aluminium-plate"] then
  bobmods.lib.replace_recipe_item("module-case", "iron-plate", "aluminium-plate")
end

if data.raw.item["tin-plate"] then
  bobmods.lib.add_recipe_item("module-circuit-board", {"tin-plate", 1})
  bobmods.lib.add_recipe_item("module-processor-board", {"tin-plate", 1})
end

if data.raw.item["gold-plate"] then
  bobmods.lib.add_recipe_item("module-contact", {"gold-plate", 1})
  bobmods.lib.add_recipe_item("module-processor-board-2", {"gold-plate", 1})
  bobmods.lib.add_recipe_item("module-processor-board-3", {"gold-plate", 2})
end

if data.raw.item["phenolic-board"] then
  bobmods.lib.replace_recipe_item("module-circuit-board", "plastic-bar", "phenolic-board")
  bobmods.lib.replace_recipe_item("module-processor-board", "plastic-bar", "phenolic-board")
end

if data.raw.item["fibreglass-board"] then
  bobmods.lib.replace_recipe_item("module-processor-board-2", "plastic-bar", "fibreglass-board")
  bobmods.lib.replace_recipe_item("module-processor-board-3", "plastic-bar", "fibreglass-board")
end

if data.raw.fluid["ferric-chloride-solution"] then
  bobmods.lib.add_recipe_item("module-circuit-board", {"ferric-chloride-solution", 0.5})
  bobmods.lib.add_recipe_item("module-processor-board", {"ferric-chloride-solution", 0.5})
  bobmods.lib.add_recipe_item("module-processor-board-2", {"ferric-chloride-solution", 0.5})
  bobmods.lib.add_recipe_item("module-processor-board-3", {"ferric-chloride-solution", 1})
end

if data.raw.item["basic-electronic-components"] then
  bobmods.lib.replace_recipe_item("speed-processor", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.replace_recipe_item("effectivity-processor", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.replace_recipe_item("productivity-processor", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.replace_recipe_item("pollution-clean-processor", "electronic-circuit", "basic-electronic-components")
  bobmods.lib.replace_recipe_item("pollution-create-processor", "electronic-circuit", "basic-electronic-components")
end

if data.raw.item["electronic-components"] then
  bobmods.lib.replace_recipe_item("speed-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item("effectivity-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item("productivity-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item("pollution-clean-processor", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item("pollution-create-processor", "advanced-circuit", "electronic-components")

  bobmods.lib.replace_recipe_item("speed-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item("effectivity-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item("productivity-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item("pollution-clean-processor-2", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item("pollution-create-processor-2", "advanced-circuit", "electronic-components")
end

if data.raw.item["intergrated-electronics"] then
  bobmods.lib.replace_recipe_item("speed-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item("effectivity-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item("productivity-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item("pollution-clean-processor-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item("pollution-create-processor-2", "processing-unit", "intergrated-electronics")

  bobmods.lib.replace_recipe_item("speed-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item("effectivity-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item("productivity-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item("pollution-clean-processor-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item("pollution-create-processor-3", "processing-unit", "intergrated-electronics")
end


if data.raw.item["processing-electronics"] then
  bobmods.lib.add_recipe_item("speed-processor-3", {"processing-electronics", 1})
  bobmods.lib.add_recipe_item("effectivity-processor-3", {"processing-electronics", 1})
  bobmods.lib.add_recipe_item("productivity-processor-3", {"processing-electronics", 1})
  bobmods.lib.add_recipe_item("pollution-clean-processor-3", {"processing-electronics", 1})
  bobmods.lib.add_recipe_item("pollution-create-processor-3", {"processing-electronics", 1})
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.add_recipe_item("speed-processor-3", {"advanced-processing-unit", 1})
    bobmods.lib.add_recipe_item("effectivity-processor-3", {"advanced-processing-unit", 1})
    bobmods.lib.add_recipe_item("productivity-processor-3", {"advanced-processing-unit", 1})
    bobmods.lib.add_recipe_item("pollution-clean-processor-3", {"advanced-processing-unit", 1})
    bobmods.lib.add_recipe_item("pollution-create-processor-3", {"advanced-processing-unit", 1})
  else
    bobmods.lib.add_recipe_item("speed-processor-3", {"processing-unit", 1})
    bobmods.lib.add_recipe_item("effectivity-processor-3", {"processing-unit", 1})
    bobmods.lib.add_recipe_item("productivity-processor-3", {"processing-unit", 1})
    bobmods.lib.add_recipe_item("pollution-clean-processor-3", {"processing-unit", 1})
    bobmods.lib.add_recipe_item("pollution-create-processor-3", {"processing-unit", 1})
  end
end


if data.raw.item["solder"] then
  bobmods.lib.add_recipe_item("speed-processor", {"solder", 1})
  bobmods.lib.add_recipe_item("effectivity-processor", {"solder", 1})
  bobmods.lib.add_recipe_item("productivity-processor", {"solder", 1})
  bobmods.lib.add_recipe_item("pollution-clean-processor", {"solder", 1})
  bobmods.lib.add_recipe_item("pollution-create-processor", {"solder", 1})

  bobmods.lib.add_recipe_item("speed-processor-2", {"solder", 2})
  bobmods.lib.add_recipe_item("effectivity-processor-2", {"solder", 2})
  bobmods.lib.add_recipe_item("productivity-processor-2", {"solder", 2})
  bobmods.lib.add_recipe_item("pollution-clean-processor-2", {"solder", 2})
  bobmods.lib.add_recipe_item("pollution-create-processor-2", {"solder", 2})

  bobmods.lib.add_recipe_item("speed-processor-3", {"solder", 3})
  bobmods.lib.add_recipe_item("effectivity-processor-3", {"solder", 3})
  bobmods.lib.add_recipe_item("productivity-processor-3", {"solder", 3})
  bobmods.lib.add_recipe_item("pollution-clean-processor-3", {"solder", 3})
  bobmods.lib.add_recipe_item("pollution-create-processor-3", {"solder", 3})
end


  bobmods.lib.add_technology_recipe("modules", "module-case")
  bobmods.lib.add_technology_recipe("modules", "module-circuit-board")
  bobmods.lib.add_technology_recipe("modules", "module-contact")
  bobmods.lib.add_technology_recipe("modules", "module-processor-board")
  bobmods.lib.add_technology_recipe("modules", "speed-processor")
  bobmods.lib.add_technology_recipe("modules", "effectivity-processor")
  bobmods.lib.add_technology_recipe("modules", "productivity-processor")
  bobmods.lib.add_technology_recipe("modules", "pollution-clean-processor")
  bobmods.lib.add_technology_recipe("modules", "pollution-create-processor")

  bobmods.lib.add_technology_recipe("advanced-electronics-2", "module-processor-board-2")


if data.raw.technology["advanced-electronics-3"] then
  bobmods.lib.add_technology_recipe("advanced-electronics-3", "module-processor-board-3")
else
  bobmods.lib.add_technology_recipe("advanced-electronics-2", "module-processor-board-3")
end


