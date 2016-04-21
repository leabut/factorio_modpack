require("prototypes.recipe.roboport-recipe-updates")
require("prototypes.recipe.inserter-recipe-updates")
require("prototypes.recipe.belt-recipe-updates")
require("prototypes.recipe.storage-tank-recipe-updates")
require("prototypes.recipe.train-recipe-updates")

require("prototypes.technology-updates")

require("prototypes.productivity-limitations")


local addtag = true
for i, pipe in pairs(data.raw["pipe-to-ground"]) do
  for j, flag in pairs(pipe.flags) do
    if flag == "fast-replaceable-no-build-while-moving" then
      addtag = false
    end
  end
  if addtag then
    table.insert(pipe.flags,"fast-replaceable-no-build-while-moving")
  end
end


