data.raw.turret["big-worm-turret"].attack_parameters.ammo_type.action.action_delivery.projectile = "area-acid-projectile-purple"
table.insert(data.raw.turret["big-worm-turret"].resistances,{type = "acid", decrease = 5, percent = 40})


bob_biter_spawner_tint = {r=0.3, g=1.0, b=0.6, a=1.0}
bob_spitter_spawner_tint = {r=1.0, g=0.6, b=0.3, a=1.0}


bob_bigger_biter_scale = 1.25
bob_bigger_biter_tint1 = {r=0.7, g=0.3, b=0.9, a=0.6}
bob_bigger_biter_tint2 = {r=1, g=0.3, b=1.0, a=0.9}

bob_biggest_biter_scale = 1.5
bob_biggest_biter_tint1 = {r=0.3, g=0.9, b=0.9, a=0.6}
bob_biggest_biter_tint2 = {r=0.3, g=1.0, b=0.6, a=0.95}

bob_fire_biter_scale = 1.5
bob_fire_biter_tint1 = {r=0.9, g=0.3, b=0.3, a=0.6}
bob_fire_biter_tint2 = {r=1.0, g=0.3, b=0.8, a=0.95}


bob_bigger_spitter_scale = 1.25
bob_bigger_spitter_tint = {r=0.9, g=0.9, b=0.3, a=0.6}

bob_biggest_spitter_scale = 1.5
bob_biggest_spitter_tint = {r=0.9, g=0.3, b=0.3, a=0.6}

bob_poison_spitter_scale = 1.5
bob_poison_spitter_tint = {r=0.3, g=0.9, b=0.5, a=0.6}


bob_big_explosive_worm_tint = {r=0.9, g=0.9, b=0.3, a=1.0}
bob_big_fire_worm_tint = {r=0.9, g=0.3, b=0.3, a=1.0}
bob_big_poison_worm_tint = {r=0.3, g=0.9, b=0.3, a=1.0}


bob_titan_scale = 1.75
bob_titan_tint = {r = 0.9, g = 0.6, b = 0.3, a = 0.6}
bob_titan_tint2 = {r = 1, g = 0.6, b = 0.2, a = 1.0}


behemoth_scale = 2
bob_behemoth_tint = {r = 0.3, g = 0.6, b = 0.9, a = 0.6}
bob_behemoth_tint2 = {r = 0.2, g = 0.6, b = 1.0, a = 1.0}


