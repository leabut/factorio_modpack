for i, ore in pairs(bobmods.ores) do
  if ore.enabled then
    bobmods.lib.generate_ore_updates_stage(ore)
  end
end

if bobmods.ores.settings.EnhanceStone == true then
  require("prototypes.stone")
end

if bobmods.ores.settings.UnsortedGemOre == true then
  bobmods.lib.add_item_to_resource("gem-ore", {name="gem-ore"})
else
  bobmods.lib.add_item_to_resource("gem-ore", {name="diamond-ore", probability = bobmods.gems.DiamondRatio})
  bobmods.lib.add_item_to_resource("gem-ore", {name="emerald-ore", probability = bobmods.gems.EmeraldRatio})
  bobmods.lib.add_item_to_resource("gem-ore", {name="amethyst-ore", probability = bobmods.gems.AmethystRatio})
  bobmods.lib.add_item_to_resource("gem-ore", {name="ruby-ore", probability = bobmods.gems.RubyRatio})
  bobmods.lib.add_item_to_resource("gem-ore", {name="sapphire-ore", probability = bobmods.gems.SapphireRatio})
  bobmods.lib.add_item_to_resource("gem-ore", {name="topaz-ore", probability = bobmods.gems.TopazRatio})
end

if bobmods.ores.settings.GemsFromOtherOres == true then
  bobmods.lib.add_item_to_resource("coal", {name="diamond-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.DiamondRatio})

  bobmods.lib.add_item_to_resource("quartz", {name="emerald-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.EmeraldRatio})
  bobmods.lib.add_item_to_resource("quartz", {name="amethyst-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.AmethystRatio})

  bobmods.lib.add_item_to_resource("bauxite-ore", {name="ruby-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.RubyRatio})
  bobmods.lib.add_item_to_resource("bauxite-ore", {name="sapphire-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.SapphireRatio})
  bobmods.lib.add_item_to_resource("bauxite-ore", {name="topaz-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.TopazRatio})
end


if bobmods.ores.settings.LeadGivesNickel == true then
  bobmods.lib.add_item_to_resource("lead-ore", {name = "nickel-ore", probability = bobmods.ores.settings.LeadNickelRatio})
end


if bobmods.ores.settings.NickelGivesCobalt == true then
  if bobmods.ores.nickel.enabled then
    bobmods.lib.add_item_to_resource("nickel-ore", {name = "cobalt-ore", probability = bobmods.ores.settings.NickelCobaltRatio})
  else
    if bobmods.ores.settings.LeadGivesNickel == true then
      bobmods.lib.add_item_to_resource("lead-ore", {name = "cobalt-ore", probability = bobmods.ores.settings.LeadNickelRatio * bobmods.ores.settings.NickelCobaltRatio})
    end
  end
end


for i, drill in pairs(data.raw["mining-drill"]) do
  if not drill.storage_slots then drill.storage_slots = 6 end
end

if data.raw.item["obsidian"] then
  bobmods.lib.add_item_to_resource("cobalt-ore", {name = "obsidian", amount_min = 1, amount_max = 12, probability = 0.25})
end

if data.raw["item-subgroup"]["bob-gems-ore"] then
  data.raw.recipe["sort-gem-ore"].subgroup = "bob-gems-ore"
end
