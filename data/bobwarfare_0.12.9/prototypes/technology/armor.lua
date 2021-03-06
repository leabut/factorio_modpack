data:extend(
{
  {
    type = "technology",
    name = "bob-armor-making-3",
    icon = "__base__/graphics/technology/armor-making.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heavy-armor-2"
      }
    },
    prerequisites =
    {
      "armor-making-2",
      "invar-processing",
      "cobalt-processing",
    },
    unit =
    {
      count = 150,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
    },
    upgrade = "true",
    order = "g-a-c"
  },

  {
    type = "technology",
    name = "bob-armor-making-4",
    icon = "__base__/graphics/technology/armor-making.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heavy-armor-3"
      }
    },
    prerequisites =
    {
      "bob-armor-making-3",
      "titanium-processing",
      "ceramics",
    },
    unit =
    {
      count = 100,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
    },
    upgrade = "true",
    order = "g-a-d"
  },


  {
    type = "technology",
    name = "bob-power-armor-3",
    icon = "__bobwarfare__/graphics/icons/technology/power-armor-mk3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-power-armor-mk3"
      }
    },
    prerequisites =
    {
      "power-armor-2",
      "aluminium-processing",
      "invar-processing",
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 3},
      },
      time = 30
    },
    upgrade = "true",
    order = "g-c-c"
  },

  {
    type = "technology",
    name = "bob-power-armor-4",
    icon = "__bobwarfare__/graphics/icons/technology/power-armor-mk4.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-power-armor-mk4"
      }
    },
    prerequisites =
    {
      "bob-power-armor-3",
      "advanced-electronics-3",
      "titanium-processing",
      "ceramics",
    },
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 3},
      },
      time = 30
    },
    upgrade = "true",
    order = "g-c-d"
  },
  {
    type = "technology",
    name = "bob-power-armor-5",
    icon = "__bobwarfare__/graphics/icons/technology/power-armor-mk5.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-power-armor-mk5"
      }
    },
    prerequisites =
    {
      "bob-power-armor-4",
      "tungsten-alloy-processing",
      "nitinol-processing",
    },
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 3},
      },
      time = 30
    },
    upgrade = "true",
    order = "g-c-e"
  },
}
)

