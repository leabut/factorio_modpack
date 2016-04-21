data:extend(
{
  {
    type = "recipe",
    name = "flying-robot-frame-2",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 1},
      {"battery", 2},
      {"steel-plate", 1},
      {"advanced-circuit", 3}
    },
    result = "flying-robot-frame-2",
  },
  {
    type = "recipe",
    name = "flying-robot-frame-3",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 1},
      {"battery", 2},
      {"steel-plate", 1},
      {"processing-unit", 3}
    },
    result = "flying-robot-frame-3",
  },
  {
    type = "recipe",
    name = "flying-robot-frame-4",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 1},
      {"battery", 2},
      {"steel-plate", 1},
      {"processing-unit", 3}
    },
    result = "flying-robot-frame-4",
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "bob-logistic-robot-2",
    enabled = "false",
    ingredients =
    {
      {"logistic-robot", 1},
      {"flying-robot-frame-2", 1},
    },
    result = "bob-logistic-robot-2"
  },

  {
    type = "recipe",
    name = "bob-logistic-robot-3",
    enabled = "false",
    ingredients =
    {
      {"bob-logistic-robot-2", 1},
      {"flying-robot-frame-3", 1},
    },
    result = "bob-logistic-robot-3"
  },

  {
    type = "recipe",
    name = "bob-logistic-robot-4",
    enabled = "false",
    ingredients =
    {
      {"bob-logistic-robot-3", 1},
      {"flying-robot-frame-4", 1},
    },
    result = "bob-logistic-robot-4"
  },


  {
    type = "recipe",
    name = "bob-construction-robot-2",
    enabled = "false",
    ingredients =
    {
      {"construction-robot", 1},
      {"flying-robot-frame-2", 1},
    },
    result = "bob-construction-robot-2"
  },

  {
    type = "recipe",
    name = "bob-construction-robot-3",
    enabled = "false",
    ingredients =
    {
      {"bob-construction-robot-2", 1},
      {"flying-robot-frame-3", 1},
    },
    result = "bob-construction-robot-3"
  },

  {
    type = "recipe",
    name = "bob-construction-robot-4",
    enabled = "false",
    ingredients =
    {
      {"bob-construction-robot-3", 1},
      {"flying-robot-frame-4", 1},
    },
    result = "bob-construction-robot-4"
  },
}
)





