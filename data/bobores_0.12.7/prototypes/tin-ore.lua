bobmods.ores.tin =
{
  name = "tin-ore",
  tint = {r = 0.95, g = 0.95, b = 0.95},
  map_color = {r = 0.600, g = 0.600, b = 0.600},
  hardness = 0.8,
  mining_time = 2,
  enabled = false,
  icon = "__bobores__/graphics/icons/tin-ore.png",
  stage_mult = 10,
  item =
  {
    create = true,
    subgroup = "bob-ores",
  },
  sprite =
  {
    sheet = 1
  },
  autoplace =
  {
    control = "tin-ore",
    sharpness = 1,
    richness_multiplier = 14000,
    richness_base = 300,
    size_control_multiplier = 0.06,
    peaks =
    {
      {
        influence = 0.2,
      },
      {
        influence = 0.65,
        noise_layer = "tin-ore",
        noise_octaves_difference = -1.9,
        noise_persistence = 0.3,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
      {
        influence = 0.68,
        noise_layer = "tin-ore",
        noise_octaves_difference = -2.3,
        noise_persistence = 0.4,
        starting_area_weight_optimal = 1,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
    },
  }
}