data:extend(
{
  {
    type = "unit-spawner",
    name = "bob-biter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    max_health = 3500,
    order="b-b-i",
    subgroup="enemies",
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0
        }
      },
      apparent_volume = 2
    },
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0
      }
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
        percent = 20,
      },
      {
        type = "explosion",
        percent = 20,
      },
	 {
        type = "laser",
        percent = 80,
      },
      {
        type = "acid",
        percent = 20,
      },
      {
        type = "poison",
        percent = 20,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
    pollution_absorbtion_absolute = 20,
    pollution_absorbtion_proportional = 0.01,
    pollution_to_enhance_spawning = 30000,
    corpse = "bob-biter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    loot =
    {
      {
        count_min = 5,
        count_max = 15,
        item = "alien-artifact",
        probability = 1
      },
    },
    max_count_of_owned_units = 10,
    max_friends_around_to_spawn = 5,
    animations =
    {
      spawner_idle_animation(0, bob_biter_spawner_tint),
      spawner_idle_animation(1, bob_biter_spawner_tint),
      spawner_idle_animation(2, bob_biter_spawner_tint),
      spawner_idle_animation(3, bob_biter_spawner_tint)
    },
    result_units =
    {
      {"small-biter", {{0.0, 0.3}, {0.6, 0.3}, {0.7, 0.0}}},
      {"medium-biter", {{0.3, 0.0}, {0.6, 0.3}, {0.8, 0.0}}},
      {"big-biter", {{0.6, 0.0}, {0.8, 0.4}, {0.9, 0.0}}},
      {"bob-bigger-biter", {{0.7, 0.0}, {0.8, 0.3}}},
      {"bob-biggest-biter", {{0.8, 0.0}, {0.9, 0.2}}},
      {"bob-fire-biter", {{0.8, 0.0}, {0.9, 0.1}}},
      {"bob-titan-biter", {{0.9, 0.0}, {1.0, 0.3}}},
      {"bob-behemoth-biter", {{0.99, 0.0}, {1.0, 0.3}}},
    },
    -- With zero evolution the spawn rate is 5 seconds, with max evolution it is 2 seconds
    spawning_cooldown = {300, 120},
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace =
    {
      sharpness = 0.4,
      control = "enemy-base",
      order = "b[enemy]-c[big-biter-spawner]",
      richness_multiplier = 1,
      richness_base = 0,
      force = "enemy",
      peaks =
      {
        {
          influence = 0,
          richness_influence = 100,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
        {
          influence = -10.0,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.42,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
        },
        -- increase the size when moving further away
        {
          influence = 0.5,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
      }
    }
  },

  {
    type = "corpse",
    name = "bob-biter-spawner-corpse",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__base__/graphics/icons/biter-spawner-corpse.png",
    collision_box = {{-2, -2}, {2, 2}},
    selection_box = {{-2, -2}, {2, 2}},
    selectable_in_game = false,
    dying_speed = 0.04,
    subgroup="corpses",
    order = "c[corpse]-d[big-biter-spawner]",
    final_render_layer = "corpse",
    animation =
    {
      spawner_die_animation(0, bob_biter_spawner_tint),
      spawner_die_animation(1, bob_biter_spawner_tint),
      spawner_die_animation(2, bob_biter_spawner_tint),
      spawner_die_animation(3, bob_biter_spawner_tint)
    }
  },


  {
    type = "unit-spawner",
    name = "bob-spitter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    max_health = 3500,
    order="b-b-j",
    subgroup="enemies",
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0
        }
      },
      apparent_volume = 2
    },
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0
      }
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
        percent = 20,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 25,
      },
	 {
        type = "laser",
        percent = 80,
      },
      {
        type = "fire",
        percent = 20,
      },
      {
        type = "impact",
        percent = 20,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
    pollution_absorbtion_absolute = 20,
    pollution_absorbtion_proportional = 0.01,
    pollution_to_enhance_spawning = 30000,
    corpse = "bob-spitter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    loot =
    {
      {
        count_min = 5,
        count_max = 15,
        item = "alien-artifact",
        probability = 1
      },
    },
    max_count_of_owned_units = 10,
    max_friends_around_to_spawn = 5,
    animations =
    {
      spawner_idle_animation(0, bob_spitter_spawner_tint),
      spawner_idle_animation(1, bob_spitter_spawner_tint),
      spawner_idle_animation(2, bob_spitter_spawner_tint),
      spawner_idle_animation(3, bob_spitter_spawner_tint)
    },
    result_units =
    {
      {"small-biter", {{0.0, 0.3}, {0.25, 0.3}, {0.26, 0.0}}},
      {"small-spitter", {{0.25, 0.3}, {0.6, 0.3}, {0.7, 0.0}}},
      {"medium-spitter", {{0.5, 0.0}, {0.6, 0.3}, {0.8, 0.0}}},
      {"big-spitter", {{0.6, 0.0}, {0.8, 0.4}, {0.9, 0.0}}},
      {"bob-bigger-spitter", {{0.7, 0.0}, {0.8, 0.3}}},
      {"bob-biggest-spitter", {{0.8, 0.0}, {0.9, 0.2}}},
      {"bob-poison-spitter", {{0.8, 0.0}, {0.9, 0.1}}},
      {"bob-titan-spitter", {{0.9, 0.0}, {1.0, 0.3}}},
      {"bob-behemoth-spitter", {{0.99, 0.0}, {1.0, 0.3}}},
    },
    -- With zero evolution the spawn rate is 5 seconds, with max evolution it is 2 seconds
    spawning_cooldown = {300, 120},
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace =
    {
      sharpness = 0.4,
      control = "enemy-base",
      order = "b[enemy]-a[big-spitter-spawner]",
      richness_multiplier = 1,
      richness_base = 0,
      force = "enemy",
      peaks =
      {
        {
          influence = 0,
          richness_influence = 100,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
        {
          influence = -10.0,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.42,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
        },
        -- increase the size when moving further away
        {
          influence = 0.55,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
      }
    }
  },

  {
    type = "corpse",
    name = "bob-spitter-spawner-corpse",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__base__/graphics/icons/biter-spawner-corpse.png",
    collision_box = {{-2, -2}, {2, 2}},
    selection_box = {{-2, -2}, {2, 2}},
    selectable_in_game = false,
    dying_speed = 0.04,
    subgroup="corpses",
    order = "c[corpse]-c[big-spitter-spawner]",
    final_render_layer = "corpse",
    animation =
    {
      spawner_die_animation(0, bob_spitter_spawner_tint),
      spawner_die_animation(1, bob_spitter_spawner_tint),
      spawner_die_animation(2, bob_spitter_spawner_tint),
      spawner_die_animation(3, bob_spitter_spawner_tint)
    }
  },
}
)


