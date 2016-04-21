--[[
  {
    type = "logistic-robot",
    name = "logistic-robot",

    idle =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 42
    },
    idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16
    },
    in_motion =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 126
    },
    in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 84
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 23
    },
    shadow_idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 23
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16
    },
  },

  {
    type = "construction-robot",
    name = "construction-robot",

    idle =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      axially_symmetrical = false,
      direction_count = 16
    },
    in_motion =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      axially_symmetrical = false,
      direction_count = 16,
      y = 36
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      axially_symmetrical = false,
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      axially_symmetrical = false,
      direction_count = 16
    },
    working =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
      priority = "high",
      line_length = 2,
      width = 28,
      height = 36,
      frame_count = 2,
      shift = {0, -0.15625},
      axially_symmetrical = false,
      direction_count = 16,
      animation_speed = 0.3,
    },
    shadow_working =
    {
      stripes = util.multiplystripes(2,
      {
        {
          filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
          width_in_frames = 16,
          height_in_frames = 1,
        }
      }),
      priority = "high",
      width = 50,
      height = 24,
      frame_count = 2,
      shift = {1.09375, 0.59375},
      axially_symmetrical = false,
      direction_count = 16
    },
  },
]]--


data:extend(
{
  {
    type = "logistic-robot",
    name = "bob-logistic-robot-2",
    icon = "__boblogistics__/graphics/icons/logistic-robot-2.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-logistic-robot-2"},
    max_health = 150,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 2,
    speed = 0.1,
    transfer_distance = 0.5,
    max_energy = "600kJ",
    energy_per_tick = "8J",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "800J",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    picture =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-2.png",
      priority = "high",
      width = 32,
      height = 32,
    },
    idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-2.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    idle_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-2.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-2.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    in_motion_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-2.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    shadow =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
    },
    shadow_idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_idle_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
  },

  {
    type = "logistic-robot",
    name = "bob-logistic-robot-3",
    icon = "__boblogistics__/graphics/icons/logistic-robot-3.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-logistic-robot-3"},
    max_health = 200,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 4,
    speed = 0.15,
    transfer_distance = 0.5,
    max_energy = "900kJ",
    energy_per_tick = "6J",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "600J",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    picture =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-3.png",
      priority = "high",
      width = 32,
      height = 32,
    },
    idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-3.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    idle_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-3.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-3.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    in_motion_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-3.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    shadow =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
    },
    shadow_idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_idle_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
  },

  {
    type = "logistic-robot",
    name = "bob-logistic-robot-4",
    icon = "__boblogistics__/graphics/icons/logistic-robot-4.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-logistic-robot-4"},
    max_health = 250,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 8,
    speed = 0.2,
    transfer_distance = 0.5,
    max_energy = "1200kJ",
    energy_per_tick = "4J",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "400J",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    picture =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-4.png",
      priority = "high",
      width = 32,
      height = 32,
    },
    idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-4.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    idle_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-4.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-4.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    in_motion_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/logistic-robot-4.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    shadow =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
    },
    shadow_idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_idle_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
  },
}
)


data:extend(
{
  {
    type = "construction-robot",
    name = "bob-construction-robot-2",
    icon = "__boblogistics__/graphics/icons/construction-robot-2.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-construction-robot-2"},
    max_health = 200,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 2,
    speed = 0.12,
    transfer_distance = 0.5,
    max_energy = "600kJ",
    energy_per_tick = "9J",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "900J",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    working_light = {intensity = 0.8, size = 3},
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    repair_pack = "repair-pack",
    picture =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-2.png",
      priority = "high",
      width = 32,
      height = 32,
    },
    idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-2.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-2.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    working =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-2.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    shadow =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
    },
    shadow_idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_working =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3,
    },
    sparks =
    {
      {
        filename = "__base__/graphics/entity/sparks/sparks-01.png",
        width = 39,
        height = 34,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-02.png",
        width = 36,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-03.png",
        width = 42,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.203125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-04.png",
        width = 40,
        height = 35,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.234375},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-05.png",
        width = 39,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.171875},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-06.png",
        width = 44,
        height = 36,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
    },
  },

  {
    type = "construction-robot",
    name = "bob-construction-robot-3",
    icon = "__boblogistics__/graphics/icons/construction-robot-3.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-construction-robot-3"},
    max_health = 300,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 3,
    speed = 0.18,
    transfer_distance = 0.5,
    max_energy = "900kJ",
    energy_per_tick = "8J",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "800J",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    working_light = {intensity = 0.8, size = 3},
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    repair_pack = "repair-pack",
    picture =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-3.png",
      priority = "high",
      width = 32,
      height = 32,
    },
    idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-3.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-3.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    working =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-3.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    shadow =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
    },
    shadow_idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_working =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3,
    },
    sparks =
    {
      {
        filename = "__base__/graphics/entity/sparks/sparks-01.png",
        width = 39,
        height = 34,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-02.png",
        width = 36,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-03.png",
        width = 42,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.203125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-04.png",
        width = 40,
        height = 35,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.234375},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-05.png",
        width = 39,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.171875},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-06.png",
        width = 44,
        height = 36,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
    },
  },

  {
    type = "construction-robot",
    name = "bob-construction-robot-4",
    icon = "__boblogistics__/graphics/icons/construction-robot-4.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-construction-robot-4"},
    max_health = 400,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 4,
    speed = 0.24,
    transfer_distance = 0.5,
    max_energy = "1200kJ",
    energy_per_tick = "7J",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "700J",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    working_light = {intensity = 0.8, size = 3},
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    repair_pack = "repair-pack",
    picture =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-4.png",
      priority = "high",
      width = 32,
      height = 32,
    },
    idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-4.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-4.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    working =
    {
      filename = "__boblogistics__/graphics/entity/robots/construction-robot-4.png",
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    },
    shadow =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
    },
    shadow_idle =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_in_motion =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    shadow_working =
    {
      filename = "__boblogistics__/graphics/entity/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    },
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3,
    },
    sparks =
    {
      {
        filename = "__base__/graphics/entity/sparks/sparks-01.png",
        width = 39,
        height = 34,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-02.png",
        width = 36,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-03.png",
        width = 42,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.203125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-04.png",
        width = 40,
        height = 35,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.234375},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-05.png",
        width = 39,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.171875},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-06.png",
        width = 44,
        height = 36,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
    },
  },
}
)





