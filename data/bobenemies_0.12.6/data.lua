local EnableSmallArtifacts = true
local EnableNewArtifacts = true

if bobmods and bobmods.config and bobmods.config.enemies then
  if bobmods.config.enemies.EnableSmallArtifacts ~= nil then
    EnableSmallArtifacts = bobmods.config.enemies.EnableSmallArtifacts
  end
  if bobmods.config.enemies.EnableNewArtifacts ~= nil then
    EnableNewArtifacts = bobmods.config.enemies.EnableNewArtifacts
  end
end


if EnableSmallArtifacts == true then
  require("prototypes.small-alien-artifact")
end

if EnableNewArtifacts == true then
  require("prototypes.new-alien-artifact")
  if EnableSmallArtifacts == true then
    require("prototypes.new-small-alien-artifact")
  end
end


require("prototypes.damage-type")
require("prototypes.entities")
require("prototypes.projectiles")
require("prototypes.enemies")

