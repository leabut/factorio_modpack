data:extend(
{
  {
    type = "item",
    name = "fast-near-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/fast-near-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "d[fast-inserter-1]",
    place_result = "fast-near-inserter",
    stack_size = 50
  },

  {
    type = "item",
    name = "fast-far-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/fast-far-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "d[fast-inserter-3]",
    place_result = "fast-far-inserter",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "fast-near-inserter",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit", 2},
      {"iron-plate", 2},
      {"basic-inserter", 1}
    },
    result = "fast-near-inserter"
  },

  {
    type = "recipe",
    name = "fast-far-inserter",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit", 2},
      {"iron-plate", 2},
      {"long-handed-inserter", 1}
    },
    result = "fast-far-inserter"
  },


  {
    type = "inserter",
    name = "fast-near-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/fast-near-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "fast-near-inserter"
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
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.07,
    rotation_speed = 0.035,
    pickup_position = {0, -1},
    insert_position = {0, 0.8},
    fast_replaceable_group = "inserter",
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
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-base.png",
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
    type = "inserter",
    name = "fast-far-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/fast-far-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "fast-far-inserter"
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
    insert_position = {0, 1.8},
    fast_replaceable_group = "inserter",
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
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-base.png",
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
    name = "near-inserters-1",
    icon = "__boblogistics__/graphics/icons/inserter/fast-long-inserter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fast-near-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "fast-far-inserter"
      },
    },
    prerequisites =
    {
      "long-inserters-1",
    },
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15
    },
    order = "a-f-b-1",
  },
}
)



data.raw.item["smart-inserter"].subgroup = "bob-smart-inserter"
data.raw.item["smart-long-inserter"].subgroup = "bob-smart-inserter"

--data.raw.item["smart-inserter"].icon = "__boblogistics__/graphics/icons/inserter/smart-short-short-inserter.png"
--data.raw.item["smart-inserter"].hand_base_picture = { filename = "__boblogistics__/graphics/entity/inserter/fast-inserter-hand-base.png", priority = "extra-high", width = 8, height = 34 }
--data.raw.item["smart-inserter"].hand_closed_picture = { filename = "__boblogistics__/graphics/entity/inserter/fast-inserter-hand-closed.png", priority = "extra-high", width = 18, height = 41 }
--data.raw.item["smart-inserter"].hand_open_picture = { filename = "__boblogistics__/graphics/entity/inserter/fast-inserter-hand-open.png", priority = "extra-high", width = 18, height = 41 }

data:extend(
{
  {
    type = "item",
    name = "smart-near-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-near-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-smart-inserter",
    order = "f[inserter]-e[smart-inserter-1-1]",
    place_result = "smart-near-inserter",
    stack_size = 50
  },

  {
    type = "item",
    name = "smart-far-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-far-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-smart-inserter",
    order = "f[inserter]-e[smart-inserter-2-3]",
    place_result = "smart-far-inserter",
    stack_size = 50
  },


  {
    type = "recipe",
    name = "smart-near-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-near-inserter", 1},
      {"electronic-circuit", 4}
    },
    result = "smart-near-inserter"
  },

  {
    type = "recipe",
    name = "smart-far-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-far-inserter", 1},
      {"electronic-circuit", 4}
    },
    result = "smart-far-inserter"
  },


  {
    type = "inserter",
    name = "smart-near-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-near-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "smart-near-inserter"},
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
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.07,
    rotation_speed = 0.035,
    pickup_position = {0, -1},
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
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-base.png",
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
    name = "smart-far-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/smart-far-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "smart-far-inserter"},
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
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-base.png",
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
    type = "technology",
    name = "near-inserters-2",
    icon = "__boblogistics__/graphics/icons/inserter/smart-long-inserter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "smart-near-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "smart-far-inserter"
      },
    },
    prerequisites =
    {
      "near-inserters-1",
      "long-inserters-2",
    },
    unit =
    {
      count = 35,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 25
    },
    order = "a-f-b-2",
  },
}
)



data:extend(
{
  {
    type = "item",
    name = "purple-near-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-near-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-purple-inserter",
    order = "f[inserter]-f[purple-inserter-1-1]",
    place_result = "purple-near-inserter",
    stack_size = 50
  },

  {
    type = "item",
    name = "purple-far-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-far-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-purple-inserter",
    order = "f[inserter]-f[purple-inserter-2-3]",
    place_result = "purple-far-inserter",
    stack_size = 50
  },


  {
    type = "recipe",
    name = "purple-near-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-near-inserter", 1},
      {"advanced-circuit", 2},
      {"iron-gear-wheel", 2},
    },
    result = "purple-near-inserter"
  },

  {
    type = "recipe",
    name = "purple-far-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-far-inserter", 1},
      {"advanced-circuit", 2},
      {"iron-gear-wheel", 2},
    },
    result = "purple-far-inserter"
  },


  {
    type = "inserter",
    name = "purple-near-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-near-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "purple-near-inserter"},
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
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.25,
    rotation_speed = 0.1,
    pickup_position = {0, -1},
    insert_position = {0, 0.8},
--    filter_count = 5,
--    programmable = true,
--    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "inserter",
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-base.png",
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
    name = "purple-far-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/purple-far-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "purple-far-inserter"},
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
    insert_position = {0, 1.8},
--    filter_count = 5,
--    programmable = true,
--    uses_arm_movement = "basic-inserter",
    fast_replaceable_group = "inserter",
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-base.png",
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
    type = "technology",
    name = "near-inserters-3",
    icon = "__boblogistics__/graphics/icons/inserter/purple-long-inserter.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "purple-near-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "purple-far-inserter"
      },
    },
    prerequisites =
    {
      "near-inserters-1",
      "long-inserters-3",
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
    order = "a-f-b-3",
  },
}
)


data.raw.item["purple-inserter"].subgroup = "bob-purple-inserter"
data.raw.item["purple-long-inserter"].subgroup = "bob-purple-inserter"


