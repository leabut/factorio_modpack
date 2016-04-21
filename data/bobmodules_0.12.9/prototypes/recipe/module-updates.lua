if data.raw.item["solder"] then
  bobmods.lib.add_recipe_item ("speed-module-2", {"solder", 1})
  bobmods.lib.add_recipe_item ("effectivity-module-2", {"solder", 1})
  bobmods.lib.add_recipe_item ("productivity-module-2", {"solder", 1})
  bobmods.lib.add_recipe_item ("pollution-clean-module-2", {"solder", 1})
  bobmods.lib.add_recipe_item ("pollution-create-module-2", {"solder", 1})

  bobmods.lib.add_recipe_item ("speed-module-3", {"solder", 2})
  bobmods.lib.add_recipe_item ("effectivity-module-3", {"solder", 2})
  bobmods.lib.add_recipe_item ("productivity-module-3", {"solder", 2})
  bobmods.lib.add_recipe_item ("pollution-clean-module-3", {"solder", 2})
  bobmods.lib.add_recipe_item ("pollution-create-module-3", {"solder", 2})

  bobmods.lib.add_recipe_item ("speed-module-4", {"solder", 3})
  bobmods.lib.add_recipe_item ("effectivity-module-4", {"solder", 3})
  bobmods.lib.add_recipe_item ("productivity-module-4", {"solder", 3})
  bobmods.lib.add_recipe_item ("pollution-clean-module-4", {"solder", 3})
  bobmods.lib.add_recipe_item ("pollution-create-module-4", {"solder", 3})

  bobmods.lib.add_recipe_item ("speed-module-5", {"solder", 4})
  bobmods.lib.add_recipe_item ("effectivity-module-5", {"solder", 4})
  bobmods.lib.add_recipe_item ("productivity-module-5", {"solder", 4})
  bobmods.lib.add_recipe_item ("pollution-clean-module-5", {"solder", 4})
  bobmods.lib.add_recipe_item ("pollution-create-module-5", {"solder", 4})

  bobmods.lib.add_recipe_item ("speed-module-6", {"solder", 5})
  bobmods.lib.add_recipe_item ("effectivity-module-6", {"solder", 5})
  bobmods.lib.add_recipe_item ("productivity-module-6", {"solder", 5})
  bobmods.lib.add_recipe_item ("pollution-clean-module-6", {"solder", 5})
  bobmods.lib.add_recipe_item ("pollution-create-module-6", {"solder", 5})

  bobmods.lib.add_recipe_item ("speed-module-7", {"solder", 7})
  bobmods.lib.add_recipe_item ("effectivity-module-7", {"solder", 7})
  bobmods.lib.add_recipe_item ("productivity-module-7", {"solder", 7})
  bobmods.lib.add_recipe_item ("pollution-clean-module-7", {"solder", 7})
  bobmods.lib.add_recipe_item ("pollution-create-module-7", {"solder", 7})

  bobmods.lib.add_recipe_item ("speed-module-8", {"solder", 8})
  bobmods.lib.add_recipe_item ("effectivity-module-8", {"solder", 8})
  bobmods.lib.add_recipe_item ("productivity-module-8", {"solder", 8})
  bobmods.lib.add_recipe_item ("pollution-clean-module-8", {"solder", 8})
  bobmods.lib.add_recipe_item ("pollution-create-module-8", {"solder", 8})
else
  bobmods.lib.add_recipe_item ("speed-module-3", {"module-contact", 5})
  bobmods.lib.add_recipe_item ("effectivity-module-3", {"module-contact", 5})
  bobmods.lib.add_recipe_item ("productivity-module-3", {"module-contact", 5})
  bobmods.lib.add_recipe_item ("pollution-clean-module-3", {"module-contact", 5})
  bobmods.lib.add_recipe_item ("pollution-create-module-3", {"module-contact", 5})
end


