data:extend(
{
  {
    type = "item",
    name = "long-handed-burner-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/long-handed-burner-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "a[burner-inserter]",
    place_result = "long-handed-burner-inserter",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "long-handed-burner-inserter",
    enabled = "false",
    ingredients =
    {
      {"burner-inserter", 1},
      {"iron-plate", 1},
      {"iron-gear-wheel", 1}
    },
    result = "long-handed-burner-inserter"
  },

  {
    type = "inserter",
    name = "long-handed-burner-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/long-handed-burner-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "long-handed-burner-inserter"},
    max_health = 40,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 100000,
    energy_per_rotation = 100000,
    hand_size = 1.5,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.3
        }
      }
    },
    extension_speed = 0.028,
    rotation_speed = 0.01,
    pickup_position = {0, -2},
    insert_position = {0, 2.2},
    fast_replaceable_group = "long-handed-inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-basic-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-basic-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46
      }
    },
  },

  {
    type = "technology",
    name = "long-burner-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/long-handed-burner-inserter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "long-handed-burner-inserter"
      },
    },
    prerequisites =
    {
    },
    unit =
    {
      count = 10,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 10
    },
    order = "a-e",
  },
}
)


data.raw.item["fast-inserter"].order = "d[fast-inserter-2]"

data:extend(
{
  {
    type = "item",
    name = "fast-long-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/fast-long-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "d[fast-inserter-4]",
    place_result = "fast-long-inserter",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "fast-long-inserter",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit", 2},
      {"iron-plate", 2},
      {"long-handed-inserter", 1}
    },
    result = "fast-long-inserter"
  },

  {
    type = "inserter",
    name = "fast-long-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/fast-long-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "fast-long-inserter"
    },
    max_health = 40,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    hand_size = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.1,
    rotation_speed = 0.035,
    pickup_position = {0, -2},
    insert_position = {0, 2.2},
    fast_replaceable_group = "long-handed-inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__boblogistics__/graphics/entity/inserter/fast-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46
      }
    },
  },

  {
    type = "technology",
    name = "long-inserters-1",
    icon = "__boblogistics__/graphics/icons/inserter/fast-long-inserter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fast-long-inserter"
      },
    },
    prerequisites =
    {
      "automation",
      "logistics",
    },
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 15
    },
    order = "a-f-a-1",
  },
}
)



data.raw.item["smart-inserter"].order = "f[inserter]-e[smart-inserter-1-2]"

data:extend(
{
  {
    type = "item",
    name = "smart-long-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-long-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "f[inserter]-e[smart-inserter-2-4]",
    place_result = "smart-long-inserter",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "smart-long-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-long-inserter", 1},
      {"electronic-circuit", 4}
    },
    result = "smart-long-inserter"
  },

  {
    type = "inserter",
    name = "smart-long-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-long-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "smart-long-inserter"},
    max_health = 40,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 7000,
    energy_per_rotation = 7000,
    hand_size = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.1,
    rotation_speed = 0.035,
    pickup_position = {0, -2},
    insert_position = {0, 2.2},
    filter_count = 5,
    programmable = true,
    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "long-handed-inserter",
    circuit_wire_max_distance = 7.5,
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0, 0},
        green = {0, 0}
      },
      wire =
      {
        red = {0, 0},
        green = {0, 0}
      }
    },
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet=
      {
        filename = "__boblogistics__/graphics/entity/inserter/smart-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46
      }
    },
  },

  {
    type = "technology",
    name = "long-inserters-2",
    icon = "__boblogistics__/graphics/icons/inserter/smart-long-inserter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "smart-long-inserter"
      },
    },
    prerequisites =
    {
      "electronics",
      "long-inserters-1",
    },
    unit =
    {
      count = 25,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 20
    },
    order = "a-f-a-2",
  },
}
)



data:extend(
{
  {
    type = "item",
    name = "purple-long-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-long-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "f[inserter]-f[purple-inserter-2-4]",
    place_result = "purple-long-inserter",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "purple-long-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-long-inserter", 1},
      {"advanced-circuit", 2},
      {"iron-gear-wheel", 2},
    },
    result = "purple-long-inserter"
  },

  {
    type = "inserter",
    name = "purple-long-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-long-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "purple-long-inserter"},
    max_health = 40,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    hand_size = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.25,
    rotation_speed = 0.1,
    pickup_position = {0, -2},
    insert_position = {0, 2.2},
--    filter_count = 5,
--    programmable = true,
--    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "long-handed-inserter",
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet=
      {
        filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46
      }
    },
  },

  {
    type = "technology",
    name = "long-inserters-3",
    icon = "__boblogistics__/graphics/icons/inserter/purple-long-inserter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "purple-long-inserter"
      },
    },
    prerequisites =
    {
      "purple-inserters",
      "long-inserters-1",
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "a-f-a-3",
  },
}
)


