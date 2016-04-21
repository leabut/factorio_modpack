local science_packs = {
  "science-pack-4",
}

if data.raw.recipe["science-pack-gold"] then
  table.insert(science_packs, "science-pack-gold")
end

if data.raw.recipe["alien-science-pack-blue"] then
  table.insert(science_packs, "alien-science-pack-blue")
end

if data.raw.recipe["alien-science-pack-orange"] then
  table.insert(science_packs, "alien-science-pack-orange")
end

if data.raw.recipe["alien-science-pack-purple"] then
  table.insert(science_packs, "alien-science-pack-purple")
end

if data.raw.recipe["alien-science-pack-yellow"] then
  table.insert(science_packs, "alien-science-pack-yellow")
end

if data.raw.recipe["alien-science-pack-green"] then
  table.insert(science_packs, "alien-science-pack-green")
end

if data.raw.recipe["alien-science-pack-red"] then
  table.insert(science_packs, "alien-science-pack-red")
end


bobmods.lib.add_productivity_limitations(science_packs)
