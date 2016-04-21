data:extend(
{
  {
    type = "item",
    name = "smart-short-far-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-short-far-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-smart-inserter",
    order = "f[inserter]-e[smart-inserter-1-3]",
    place_result = "smart-short-far-inserter",
    stack_size = 50
  },

  {
    type = "item",
    name = "smart-short-long-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-short-long-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-smart-inserter",
    order = "f[inserter]-e[smart-inserter-1-4]",
    place_result = "smart-short-long-inserter",
    stack_size = 50
  },

  {
    type = "item",
    name = "smart-long-near-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-long-near-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-smart-inserter",
    order = "f[inserter]-e[smart-inserter-2-1]",
    place_result = "smart-long-near-inserter",
    stack_size = 50
  },

  {
    type = "item",
    name = "smart-long-short-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-long-short-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-smart-inserter",
    order = "f[inserter]-e[smart-inserter-2-2]",
    place_result = "smart-long-short-inserter",
    stack_size = 50
  },


  {
    type = "recipe",
    name = "smart-short-far-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-far-inserter", 1},
      {"electronic-circuit", 4}
    },
    result = "smart-short-far-inserter"
  },

  {
    type = "recipe",
    name = "smart-short-long-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-long-inserter", 1},
      {"electronic-circuit", 4}
    },
    result = "smart-short-long-inserter"
  },

  {
    type = "recipe",
    name = "smart-long-near-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-near-inserter", 1},
      {"electronic-circuit", 4}
    },
    result = "smart-long-near-inserter"
  },

  {
    type = "recipe",
    name = "smart-long-short-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-inserter", 1},
      {"electronic-circuit", 4}
    },
    result = "smart-long-short-inserter"
  },


  {
    type = "inserter",
    name = "smart-short-far-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-short-far-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "smart-short-far-inserter"},
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
    hand_size = 1.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.12,
    rotation_speed = 0.035,
    pickup_position = {0, -1},
    insert_position = {0, 1.8},
    filter_count = 5,
    programmable = true,
    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "inserter",
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
      filename = "__boblogistics__/graphics/entity/inserter/smart-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-open.png",
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
    type = "inserter",
    name = "smart-short-long-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-short-long-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "smart-short-long-inserter"},
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
    hand_size = 1.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.12,
    rotation_speed = 0.035,
    pickup_position = {0, -1},
    insert_position = {0, 2.2},
    filter_count = 5,
    programmable = true,
    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "inserter",
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
      filename = "__boblogistics__/graphics/entity/inserter/smart-inserter-hand-base.png",
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
    type = "inserter",
    name = "smart-long-near-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-long-near-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "smart-long-near-inserter"},
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
    hand_size = 1.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.12,
    rotation_speed = 0.035,
    pickup_position = {0, -2},
    insert_position = {0, 0.8},
    filter_count = 5,
    programmable = true,
    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "inserter",
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
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-open.png",
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
    type = "inserter",
    name = "smart-long-short-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-long-short-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "smart-long-short-inserter"},
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
    hand_size = 1.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.12,
    rotation_speed = 0.035,
    pickup_position = {0, -2},
    insert_position = {0, 1.2},
    filter_count = 5,
    programmable = true,
    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "inserter",
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
      filename = "__boblogistics__/graphics/entity/inserter/smart-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/smart-inserter-hand-open.png",
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
    name = "more-inserters-1",
    icon = "__boblogistics__/graphics/icons/inserter/smart-long-inserter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "smart-short-far-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "smart-short-long-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "smart-long-near-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "smart-long-short-inserter"
      },
    },
    prerequisites =
    {
      "near-inserters-2",
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "a-f-c-1",
  },
}
)



data:extend(
{
  {
    type = "item",
    name = "purple-short-far-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-short-far-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-purple-inserter",
    order = "f[inserter]-f[purple-inserter-1-3]",
    place_result = "purple-short-far-inserter",
    stack_size = 50
  },

  {
    type = "item",
    name = "purple-short-long-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-short-long-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-purple-inserter",
    order = "f[inserter]-f[purple-inserter-1-4]",
    place_result = "purple-short-long-inserter",
    stack_size = 50
  },

  {
    type = "item",
    name = "purple-long-near-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-long-near-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-purple-inserter",
    order = "f[inserter]-f[purple-inserter-2-1]",
    place_result = "purple-long-near-inserter",
    stack_size = 50
  },

  {
    type = "item",
    name = "purple-long-short-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-long-short-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-purple-inserter",
    order = "f[inserter]-f[purple-inserter-2-2]",
    place_result = "purple-long-short-inserter",
    stack_size = 50
  },


  {
    type = "recipe",
    name = "purple-short-far-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-far-inserter", 1},
      {"advanced-circuit", 2},
      {"iron-gear-wheel", 2},
    },
    result = "purple-short-far-inserter"
  },

  {
    type = "recipe",
    name = "purple-short-long-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-long-inserter", 1},
      {"advanced-circuit", 2},
      {"iron-gear-wheel", 2},
    },
    result = "purple-short-long-inserter"
  },

  {
    type = "recipe",
    name = "purple-long-near-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-near-inserter", 1},
      {"advanced-circuit", 2},
      {"iron-gear-wheel", 2},
    },
    result = "purple-long-near-inserter"
  },

  {
    type = "recipe",
    name = "purple-long-short-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-inserter", 1},
      {"advanced-circuit", 2},
      {"iron-gear-wheel", 2},
    },
    result = "purple-long-short-inserter"
  },


  {
    type = "inserter",
    name = "purple-short-far-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-short-far-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "purple-short-far-inserter"},
    max_health = 40,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
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
    hand_size = 1.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.25,
    rotation_speed = 0.1,
    pickup_position = {0, -1},
    insert_position = {0, 1.8},
--    filter_count = 5,
--    programmable = true,
--    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "inserter",
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-open.png",
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
    type = "inserter",
    name = "purple-short-long-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-short-long-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "purple-short-long-inserter"},
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
    hand_size = 1.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.25,
    rotation_speed = 0.1,
    pickup_position = {0, -1},
    insert_position = {0, 2.2},
--    filter_count = 5,
--    programmable = true,
--    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "inserter",
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-hand-base.png",
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
    type = "inserter",
    name = "purple-long-near-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-long-near-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "purple-long-near-inserter"},
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
    hand_size = 1.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.25,
    rotation_speed = 0.1,
    pickup_position = {0, -2},
    insert_position = {0, 0.8},
--    filter_count = 5,
--    programmable = true,
--    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "inserter",
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-open.png",
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
    type = "inserter",
    name = "purple-long-short-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-long-short-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "purple-long-short-inserter"},
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
    hand_size = 1.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.25,
    rotation_speed = 0.1,
    pickup_position = {0, -2},
    insert_position = {0, 1.2},
--    filter_count = 5,
--    programmable = true,
--    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "inserter",
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/purple-inserter-hand-open.png",
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
    name = "more-inserters-2",
    icon = "__boblogistics__/graphics/icons/inserter/purple-long-inserter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "purple-short-far-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "purple-short-long-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "purple-long-near-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "purple-long-short-inserter"
      },
    },
    prerequisites =
    {
      "near-inserters-3",
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
    order = "a-f-c-2",
  },
}
)



