data.raw.resource["stone"].autoplace = (
  {
    control = "stone",
    sharpness = 1,
    richness_multiplier = 15000,
    richness_base = 350,
    size_control_multiplier = 0.06,
    peaks =
    {
      {
        influence = 0.2,
      },
      {
        influence = 0.65,
        noise_layer = "stone",
        noise_octaves_difference = -2.4,
        noise_persistence = 0.35,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
      {
        influence = 0.65,
        noise_layer = "stone",
        noise_octaves_difference = -3,
        noise_persistence = 0.4,
        starting_area_weight_optimal = 1,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },

      {
        influence = -0.2,
        max_influence = 0,
        noise_layer = "copper-ore",
        noise_octaves_difference = -2.3,
        noise_persistence = 0.45,
      },
      {
        influence = -0.2,
        max_influence = 0,
        noise_layer = "iron-ore",
        noise_octaves_difference = -2.3,
        noise_persistence = 0.45,
      },
      {
        influence = -0.2,
        max_influence = 0,
        noise_layer = "coal",
        noise_octaves_difference = -2.3,
        noise_persistence = 0.45,
      }
    }
  }
)
