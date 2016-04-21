data:extend({
	{
	    type = "technology",
	    name = "vzy-pollution-engine-1",
    	icon = "__base__/graphics/icons/boiler.png",    
    	effects = {{
        	type = "unlock-recipe",
	        recipe = "vzy-pollution-engine-1"
      	}},
    	prerequisites = {"alien-technology","electric-energy-accumulators-1"},
    	unit = {
    		count = 400,
    		ingredients = {{"science-pack-1", 2},{"science-pack-2", 2},{"alien-science-pack", 1}},
      		time = 45
    	}
	},{
	    type = "recipe",
	    name = "vzy-pollution-engine-1",
	    ingredients = {
	      {"battery",1},
	      {"electronic-circuit",5},
	      {"alien-artifact",10}
	    },
	    result = "vzy-pollution-engine-1",
	    enabled = false
	},{
    	type = "item",
	    name = "vzy-pollution-engine-1",
	    icon = "__base__/graphics/icons/boiler.png",
    	flags = {"goes-to-quickbar"},
	    subgroup = "energy",
	    order = "vzy-pollution-engine-1",
	    place_result = "vzy-pollution-engine-1",
	    stack_size = 500
	},{
    type = "generator",
    name = "vzy-pollution-engine-1",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "vzy-pollution-engine-1"},
    max_health = 300,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 1,
    fluid_usage_per_tick = 10.0,
    resistances ={{type = "fire",percent = 70}},
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box ={
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {},},
    energy_source ={
      type = "electric",
      usage_priority = "primary-output"},
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 137,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 137,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke ={{
        name = "smoke",
          position = {0, 0},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05}},
    production = "85kW"
  }})
