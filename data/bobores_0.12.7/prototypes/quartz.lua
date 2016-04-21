bobmods.ores.quartz =
{
  name = "quartz",
  tint = {r = 1, g = 1, b = 1},
  map_color = {r = 1, g = 1, b = 1},
  hardness = 0.5,
  mining_time = 2,
  enabled = false,
  icon = "__bobores__/graphics/icons/quartz.png",
  stage_mult = 10,
  item =
  {
    create = true,
    subgroup = "bob-ores",
  },
  sprite =
  {
    sheet = 3
  },
  autoplace =
  {
    control = "quartz",
    sharpness = 1,
    richness_multiplier = 13000,
    richness_base = 250,
    size_control_multiplier = 0.06,
    peaks =
    {
      {
        influence = 0.16,
      },
      {
        influence = 0.65,
        noise_layer = "quartz",
        noise_octaves_difference = -2.4,
        noise_persistence = 0.35,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
      {
        influence = 0.7,
        noise_layer = "quartz",
        noise_octaves_difference = -4,
        noise_persistence = 0.45,
        starting_area_weight_optimal = 1,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
    },
  }
}

