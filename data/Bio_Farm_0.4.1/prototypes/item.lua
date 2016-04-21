data:extend({

 {
    type = "item",
    name = "bf-seedling",
    icon = "__Bio_Farm__/graphics/Seedling.png",
    flags = { "goes-to-quickbar" },
    subgroup = "raw-material",
    stack_size= 50,
  },
  {
    type= "item",
    name= "bf_bio_farm",
    icon = "__Bio_Farm__/graphics/Bio_Farm_Icon.png",
    flags= { "goes-to-quickbar" },
    subgroup = "production-machine",
    place_result = "bf_bio_farm",
    stack_size= 10,
  },
  
  {
    type= "item",
    name= "bf_light_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/Bio_Farm_Icon.png",
    flags= { "goes-to-quickbar" },
    subgroup = "production-machine",
    place_result = "bf_light_for_Bio_Farm",
    stack_size= 10,
	enable = false,
  },
  
  {
    type = "item",
    name = "bf_medium-electric-pole_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/Bio_Farm_Icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-b[medium-electric-pole]",
    place_result = "bf_medium-electric-pole_for_Bio_Farm",
    stack_size = 50,
	enable = false,
  },
  {
    type = "item",
    name = "bf_solar-panel_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/Bio_Farm_Icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "d[solar-panel]-a[solar-panel]",
    place_result = "bf_solar-panel_for_Bio_Farm",
    stack_size = 50,
	enable = false,
  },
  
})