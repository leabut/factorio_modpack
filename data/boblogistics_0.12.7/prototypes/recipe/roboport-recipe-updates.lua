if data.raw.item["aluminium-plate"] then
  bobmods.lib.replace_recipe_item("roboport-antenna-2", "steel-plate", "aluminium-plate")
  bobmods.lib.replace_recipe_item("flying-robot-frame-2", "steel-plate", "aluminium-plate")
end

if data.raw.item["tinned-copper-cable"] then
  bobmods.lib.replace_recipe_item("roboport-antenna-2", "copper-cable", "tinned-copper-cable")
end


if data.raw.item["steel-bearing"] then
  bobmods.lib.add_recipe_item("roboport-door-2", {"steel-bearing", 20})
else
  bobmods.lib.add_recipe_item("roboport-door-2", {"iron-gear-wheel", 20})
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.replace_recipe_item("roboport-door-2", "iron-gear-wheel", "steel-gear-wheel")
end





if data.raw.item["nickel-plate"] then
  bobmods.lib.replace_recipe_item("roboport-antenna-3", "steel-plate", "nickel-plate")
end

if data.raw.item["insulated-cable"] then
  bobmods.lib.replace_recipe_item("roboport-antenna-3", "copper-cable", "insulated-cable")
end

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.replace_recipe_item("roboport-chargepad-3", "battery", "lithium-ion-battery")
  bobmods.lib.replace_recipe_item("flying-robot-frame-3", "battery", "lithium-ion-battery")
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.replace_recipe_item("roboport-chargepad-3", "steel-plate", "titanium-plate")
  bobmods.lib.replace_recipe_item("roboport-door-3", "steel-plate", "titanium-plate")
  bobmods.lib.replace_recipe_item("flying-robot-frame-3", "steel-plate", "titanium-plate")
  bobmods.lib.replace_recipe_item("bob-roboport-3", "steel-plate", "titanium-plate")
  bobmods.lib.replace_recipe_item("bob-robochest-3", "steel-plate", "titanium-plate")
  bobmods.lib.replace_recipe_item("bob-logistic-zone-expander-3", "steel-plate", "titanium-plate")
  bobmods.lib.replace_recipe_item("bob-robo-charge-port-3", "steel-plate", "titanium-plate")
  bobmods.lib.replace_recipe_item("bob-robo-charge-port-large-3", "steel-plate", "titanium-plate")
end


if data.raw.item["titanium-bearing"] then
  bobmods.lib.add_recipe_item("roboport-door-3", {"titanium-bearing", 20})
else
  bobmods.lib.add_recipe_item("roboport-door-3", {"iron-gear-wheel", 20})
  bobmods.lib.add_recipe_item("roboport-door-3", {type = "fluid", name = "lubricant", amount = 10})
  data.raw.recipe["roboport-door-3"].category = "crafting-with-fluid"
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.replace_recipe_item("roboport-door-3", "iron-gear-wheel", "titanium-gear-wheel")
end





if data.raw.item["nickel-plate"] then
  bobmods.lib.replace_recipe_item("roboport-antenna-4", "steel-plate", "nickel-plate")
end

if data.raw.item["gold-plate"] then
  bobmods.lib.replace_recipe_item("roboport-antenna-4", "copper-plate", "gold-plate")
end

if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.replace_recipe_item("roboport-antenna-4", "copper-cable", "gilded-copper-cable")
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.replace_recipe_item("roboport-antenna-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.replace_recipe_item("flying-robot-frame-4", "processing-unit", "advanced-processing-unit")
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.replace_recipe_item("roboport-chargepad-4", "processing-unit", "advanced-processing-unit")
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.replace_recipe_item("roboport-chargepad-4", "battery", "silver-zinc-battery")
  bobmods.lib.replace_recipe_item("flying-robot-frame-4", "battery", "silver-zinc-battery")
else
  if data.raw.item["lithium-ion-battery"] then
    bobmods.lib.replace_recipe_item("roboport-chargepad-4", "battery", "lithium-ion-battery")
    bobmods.lib.replace_recipe_item("flying-robot-frame-4", "battery", "lithium-ion-battery")
  end
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.replace_recipe_item("roboport-chargepad-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.replace_recipe_item("roboport-door-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.replace_recipe_item("bob-roboport-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.replace_recipe_item("bob-robochest-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.replace_recipe_item("bob-logistic-zone-expander-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.replace_recipe_item("bob-robo-charge-port-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.replace_recipe_item("bob-robo-charge-port-large-4", "steel-plate", "nitinol-alloy")
end

if data.raw.item["nitinol-bearing"] then
  bobmods.lib.add_recipe_item("roboport-door-4", {"nitinol-bearing", 20})
else
  bobmods.lib.add_recipe_item("roboport-door-4", {"iron-gear-wheel", 30})
  bobmods.lib.add_recipe_item("roboport-door-4", {type = "fluid", name = "lubricant", amount = 15})
  data.raw.recipe["roboport-door-4"].category = "crafting-with-fluid"
end

if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.replace_recipe_item("roboport-door-4", "iron-gear-wheel", "nitinol-gear-wheel")
end


if data.raw.item["silicon-nitride"] then
  bobmods.lib.replace_recipe_item("flying-robot-frame-4", "steel-plate", "silicon-nitride")
end