data:extend(
{
  {
    type = "unit",
    name = "bob-bigger-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 750,
    order="b-b-d",
    subgroup="enemies",
    resistances = 
    {
      {
        type = "physical",
        decrease = 6,
        percent = 15,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 15,
      },
	 {
        type = "laser",
        percent = 10,
      },
      {
        type = "impact",
        decrease = 5,
      },
      {
        type = "fire",
        percent = 5,
      },
      {
        type = "poison",
        percent = 15,
      },
      {
        type = "acid",
        decrease = 5,
        percent = 25,
      },
    },
    healing_per_tick = 0.04,
    collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.9, -2}, {0.9, 0}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "melee",
--      ammo_type = make_unit_melee_ammo_type(45),
      ammo_type = 
      {
        category = "melee",
        target_type = "entity",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = { amount = 30 , type = "physical"}
              },
              {
                type = "damage",
                damage = { amount = 15 , type = "acid"}
              }
            }
          }
        }
      },
      range = 1,
      cooldown = 35,
      sound =  make_biter_roars(0.7),
      animation = biterattackanimation(bob_bigger_biter_scale, bob_bigger_biter_tint1, bob_bigger_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.16,
    distance_per_frame = 0.15,
    -- in pu
    pollution_to_join_attack = 1250,
    corpse = "bob-bigger-biter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(bob_bigger_biter_scale, bob_bigger_biter_tint1, bob_bigger_biter_tint2)
  },

  {
    type = "unit",
    name = "bob-biggest-biter",
    order="b-b-e",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 1500,
    subgroup="enemies",
    resistances = 
    {
      {
        type = "physical",
        decrease = 6,
        percent = 20,
      },
      {
        type = "explosion",
        percent = 20,
      },
      {
        type = "fire",
        percent = 10,
      },
	 {
        type = "laser",
        percent = 20,
      },
      {
        type = "impact",
        decrease = 10,
        percent = 20,
      },
      {
        type = "poison",
        decrease = 5,
        percent = 40,
      },
    },
    healing_per_tick = 0.06,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.9, -1.5}, {1.2, 0}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters =
    {
      type = "projectile",
      range = 1,
      cooldown = 35,
      ammo_category = "melee",
--      ammo_type = make_unit_melee_ammo_type(60),
      ammo_type = 
      {
        category = "melee",
        target_type = "entity",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = { amount = 40 , type = "physical"}
              },
              {
                type = "damage",
                damage = { amount = 20 , type = "poison"}
              }
            }
          }
        }
      },
      sound =  make_biter_roars(0.8),
      animation = biterattackanimation(bob_biggest_biter_scale, bob_biggest_biter_tint1, bob_biggest_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.12,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 1500,
    corpse = "bob-biggest-biter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.5),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(bob_biggest_biter_scale, bob_biggest_biter_tint1, bob_biggest_biter_tint2)
  },

  {
    type = "unit",
    name = "bob-fire-biter",
    order="b-b-e",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 1500,
    subgroup="enemies",
    resistances = 
    {
      {
        type = "physical",
        decrease = 6,
        percent = 20,
      },
      {
        type = "explosion",
        percent = 20,
      },
      {
        type = "fire",
        decrease = 5,
        percent = 40,
      },
	 {
        type = "laser",
        percent = 20,
      },
      {
        type = "impact",
        decrease = 10,
        percent = 20,
      },
      {
        type = "poison",
        percent = 25,
      },
    },
    healing_per_tick = 0.06,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.9, -1.5}, {1.2, 0}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters =
    {
      type = "projectile",
      range = 1,
      cooldown = 35,
      ammo_category = "melee",
--      ammo_type = make_unit_melee_ammo_type(60),
      ammo_type = 
      {
        category = "melee",
        target_type = "entity",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = { amount = 40 , type = "physical"}
              },
              {
                type = "damage",
                damage = { amount = 20 , type = "fire"}
              }
            }
          }
        }
      },
      sound =  make_biter_roars(0.8),
      animation = biterattackanimation(bob_fire_biter_scale, bob_fire_biter_tint1, bob_fire_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.12,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 1500,
    corpse = "bob-fire-biter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.5),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(bob_fire_biter_scale, bob_fire_biter_tint1, bob_fire_biter_tint2)
  },


  {
    type = "corpse",
    name = "bob-bigger-biter-corpse",
    icon = "__base__/graphics/icons/medium-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[bigger]",
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(bob_bigger_biter_scale, bob_bigger_biter_tint1, bob_bigger_biter_tint2)
  },

  {
    type = "corpse",
    name = "bob-biggest-biter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-e[biggest]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(bob_biggest_biter_scale, bob_biggest_biter_tint1, bob_biggest_biter_tint2)
  },

  {
    type = "corpse",
    name = "bob-fire-biter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-e[biggest]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(bob_fire_biter_scale, bob_fire_biter_tint1, bob_fire_biter_tint2)
  },


  {
    type = "unit",
    name = "bob-titan-biter",
    order="b-b-e",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 3500,
    subgroup="enemies",
    resistances = 
    {
      {
        type = "physical",
        decrease = 10,
        percent = 35,
      },
      {
        type = "explosion",
        percent = 25,
      },
      {
        type = "fire",
        percent = 25,
      },
	 {
        type = "laser",
        percent = 25,
      },
      {
        type = "impact",
        percent = 50,
      },
      {
        type = "bob-pierce",
        percent = 50,
      },
      {
        type = "poison",
        percent = 50,
      },
      {
        type = "acid",
        percent = 25,
      },
    },
    spawning_time_modifier = 5,
    healing_per_tick = 0.08,
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-0.85, -1.7}, {0.85, 0.5}},
    sticker_box = {{-1, -1.75}, {1, 0}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters =
    {
      type = "projectile",
      range = 1,
      cooldown = 35,
      ammo_category = "melee",
--      ammo_type = make_unit_melee_ammo_type(80),
      ammo_type = 
      {
        category = "melee",
        target_type = "entity",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = { amount = 20 , type = "physical"}
              },
              {
                type = "damage",
                damage = { amount = 20 , type = "bob-pierce"}
              },
              {
                type = "damage",
                damage = { amount = 20 , type = "poison"}
              },
              {
                type = "damage",
                damage = { amount = 20 , type = "impact"}
              }
            }
          }
        }
      },
      sound =  make_biter_roars(0.9),
      animation = biterattackanimation(bob_titan_scale, bob_titan_tint, bob_titan_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.15,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 2500,
    corpse = "bob-titan-biter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.5),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(bob_titan_scale, bob_titan_tint, bob_titan_tint2)
  },

  {
    type = "corpse",
    name = "bob-titan-biter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-e[titan]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(bob_titan_scale, bob_titan_tint, bob_titan_tint2)
  },


  {
    type = "unit",
    name = "bob-behemoth-biter",
    order="b-b-e",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 5000,
    subgroup="enemies",
    resistances = 
    {
      {
        type = "physical",
        decrease = 10,
        percent = 50,
      },
      {
        type = "explosion",
        percent = 35,
      },
      {
        type = "fire",
        percent = 75,
      },
	 {
        type = "laser",
        percent = 35,
      },
      {
        type = "impact",
        percent = 75,
      },
      {
        type = "bob-pierce",
        percent = 75,
      },
      {
        type = "poison",
        percent = 75,
      },
      {
        type = "acid",
        percent = 35,
      },
    },
    spawning_time_modifier = 8,
    healing_per_tick = 0.1,
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -2}, {1, 0.75}},
    sticker_box = {{-1, -1.75}, {1, 0}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters =
    {
      type = "projectile",
      range = 1,
      cooldown = 35,
      ammo_category = "melee",
--      ammo_type = make_unit_melee_ammo_type(100),
      ammo_type = 
      {
        category = "melee",
        target_type = "entity",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "damage",
                damage = { amount = 20 , type = "physical"}
              },
              {
                type = "damage",
                damage = { amount = 20 , type = "bob-pierce"}
              },
              {
                type = "damage",
                damage = { amount = 20 , type = "poison"}
              },
              {
                type = "damage",
                damage = { amount = 20 , type = "fire"}
              },
              {
                type = "damage",
                damage = { amount = 20 , type = "impact"}
              }
            }
          }
        }
      },
      sound =  make_biter_roars(0.9),
      animation = biterattackanimation(behemoth_scale, bob_behemoth_tint, bob_behemoth_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.2,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 10000,
    corpse = "bob-behemoth-biter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.5),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(behemoth_scale, bob_behemoth_tint, bob_behemoth_tint2)
  },

  {
    type = "corpse",
    name = "bob-behemoth-biter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-e[titan]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(behemoth_scale, bob_behemoth_tint, bob_behemoth_tint2)
  },
}
)



