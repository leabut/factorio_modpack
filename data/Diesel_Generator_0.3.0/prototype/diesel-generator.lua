data:extend({
	{
		type = "item",
		name = "petroleum-generator",
		icon = "__Diesel_Generator__/graphics/diesel-generator-icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "energy",	
		order = "b[steam-power]-d[petroleum-generator]",		
		place_result = "petroleum-generator",
		stack_size = 20,
	},
	{
    type = "recipe",
    name = "petroleum-generator",
    energy_required = 15,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 15},
      {"engine-unit", 6},
	  {"electronic-circuit", 8},
	  {"pipe", 8}
    },
    result = "petroleum-generator"
  },

	{
		type = "generator",
		name = "petroleum-generator",
		icon = "__Diesel_Generator__/graphics/diesel-generator-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 2, result = "petroleum-generator"},
		max_health = 300,
		corpse = "big-remnants",
		effectivity = 100,
		fluid_usage_per_tick = 0.005,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-0.7, -2.7}, {0.7, 2.7}},
		selection_box = {{-1, -3}, {1, 3}},
		fluid_box =
		{
			base_area = 1,			
			pipe_connections =
			{
				{ position = {-1.5, 1} },
				{ position = {1.5,1} },
			},
			
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output"
		},
		horizontal_animation =
		{
			filename = "__Diesel_Generator__/graphics/diesel-engine-ha.png",
			width = 224,
			height = 128,
			frame_count = 8,
			line_length = 8,
			shift = {0.5,-0.40}
		},
		vertical_animation =
		{
			filename = "__Diesel_Generator__/graphics/diesel-engine-va.png",
			width = 224,
			height = 224,
			frame_count = 8,
			line_length = 8,
			shift = {1.5,0.1}
		},			
		smoke =
		{
			{
        name = "light-smoke",
        north_position = {0.42, -0.85},
        east_position = {-1.15, -2.0},
        frequency = 10 / 32,
        starting_vertical_speed = 0.06,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      },
			{
        name = "light-smoke",
        north_position = {-0.42, -0.85},
        east_position = {-1.15, -1.8},
        frequency = 10 / 32,
        starting_vertical_speed = 0.06,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      },
		},
	working_sound =
    {
      sound =
      {
        filename = "__Diesel_Generator__/sounds/petroleum-generator-loop-2.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.3,
    performance_to_sound_speedup = 0.2
  },

  {
    type = "technology",
    name = "petroleum-generator",
    icon = "__Diesel_Generator__/graphics/diesel-generator-tech.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "petroleum-generator"
      }
    },
    prerequisites = {"advanced-oil-processing"},
    unit =
    {
      count = 150,
      ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
      time = 60
    },
    order = "f-b-d"
  }



	})