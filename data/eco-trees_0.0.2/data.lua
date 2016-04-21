----Entity----
require("prototypes.entity.vanilla-trees")

--Code for future version compatibility; after 0.12.0 that add New Trees.
if data.raw["tree"]["tree-01-brown"] ~= nil then
	require("prototypes.entity.vanilla-trees-0.13.0")
end
--Tree 1 Brown is in the vanilla code but is deactivated.  