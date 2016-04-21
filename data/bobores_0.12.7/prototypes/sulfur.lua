bobmods.ores.sulfur =
{
  name = "sulfur",
  tint = {r = 0.8, g = 0.75, b = 0.1},
  map_color = {r=0.8, g=0.75, b=0.1},
  hardness = 0.3,
  mining_time = 1,
  enabled = false,
  icon = "__base__/graphics/icons/sulfur.png",
  stage_mult = 10,
  items =
  {
    {
      name = "sulfur"
    }
  },
  sprite =
  {
    sheet = 4
  },
  autoplace =
  {
    control = "sulfur",
    sharpness = 1,
    richness_multiplier = 13000,
    richness_base = 250,
    size_control_multiplier = 0.06,
    peaks =
    {
      {
        influence = 0.2,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
      {
        influence = 0.6,
        noise_layer = "sulfur",
        noise_octaves_difference = -3,
        noise_persistence = 0.45,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
    },
  }
}


