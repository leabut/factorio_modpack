_G.vzyMods = {}
_G.vzyMods["vzy"] = {x = 0,y = 0,z = 6}
require("scripts.modGenerator")
--depreciated.
_G.vzyCompressedAutoGen = generateMod
require("scripts.rawDataGetter")
_G.vzyGetItems = forItems
_G.vzyGetTechnologies = forTechnologies
_G.vzyGetResources = forResources
_G.vzyGetRecipes = forRecipes
_G.vzyGetFluids = forFluids
_G.vzyGetFromTable = forTable
require("scripts.generator")
_G.vzyGenerateThing = vzyGenerateThing
_G.vzyCopier = vzyGenerateThingCopyTo
--vzy Mods made on July 16th of 2015
