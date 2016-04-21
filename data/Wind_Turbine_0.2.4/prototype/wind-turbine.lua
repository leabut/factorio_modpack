data:extend({
	{
		type = "item",
		name = "wind-turbine",
		icon = "__Wind_Turbine__/graphics/wind_turbine_icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "energy",	
		order = "b[steam-power]-c[wind-turbine]",		
		place_result = "wind-turbine",
		stack_size = 30,
	},

	{
    type = "recipe",
    name = "wind-turbine",
    energy_required = 5,
    enabled = "true",
    ingredients =
    {
      {"iron-plate", 12},
      {"iron-gear-wheel", 4},
	  {"copper-cable", 5},
	  {"iron-stick", 6}
    },
    result = "wind-turbine"
  },

  {
		type = "generator",
		name = "wind-turbine",
		icon = "__Wind_Turbine__/graphics/wind_turbine_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "wind-turbine"},
		max_health = 50,
		corpse = "big-remnants",
		effectivity = 1,
		fluid_usage_per_tick = 0.004,
		resistances =
		{
			{
				type = "physical",
				percent = 10
			}
		},
		collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
		selection_box = {{-1, -1}, {1, 1}},
		fluid_box =
		{
			base_area = 1,			
			pipe_connections =
			{
				--{ position = {-1, 2} },
				--{ position = {-1,-2} },
			},
			
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		horizontal_animation =
		{
			filename = "__Wind_Turbine__/graphics/wind_turbine_sheet_4.png",
			width = 175,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {1.7,-1.4}
		},
		vertical_animation =
		{
			filename = "__Wind_Turbine__/graphics/wind_turbine_sheet_4.png",
			width = 175,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {1.7,-1.4}
		},		
		smoke =
		{
			
		},
	working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.2
  },


	{
	type = "fluid",
	name = "wind",
	default_temperature = 0,
	max_temperature = 100,
	heat_capacity = "1KJ",
    base_color = {r=0, g=0.34, b=0.6},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__base__/graphics/icons/fluid/water.png",
    order = "a[fluid]-z[wind]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	},

})