data:extend(
{
  {
    type = "unit",
    name = "bob-bigger-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 400,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        percent = 5,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 40
      },
	 {
        type = "laser",
        percent = 5,
      },
      {
        type = "impact",
        decrease = 5,
      },
      {
        type = "fire",
        percent = 5,
      },
      {
        type = "poison",
        percent = 25,
      },
      {
        type = "acid",
        percent = 15,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.9, -1.1}, {0.7, 1.1}},
    sticker_box = {{-0.4, -0.6}, {0.4, 0.2}},
    distraction_cooldown = 300,
    loot =
    {
    },
--    attack_parameters = spitterattackparameters({range=15, cooldown=100, damage_modifier=4, scale=bob_bigger_spitter_scale, tint=bob_bigger_spitter_tint}),
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 4,
      warmup = 30,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "explosive-spit-projectile",
            starting_speed = 0.5
          }
        }
      },
      sound = make_spitter_roars(1),
      animation = spitterattackanimation(bob_bigger_spitter_scale, bob_bigger_spitter_tint),
    },
    vision_distance = 30,
    movement_speed = 0.12,
    distance_per_frame = 0.05,
    -- in pu
    pollution_to_join_attack = 1250,
    corpse = "bob-bigger-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(1.0),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_bigger_spitter_scale, bob_bigger_spitter_tint)
  },

  {
    type = "unit",
    name = "bob-biggest-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 800,
    order="b-b-h",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
        percent = 10,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 35,
      },
      {
        type = "fire",
        decrease = 5,
        percent = 50,
      },
	 {
        type = "laser",
        percent = 10,
      },
      {
        type = "impact",
        decrease = 5,
        percent = 10,
      },
      {
        type = "poison",
        percent = 35,
      },
      {
        type = "acid",
        percent = 25,
      },
    },
    healing_per_tick = 0.03,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.1, -1.4}, {1.1, 1.4}},
    sticker_box = {{-0.5, -0.7}, {0.5, 0.3}},
    distraction_cooldown = 300,
    loot =
    {
    },
