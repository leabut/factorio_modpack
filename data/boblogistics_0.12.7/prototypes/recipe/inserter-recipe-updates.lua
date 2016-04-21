local function complete_purple_inserter_recipe(name)
  if data.raw.recipe[name] then
    if data.raw.item["titanium-bearing"] then
      bobmods.lib.add_recipe_item(name, {"titanium-bearing", 2})
    else
    bobmods.lib.add_recipe_item(name, {"iron-gear-wheel", 2})
    end

    if data.raw.item["titanium-gear-wheel"] then
      bobmods.lib.replace_recipe_item(name, "iron-gear-wheel", "titanium-gear-wheel")
    end
  end
end


complete_purple_inserter_recipe("purple-inserter")

complete_purple_inserter_recipe("purple-long-inserter")

complete_purple_inserter_recipe("purple-near-inserter")
complete_purple_inserter_recipe("purple-far-inserter")

complete_purple_inserter_recipe("purple-short-far-inserter")
complete_purple_inserter_recipe("purple-short-long-inserter")
complete_purple_inserter_recipe("purple-long-near-inserter")
complete_purple_inserter_recipe("purple-long-short-inserter")

