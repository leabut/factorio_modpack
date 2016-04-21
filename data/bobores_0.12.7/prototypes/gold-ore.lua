bobmods.ores.gold =
{
  name = "gold-ore",
  tint = {r = 1, g = 0.75, b = 0},
  map_color = {r=0.9, g=0.63, b=0},
  hardness = 0.6,
  mining_time = 2,
  enabled = false,
  icon = "__bobores__/graphics/icons/gold-ore.png",
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
    control = "gold-ore",
    sharpness = 1,
    richness_multiplier = 12000,
    richness_base = 250,
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
        noise_layer = "gold-ore",
        noise_octaves_difference = -2.4,
        noise_persistence = 0.35,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
    },
  }
}

