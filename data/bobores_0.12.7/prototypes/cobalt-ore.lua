bobmods.ores.cobalt =
{
  name = "cobalt-ore",
  tint = {r = 0.3, g = 0.53, b = 0.77},
  map_color = {r=0.18, g=0.35, b=0.53},
  hardness = 1.4,
  mining_time = 2.5,
  enabled = false,
  icon = "__bobores__/graphics/icons/cobalt-ore.png",
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
    control = "cobalt-ore",
    sharpness = 1,
    richness_multiplier = 10000,
    richness_base = 150,
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
        noise_layer = "cobalt-ore",
        noise_octaves_difference = -2.9,
        noise_persistence = 0.4,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
    },
  }
}