if data.raw.item["electronic-components"] then
  bobmods.lib.replace_recipe_item ("speed-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item ("effectivity-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item ("productivity-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item ("pollution-clean-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item ("pollution-create-module-3", "advanced-circuit", "electronic-components")

  bobmods.lib.replace_recipe_item ("speed-module-8", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item ("effectivity-module-8", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item ("productivity-module-8", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item ("pollution-clean-module-8", "advanced-circuit", "electronic-components")
  bobmods.lib.replace_recipe_item ("pollution-create-module-8", "advanced-circuit", "electronic-components")
end


if data.raw.item["intergrated-electronics"] then
  bobmods.lib.replace_recipe_item ("speed-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("effectivity-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("productivity-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("pollution-clean-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("pollution-create-module-4", "processing-unit", "intergrated-electronics")

  bobmods.lib.replace_recipe_item ("speed-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("effectivity-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("productivity-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("pollution-clean-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("pollution-create-module-5", "processing-unit", "intergrated-electronics")

  bobmods.lib.replace_recipe_item ("speed-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("effectivity-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("productivity-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("pollution-clean-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("pollution-create-module-6", "processing-unit", "intergrated-electronics")

  bobmods.lib.replace_recipe_item ("speed-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("effectivity-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("productivity-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("pollution-clean-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("pollution-create-module-7", "processing-unit", "intergrated-electronics")

  bobmods.lib.replace_recipe_item ("speed-module-8", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("effectivity-module-8", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("productivity-module-8", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("pollution-clean-module-8", "processing-unit", "intergrated-electronics")
  bobmods.lib.replace_recipe_item ("pollution-create-module-8", "processing-unit", "intergrated-electronics")
end


if data.raw.item["processing-electronics"] then
  bobmods.lib.add_recipe_item ("speed-module-7", {"processing-electronics", 3})
  bobmods.lib.add_recipe_item ("effectivity-module-7", {"processing-electronics", 3})
  bobmods.lib.add_recipe_item ("productivity-module-7", {"processing-electronics", 3})
  bobmods.lib.add_recipe_item ("pollution-clean-module-7", {"processing-electronics", 3})
  bobmods.lib.add_recipe_item ("pollution-create-module-7", {"processing-electronics", 3})

  bobmods.lib.add_recipe_item ("speed-module-8", {"processing-electronics", 5})
  bobmods.lib.add_recipe_item ("effectivity-module-8", {"processing-electronics", 5})
  bobmods.lib.add_recipe_item ("productivity-module-8", {"processing-electronics", 5})
  bobmods.lib.add_recipe_item ("pollution-clean-module-8", {"processing-electronics", 5})
  bobmods.lib.add_recipe_item ("pollution-create-module-8", {"processing-electronics", 5})
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.add_recipe_item ("speed-module-7", {"advanced-processing-unit", 3})
    bobmods.lib.add_recipe_item ("effectivity-module-7", {"advanced-processing-unit", 3})
    bobmods.lib.add_recipe_item ("productivity-module-7", {"advanced-processing-unit", 3})
    bobmods.lib.add_recipe_item ("pollution-clean-module-7", {"advanced-processing-unit", 3})
    bobmods.lib.add_recipe_item ("pollution-create-module-7", {"advanced-processing-unit", 3})

    bobmods.lib.add_recipe_item ("speed-module-8", {"advanced-processing-unit", 5})
    bobmods.lib.add_recipe_item ("effectivity-module-8", {"advanced-processing-unit", 5})
    bobmods.lib.add_recipe_item ("productivity-module-8", {"advanced-processing-unit", 5})
    bobmods.lib.add_recipe_item ("pollution-clean-module-8", {"advanced-processing-unit", 5})
    bobmods.lib.add_recipe_item ("pollution-create-module-8", {"advanced-processing-unit", 5})
  else
    bobmods.lib.add_recipe_item ("speed-module-7", {"processing-unit", 3})
    bobmods.lib.add_recipe_item ("effectivity-module-7", {"processing-unit", 3})
    bobmods.lib.add_recipe_item ("productivity-module-7", {"processing-unit", 3})
    bobmods.lib.add_recipe_item ("pollution-clean-module-7", {"processing-unit", 3})
    bobmods.lib.add_recipe_item ("pollution-create-module-7", {"processing-unit", 3})

    bobmods.lib.add_recipe_item ("speed-module-8", {"processing-unit", 5})
    bobmods.lib.add_recipe_item ("effectivity-module-8", {"processing-unit", 5})
    bobmods.lib.add_recipe_item ("productivity-module-8", {"processing-unit", 5})
    bobmods.lib.add_recipe_item ("pollution-clean-module-8", {"processing-unit", 5})
    bobmods.lib.add_recipe_item ("pollution-create-module-8", {"processing-unit", 5})
  end
end



if data.raw.item["ruby-5"] then
  bobmods.lib.replace_recipe_item ("speed-module-5", "alien-artifact", "ruby-5")
  bobmods.lib.replace_recipe_item ("effectivity-module-5", "alien-artifact", "ruby-5")
  bobmods.lib.replace_recipe_item ("productivity-module-5", "alien-artifact", "ruby-5")
  bobmods.lib.replace_recipe_item ("pollution-clean-module-5", "alien-artifact", "ruby-5")
  bobmods.lib.replace_recipe_item ("pollution-create-module-5", "alien-artifact", "ruby-5")
end

if data.raw.item["emerald-5"] then
  bobmods.lib.replace_recipe_item ("speed-module-6", "alien-artifact", "emerald-5")
  bobmods.lib.replace_recipe_item ("effectivity-module-6", "alien-artifact", "emerald-5")
  bobmods.lib.replace_recipe_item ("productivity-module-6", "alien-artifact", "emerald-5")
  bobmods.lib.replace_recipe_item ("pollution-clean-module-6", "alien-artifact", "emerald-5")
  bobmods.lib.replace_recipe_item ("pollution-create-module-6", "alien-artifact", "emerald-5")
end

if data.raw.item["topaz-5"] then
  bobmods.lib.replace_recipe_item ("speed-module-7", "alien-artifact", "topaz-5")
  bobmods.lib.replace_recipe_item ("effectivity-module-7", "alien-artifact", "topaz-5")
  bobmods.lib.replace_recipe_item ("productivity-module-7", "alien-artifact", "topaz-5")
  bobmods.lib.replace_recipe_item ("pollution-clean-module-7", "alien-artifact", "topaz-5")
  bobmods.lib.replace_recipe_item ("pollution-create-module-7", "alien-artifact", "topaz-5")
end

if data.raw.item["diamond-5"] then
  bobmods.lib.replace_recipe_item ("speed-module-8", "alien-artifact", "diamond-5")
  bobmods.lib.replace_recipe_item ("effectivity-module-8", "alien-artifact", "diamond-5")
  bobmods.lib.replace_recipe_item ("productivity-module-8", "alien-artifact", "diamond-5")
  bobmods.lib.replace_recipe_item ("pollution-clean-module-8", "alien-artifact", "diamond-5")
  bobmods.lib.replace_recipe_item ("pollution-create-module-8", "alien-artifact", "diamond-5")
end