--    attack_parameters = spitterattackparameters({range=15, cooldown=100, damage_modifier=5, scale=bob_biggest_spitter_scale, tint=bob_biggest_spitter_tint}),
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 5,
      warmup = 30,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "fire-spit-projectile",
            starting_speed = 0.5
          }
        }
      },
      sound = make_spitter_roars(1.1),
      animation = spitterattackanimation(bob_biggest_spitter_scale, bob_biggest_spitter_tint),
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.05,
    pollution_to_join_attack = 1500,
    corpse = "bob-biggest-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_biggest_spitter_scale, bob_biggest_spitter_tint)
  },


  {
    type = "unit",
    name = "bob-poison-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 800,
    order="b-b-h",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
        percent = 10,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 35,
      },
      {
        type = "fire",
        percent = 35,
      },
	 {
        type = "laser",
        percent = 10,
      },
      {
        type = "impact",
        decrease = 5,
        percent = 10,
      },
      {
        type = "poison",
        decrease = 5,
        percent = 50,
      },
      {
        type = "acid",
        percent = 25,
      },
    },
    healing_per_tick = 0.03,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.1, -1.4}, {1.1, 1.4}},
    sticker_box = {{-0.5, -0.7}, {0.5, 0.3}},
    distraction_cooldown = 300,
    loot =
    {
    },
