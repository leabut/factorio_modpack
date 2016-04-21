require("prototypes.damage-type")
require("prototypes.category")


require("prototypes.item.fluid")
require("prototypes.item.parts")
require("prototypes.item.gun")
require("prototypes.item.ammo")
require("prototypes.item.mine")
require("prototypes.item.armor")
require("prototypes.item.drone")
require("prototypes.item.wall")
require("prototypes.item.equipment")
require("prototypes.item.turrets")
require("prototypes.item.tank")

require("prototypes.recipe.fluid-recipe")
require("prototypes.recipe.parts-recipe")
require("prototypes.recipe.gun-recipe")
require("prototypes.recipe.ammo-recipe")
require("prototypes.recipe.mine-recipe")
require("prototypes.recipe.armor-recipe")
require("prototypes.recipe.drone")
require("prototypes.recipe.wall")
require("prototypes.recipe.equipment")
require("prototypes.recipe.turrets")
require("prototypes.recipe.tank")

require("prototypes.entity.effects")
require("prototypes.entity.projectiles")
require("prototypes.entity.mine")
require("prototypes.entity.drone")
require("prototypes.entity.wall")
require("prototypes.entity.turrets")
require("prototypes.entity.tank")

require("prototypes.equipment.equipment")

require("prototypes.technology.technology")
require("prototypes.technology.gun")
require("prototypes.technology.ammo")
require("prototypes.technology.armor")
require("prototypes.technology.mine")
require("prototypes.technology.drone")
require("prototypes.technology.wall")
require("prototypes.technology.equipment")
require("prototypes.technology.laser-rifle-upgrades")
require("prototypes.technology.turrets")
require("prototypes.technology.sniper-turret-upgrades")
require("prototypes.technology.rocket-upgrades")
require("prototypes.technology.tank")

local include_tank_cannon_upgrades = true

if bobmods and bobmods.config and bobmods.config.warfare then
  if bobmods.config.warfare.TankCannonResearch ~= nil then
    include_tank_cannon_upgrades = bobmods.config.warfare.TankCannonResearch
  end
end

if include_tank_cannon_upgrades == true then
  require("prototypes.technology.tank-cannon-upgrades")
  require("prototypes.technology.tank-artillery-upgrades")
end
