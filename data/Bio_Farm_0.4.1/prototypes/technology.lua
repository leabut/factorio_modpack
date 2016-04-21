data:extend({
  {
      type = "technology",
      name = "bf_bio_farming",
      icon = "__Bio_Farm__/graphics/Bio_Farm_Tech.png",
      effects =
      {
        {
            type = "unlock-recipe",
            recipe = "bf-seedling"
        },
        {
            type = "unlock-recipe",
            recipe = "bf-Logs_Mk1"
        },
		{
            type = "unlock-recipe",
            recipe = "bf-Logs_Mk2"
        },
		{
            type = "unlock-recipe",
            recipe = "bf-Logs_Mk3"
        },
        {
            type = "unlock-recipe",
            recipe = "bf_bio_farm"
        }
      },
      prerequisites = {"optics"},
      unit =
      {
        count = 20,
        ingredients =
        {
          {"science-pack-1", 1}
        },
        time = 20
      }
  }
})