--to do:   graphics,armor,tech,recipes

require "util"
--a dummy armor
--a dummy character to wear all that
--a chest to function as loader
--a dummy entity to stand for chest when not being loaded.
--a recipe to make dummy entity

--a dummy entity to stand for chest when not being loaded.
local closed_chest={
    type = "simple-entity",
    name = "guntrain-closed-chest",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "guntrain-closed-chest"},
    icon = "__GunTrains__/pic/loader_chest.png",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    render_layer = "object",
    max_health =70,
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    pictures =
    {{filename = "__GunTrains__/pic/loader_chest_pic.png",
        width = 48,
        height = 34,
        shift = {0.2, 0}
    }}
  }

--a chest to function as loader
local open_chest={
    type = "container",
    name = "guntrain-open-chest",
    icon = "__GunTrains__/pic/loader_chest.png",
    flags = {},
    minable = {mining_time = 1, result = "guntrain-closed-chest"},
    max_health = 70,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 1,
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    picture =
    {
      filename = "__GunTrains__/pic/open_loader_chest_pic.png",
      priority = "very-low",
      width = 48,
      height = 34,
      shift = {0.2, 0.1}
    }
  }

--empty sprite for all unneded animations
local no_anim={layers={{filename = "__GunTrains__/pic/empty_icon.png",
            priority = "very-low", width = 1, height = 1,direction_count = 18,
            frame_count = 1,
            }}}

--a dummy character to wear all that
local dummy_char={
    type = "player",
    name = "guntrain-dummy-char",
    icon = "__base__/graphics/icons/player.png",
    flags = {"pushable", "placeable-off-grid", "breaths-air", "not-repairable", "not-on-map"},
    max_health = 100,
    healing_per_tick = 0.01,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0.0, 0.0}},
    crafting_categories = {}, mining_categories = {},
    inventory_size = 0, build_distance = 0,
    drop_item_distance = 0,reach_distance = 0,reach_resource_distance = 0,
    ticks_to_keep_gun = 0,ticks_to_keep_aiming_direction = 0,
    damage_hit_tint = {r = 1, g = 0, b = 0, a = 0},
    running_speed = 0.15,distance_per_frame = 0.13,maximum_corner_sliding_distance = 0.7,
    subgroup = "creatures",order="a",
    animations =
        {{idle=no_anim, idle_with_gun=no_anim, mining_with_hands=no_anim,
        mining_with_tool =no_anim, running_with_gun =no_anim, running =no_anim,
        },},
    eat ={{filename = "__base__/sound/eat.ogg",volume = 0}},
    heartbeat ={{filename = "__base__/sound/heartbeat.ogg",volume = 0}},
    light ={{minimum_darkness = 0,intensity = 0,size = 0,},},
    mining_speed = 0.01,
    mining_with_hands_particles_animation_positions = {0, 0},
    mining_with_tool_particles_animation_positions = {0},
    running_sound_animation_positions = {0,0}
  }

--a dummy armor
local dummy_armor=  {
    type = "armor",name = "guntrain-dummy-armor",
    icon = "__base__/graphics/icons/power-armor.png",
    flags = {"goes-to-main-inventory"},
    resistances ={},durability = 15,
    subgroup = "armor",order = "d[power-armor]",
    stack_size = 1,
    equipment_grid = {width = 1, height = 1}
  }

--an item for loader entities
local closed_chest_item=  {
    type = "item",
    name = "guntrain-closed-chest",
    icon = "__GunTrains__/pic/loader_chest.png",
    flags = {"goes-to-quickbar"},subgroup = "capsule",
    order = "b[guntrain]",place_result = "guntrain-closed-chest",
    stack_size = 5
  }

--a recipe for loader
local recipe_loader={
    type = "recipe",name = "guntrain-closed-chest",enabled = false,
    ingredients ={{"iron-gear-wheel", 2},{"steel-chest",1},},category='crafting',
    result ="guntrain-closed-chest"
    }
    
--a tech
local tech={
    type = "technology",name = "guntrain-base-tech",
    icon = "__GunTrains__/pic/loader_chest.png",
    effects ={
        {type = "unlock-recipe",recipe = "guntrain-closed-chest"},
    },
    prerequisites = {"military-3","railway"},
    unit ={
        count = 60,
        ingredients ={
            {"science-pack-1", 2},{"science-pack-2", 2},{"science-pack-3", 1}
        },
        time = 30
    },
    order = "e-a-c",
  }
  
data:extend(
{
    closed_chest, open_chest, closed_chest_item, recipe_loader,
    dummy_char,dummy_armor,tech
})