--    attack_parameters = spitterattackparameters({range=15, cooldown=100, damage_modifier=5, scale=bob_poison_spitter_scale, tint=bob_poison_spitter_tint}),
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 5,
      warmup = 30,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "poison-spit-projectile",
            starting_speed = 0.5
          }
        }
      },
      sound = make_spitter_roars(1.1),
      animation = spitterattackanimation(bob_poison_spitter_scale, bob_poison_spitter_tint),
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.05,
    pollution_to_join_attack = 1500,
    corpse = "bob-poison-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_poison_spitter_scale, bob_poison_spitter_tint)
  },


  {
    type = "corpse",
    name = "bob-bigger-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-d[bigger]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_bigger_spitter_scale, bob_bigger_spitter_tint),
  },

  {
    type = "corpse",
    name = "bob-biggest-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[biggest]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_biggest_spitter_scale, bob_biggest_spitter_tint),
  },

  {
    type = "corpse",
    name = "bob-poison-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[biggest]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_poison_spitter_scale, bob_poison_spitter_tint),
  },


  {
    type = "unit",
    name = "bob-titan-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 1500,
    order="b-b-h",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 10,
        percent = 35,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 50,
      },
      {
        type = "fire",
        percent = 50,
      },
	 {
        type = "laser",
        percent = 25,
      },
      {
        type = "impact",
        percent = 25,
      },
      {
        type = "bob-pierce",
        percent = 25,
      },
      {
        type = "poison",
        percent = 25,
      },
      {
        type = "acid",
        decrease = 10,
        percent = 50,
      },
    },
    spawning_time_modifier = 5,
    healing_per_tick = 0.05,
    collision_box = {{-0.85, -0.85}, {0.85, 0.85}},
    selection_box = {{-1.3, -1.7}, {1.3, 1.7}},
    sticker_box = {{-0.7, -1}, {0.7, 0.5}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 7,
      warmup = 30,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "titan-spit-projectile",
            starting_speed = 0.5
          }
        }
      },
      sound = make_spitter_roars(1.2),
      animation = spitterattackanimation(bob_titan_scale, bob_titan_tint),
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.05,
    pollution_to_join_attack = 1500,
    corpse = "bob-titan-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_titan_scale, bob_titan_tint)
  },

  {
    type = "corpse",
    name = "bob-titan-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[titan]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_titan_scale, bob_titan_tint),
  },


  {
    type = "unit",
    name = "bob-behemoth-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 2000,
    order="b-b-h",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 10,
        percent = 50,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 75,
      },
      {
        type = "fire",
        percent = 35,
      },
	 {
        type = "laser",
        percent = 35,
      },
      {
        type = "bob-pierce",
        decrease = 10,
        percent = 75,
      },
      {
        type = "impact",
        percent = 35,
      },
      {
        type = "poison",
        decrease = 10,
        percent = 75,
      },
      {
        type = "acid",
        decrease = 10,
        percent = 75,
      },
    },
    spawning_time_modifier = 8,
    healing_per_tick = 0.1,
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1.5, -2}, {1.5, 2}},
    sticker_box = {{-0.6, -1}, {0.6, 0.2}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 10,
      warmup = 30,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "behemoth-spit-projectile",
            starting_speed = 0.5
          }
        }
      },
      sound = make_spitter_roars(1.2),
      animation = spitterattackanimation(behemoth_scale, bob_behemoth_tint),
    },
    vision_distance = 30,
    movement_speed = 0.15,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 10000,
    corpse = "bob-behemoth-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(behemoth_scale, bob_behemoth_tint)
  },

  {
    type = "corpse",
    name = "bob-behemoth-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[titan]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(behemoth_scale, bob_behemoth_tint),
  }
}
)



