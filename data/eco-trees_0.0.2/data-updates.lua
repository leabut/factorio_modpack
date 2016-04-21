----Code for editing other mods trees.----
--Tree Farm Mod Compatibility.  
if data.raw["tree"]["tf-germling"] ~= nil then
	require("prototypes.entity.tree-farm-trees")
end
--Tree Farm Caffine Addon
if data.raw["tree"]["tf-coffee-seed"] ~= nil then
	require("prototypes.entity.tree-farm-caffine-plants")
end
--Tree Farm Alien Plant Addon
if data.raw["tree"]["alien-plant-seed"] ~= nil then
	require("prototypes.entity.tree-farm-alien-plants")
end
--Dytech Core Compatibility
if data.raw["tree"]["sulfur-seed"] ~= nil then
	require("prototypes.entity.DyTech-trees")
end
--Cursed Exp Compatibility
--Still To come