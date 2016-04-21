local LongInserters = true
local NearInserters = true
local MoreInserters = true
local ExtremelyFastBelt = true


if bobmods and bobmods.config and bobmods.config.logistics then
  if bobmods.config.logistics.LongInserters ~= nil then
    LongInserters = bobmods.config.logistics.LongInserters
  end
  if bobmods.config.logistics.NearInserters ~= nil then
    NearInserters = bobmods.config.logistics.NearInserters
  end
  if bobmods.config.logistics.MoreInserters ~= nil then
    MoreInserters = bobmods.config.logistics.MoreInserters
  end
  if bobmods.config.logistics.ExtremelyFastBelt ~= nil then
    ExtremelyFastBelt = bobmods.config.logistics.ExtremelyFastBelt 
  end
end


require("prototypes.category")


require("prototypes.green-transport-belt")
if ExtremelyFastBelt == true then
  require("prototypes.purple-transport-belt")
end

require("prototypes.inserter")
if LongInserters == true then
  require("prototypes.long-inserter")
  if NearInserters == true then
    require("prototypes.near-inserter")
    if MoreInserters == true then
      require("prototypes.more-inserter")
    end
  end
end


require("prototypes.item.train")
require("prototypes.item.robots")
require("prototypes.item.roboport")
require("prototypes.item.roboport-parts")
require("prototypes.item.pipes")
require("prototypes.item.storage-tank")

require("prototypes.entity.train")
require("prototypes.entity.robots")
require("prototypes.entity.roboport")
require("prototypes.entity.pipes")
require("prototypes.entity.storage-tank")

require("prototypes.recipe.train-recipe")
require("prototypes.recipe.robots-recipe")
require("prototypes.recipe.roboport-recipe")
require("prototypes.recipe.roboport-parts-recipe")
require("prototypes.recipe.pipes-recipe")
require("prototypes.recipe.storage-tank-recipe")


require("prototypes.technology")
require("prototypes.technology-logistics")