data:extend(
{
  {
    type = "turret",
    name = "bob-big-explosive-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 500,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 50,
      }
    },
    healing_per_tick = 0.02,
    collision_box = {{-1.4, -1.2}, {1.4, 1.2}},
    selection_box = {{-1.4, -1.2}, {1.4, 1.2}},
    shooting_cursor_size = 4,
    rotation_speed = 1,
    corpse = "bob-big-explosive-worm-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = make_worm_dying_sounds(1.0),
    inventory_size = 2,
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(big_worm_scale, bob_big_explosive_worm_tint),
    prepare_range = 25,
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(big_worm_scale, bob_big_explosive_worm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(big_worm_scale, bob_big_explosive_worm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(big_worm_scale, bob_big_explosive_worm_tint, "forward"),
    starting_attack_sound = make_worm_roars(0.95),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(big_worm_scale, bob_big_explosive_worm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(big_worm_scale, bob_big_explosive_worm_tint, "backward"),
    prepare_range = 30,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 25,
      projectile_creation_distance = 2.1,
      damage_modifier = 6,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "explosive-spit-projectile",
            starting_speed = 0.5
          }
        }
      }
    },
    autoplace =
    {
      sharpness = 0.3,
      control = "enemy-base",
      order = "b[enemy]-a[base]",
      force = "enemy",
      peaks =
      {
        {
          influence = -10.0,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.07,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
        },
        {
          influence = 0.38,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
          tier_from_start_optimal = 10,
          tier_from_start_top_property_limit = 10,
          tier_from_start_max_range = 20,
        },
      }
    }
  },

  {
    type = "turret",
    name = "bob-big-fire-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 500,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 25,
      },
      {
        type = "fire",
        decrease = 5,
        percent = 40,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-1.4, -1.2}, {1.4, 1.2}},
    selection_box = {{-1.4, -1.2}, {1.4, 1.2}},
    shooting_cursor_size = 4,
    rotation_speed = 1,
    corpse = "bob-big-fire-worm-corpse",
    dying_explosion = "blood-explosion-big",
    inventory_size = 2,
    dying_sound = make_worm_dying_sounds(1.0),
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(big_worm_scale, bob_big_fire_worm_tint),
    prepare_range = 25,
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(big_worm_scale, bob_big_fire_worm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(big_worm_scale, bob_big_fire_worm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(big_worm_scale, bob_big_fire_worm_tint, "forward"),
    starting_attack_sound = make_worm_roars(0.95),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(big_worm_scale, bob_big_fire_worm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(big_worm_scale, bob_big_fire_worm_tint, "backward"),
    prepare_range = 30,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 25,
      projectile_creation_distance = 2.1,
      damage_modifier = 6,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "fire-spit-projectile",
            starting_speed = 0.5
          }
        }
      }
    },
    autoplace =
    {
      sharpness = 0.3,
      control = "enemy-base",
      order = "b[enemy]-a[base]",
      force = "enemy",
      peaks =
      {
        {
          influence = -10.0,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.07,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
        },
        {
          influence = 0.38,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
          tier_from_start_optimal = 10,
          tier_from_start_top_property_limit = 10,
          tier_from_start_max_range = 20,
        },
      }
    }
  },

  {
    type = "turret",
    name = "bob-big-poison-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 500,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 25,
      },
      {
        type = "poison",
        decrease = 5,
        percent = 40,
      }
    },
    healing_per_tick = 0.02,
    collision_box = {{-1.4, -1.2}, {1.4, 1.2}},
    selection_box = {{-1.4, -1.2}, {1.4, 1.2}},
    shooting_cursor_size = 4,
    rotation_speed = 1,
    corpse = "bob-big-poison-worm-corpse",
    dying_explosion = "blood-explosion-big",
    inventory_size = 2,
    dying_sound = make_worm_dying_sounds(1.0),
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(big_worm_scale, bob_big_poison_worm_tint),
    prepare_range = 25,
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(big_worm_scale, bob_big_poison_worm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(big_worm_scale, bob_big_poison_worm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(big_worm_scale, bob_big_poison_worm_tint, "forward"),
    starting_attack_sound = make_worm_roars(0.95),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(big_worm_scale, bob_big_poison_worm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(big_worm_scale, bob_big_poison_worm_tint, "backward"),
    prepare_range = 30,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 25,
      projectile_creation_distance = 2.1,
      damage_modifier = 6,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "poison-spit-projectile",
            starting_speed = 0.5
          }
        }
      }
    },
    autoplace =
    {
      sharpness = 0.3,
      control = "enemy-base",
      order = "b[enemy]-a[base]",
      force = "enemy",
      peaks =
      {
        {
          influence = -10.0,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.07,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
        },
        {
          influence = 0.38,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
          tier_from_start_optimal = 10,
          tier_from_start_top_property_limit = 10,
          tier_from_start_max_range = 20,
        },
      }
    }
  },


  {
    type = "corpse",
    name = "bob-big-explosive-worm-corpse",
    icon = "__base__/graphics/icons/big-worm-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-c[worm]-d[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.01,
    final_render_layer = "corpse",
    animation = worm_die_animation(big_worm_scale, bob_big_explosive_worm_tint)
  },

  {
    type = "corpse",
    name = "bob-big-fire-worm-corpse",
    icon = "__base__/graphics/icons/big-worm-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-c[worm]-e[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.01,
    final_render_layer = "corpse",
    animation = worm_die_animation(big_worm_scale, bob_big_fire_worm_tint)
  },

  {
    type = "corpse",
    name = "bob-big-poison-worm-corpse",
    icon = "__base__/graphics/icons/big-worm-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-c[worm]-f[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.01,
    final_render_layer = "corpse",
    animation = worm_die_animation(big_worm_scale, bob_big_poison_worm_tint)
  },
}
)



