bobmods.ores.nickel =
{
  name = "nickel-ore",
  tint = {r=0.54, g=0.8, b=0.75},
  map_color = {r=0.380, g=0.560, b=0.515},
  hardness = 1.4,
  mining_time = 2,
  enabled = false,
  icon = "__bobores__/graphics/icons/nickel-ore.png",
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
    control = "nickel-ore",
    sharpness = 1,
    richness_multiplier = 11000,
    richness_base = 200,
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
        noise_layer = "nickel-ore",
        noise_octaves_difference = -2.4,
        noise_persistence = 0.35,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
    },
  }
}


