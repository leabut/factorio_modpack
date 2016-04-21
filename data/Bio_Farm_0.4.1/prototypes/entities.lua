data:extend({
  {
    type = "recipe-category",
    name = "bf-mod-dummy"
  },
  {
    type = "assembling-machine",
    name = "bf_bio_farm",
    icon = "__Bio_Farm__/graphics/Bio_Farm_Icon.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "bf_bio_farm"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = {{type = "fire", percent = 70}},
	fluid_boxes =
    {
		{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,        
		pipe_connections = {{ type="input", position = {-1, -5} }}
		},
		{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -5} }}
		},
      off_when_no_fluid_recipe = true
	  
    },

	collision_box = {{-4.3, -4.3}, {4.3, 4.3}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},

	animation =
	{
		filename = "__Bio_Farm__/graphics/Bio_Farm_Idle.png",
		priority = "high",
		width = 320,
		height = 320,
		frame_count = 1,
		shift = {0.75, 0},
	},
	
	working_visualisations =
	{

		animation =
		{
			filename = "__Bio_Farm__/graphics/Bio_Farm_Working.png",
			priority = "high",
			width = 320,
			height = 320,
			frame_count = 1,
			shift = {0.75, 0},
		},
	},

    crafting_categories = {"bf-mod-dummy"},
    crafting_speed = 1,
    energy_source =

	{
      type = "electric",
      usage_priority = "primary-input",
	  drain = "50kW",
	  emissions = -0.2,
    },	

    energy_usage = "50kW",
    ingredient_count = 3,
	module_slots = 0,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

  },
  
  {
    type = "lamp",
    name = "bf_light_for_Bio_Farm",
	selectable_in_game = false,
    icon = "__Bio_Farm__/graphics/Bio_Farm_Icon.png",

    max_health = 0,
    collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
	energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "100kW",
    light = {intensity = 0.95, size = 35},
    picture_off =
    {
      filename = "__Bio_Farm__/graphics/Bio_Farm_Idle.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
	  shift = {0.75, 0},
    },
    picture_on =
    {
      filename = "__Bio_Farm__/graphics/Bio_Farm_Working.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
	  shift = {0.75, 0},
    },

  },
  
  {
    type = "electric-pole",
    name = "bf_medium-electric-pole_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/Bio_Farm_Icon.png",
	selectable_in_game = false,
    max_health = 1,
    resistances = {{type = "fire", percent = 100}},
    collision_box = {{-0, -0}, {0, 0}},
    maximum_wire_distance = 10,
    supply_area_distance = 4.5,
 
    pictures =
    {
      filename = "__Bio_Farm__/graphics/Bio_Farm_Icon.png",
      priority = "low",
      width = 0,
      height = 0,
	  frame_count = 1,
      axially_symmetrical = false,
      direction_count = 4,
	  shift = {0.75, 0},
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.55, 0.4},
        },
        wire =
        {
          copper = {-0.03, -2.5},
        }
      },
      {
        shadow =
        {
          copper = {2.9, 0.1},
        },
        wire =
        {
          copper = {0.05, -2.75},
        }
      },
      {
        shadow =
        {
          copper = {1.5, -0.2},
        },
        wire =
        {
          copper = {-0.43, -2.4},
        }
      },
      {
        shadow =
        {
          copper = {2.88, 0.2},
        },
        wire =
        {
          copper = {0, -2.7},
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__Bio_Farm__/graphics/Bio_Farm_Icon.png",
      width = 0,
      height = 0,
      priority = "low"
    },
  },
  
   {
    type = "solar-panel",
    name = "bf_solar-panel_for_Bio_Farm",
    icon = "__Bio_Farm__/graphics/Bio_Farm_Icon.png",
	selectable_in_game = false,
    max_health = 1,
    resistances = {{type = "fire", percent = 100}},
    collision_box = {{-0, -0}, {0, 0}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Bio_Farm__/graphics/Bio_Farm_Icon.png",
      priority = "low",
      width = 0,
      height = 0,
    },
    production = "100kW"
  },
  
  })
  
  
  
