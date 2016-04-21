bobmods.ores.silver =
{
  name = "silver-ore",
  tint = {r = 0.875, g = 0.975, b = 1},
  map_color = {r=0.578, g=0.684, b=0.695},
  hardness = 0.6,
  mining_time = 1.5,
  enabled = false,
  icon = "__bobores__/graphics/icons/silver-ore.png",
  stage_mult = 10,
  item =
  {
    create = true,
    subgroup = "bob-ores",
  },
  sprite =
  {
    sheet = 2
  },
  autoplace =
  {
    control = "silver-ore",
    sharpness = 1,
    richness_multiplier = 12500,
    richness_base = 300,
    size_control_multiplier = 0.06,
    peaks =
    {
      {
        influence = 0.15,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
      {
        influence = 0.65,
        noise_layer = "silver-ore",
        noise_octaves_difference = -2.1,
        noise_persistence = 0.32,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
    },
  }
}

