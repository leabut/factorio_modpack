data:extend(
{
  {
	type = "resource",
	name = "ilmenit-ore",
	icon = "__SupremeWarfare__/graphics/metallurgy/ilmenit/ore-icon.png",
	flags = {"placeable-neutral"},
	order= "z-o",
	minable = 
	{
	  hardness = 0.9,
	  mining_particle = "stone-particle",
	  mining_time = 10,
	  result = "ilmenit-ore"
	},
	collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	autoplace =
    {
      control = "metallurgy-ores",
      sharpness = 0.85,
      max_probability = 0.06,
      richness_multiplier = 14000,
      richness_base = 11,
      size_control_multiplier = 0.06,
      peaks = {
        {
          influence = 0.2,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.3,
          starting_area_weight_optimal = -1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.725,
          noise_layer = "ilmenit-ore",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.8,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.627,
          noise_layer = "ilmenit-ore",
          noise_octaves_difference = -2.2,
          noise_persistence = 0.9,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.22,
          max_influence = 0,
          noise_layer = "metallurgy-ores",
          noise_octaves_difference = -3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.22,
          max_influence = 0,
          noise_layer = "metallurgy-ores",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.22,
          max_influence = 0,
          noise_layer = "metallurgy-ores",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
        {
          influence = -0.22,
          max_influence = 0,
          noise_layer = "metallurgy-ores",
          noise_octaves_difference = -2.3,
          noise_persistence = 0.45,
        },
      },
    },
    stage_counts = {600, 500, 400, 300, 200, 100, 40, 20},
	stages = 
	{
	  filename = "__SupremeWarfare__/graphics/metallurgy/ilmenit/ore.png",
	  priority = "extra-high",
	  width = 38,
	  height = 38,
	  frame_count = 3,
	  direction_count = 8
	},
    map_color = { r = 0, g = 1, b = 1 }
  }
}
)