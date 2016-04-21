 data:extend({
  {
    type = "item",
    name = "OilSteamBoiler",
    icon = "__OilSteamBoiler__/graphics/icons/OilSteamBoiler.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "f[OilSteamBoiler]",
    place_result = "OilSteamBoiler",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "OilSteamBoiler",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"copper-plate", 15},
      {"steel-plate", 5},
      {"pipe", 10},
      {"concrete", 10},

    },
    result = "OilSteamBoiler"
  },
  
  icon = "__OilSteamBoiler__/graphics/icons/OilSteamBoiler.png",
  {
    type = "recipe",
    name = "burn-crude-oil",
    energy_required = 6,
    enabled = "false",
    order = "b[fluid-chemistry]-f",
    category = "OilBurn",
    ingredients =
    {


        {type="fluid", name="water", amount=360},
        {type="fluid", name="crude-oil", amount=1.2},
    },
      results = 
    {
        {type="fluid", name="water", amount=360}
                
      },
      main_product= "",
      icon = "__OilSteamBoiler__/graphics/icons/burn-crude-oil.png",
    subgroup = "fluid-recipes"
      },
      {
    type = "recipe",
    name = "burn-heavy-oil",
    energy_required = 6,
    enabled = "false",
    order = "b[fluid-chemistry]-g", 
    category = "OilBurn",
    ingredients =
    {


      {type="fluid", name="water", amount=360},
      {type="fluid", name="heavy-oil", amount=1.4},
    },
      results = 
    {
        {type="fluid", name="water", amount=360}
            
      },
      main_product= "",
      icon = "__OilSteamBoiler__/graphics/icons/burn-heavy-oil.png",
    subgroup = "fluid-recipes"
      },
      {
    type = "recipe",
    name = "burn-light-oil",
    energy_required = 6,
    enabled = "false",
    order = "b[fluid-chemistry]-h", 
    category = "OilBurn",
    ingredients =
    {


      {type="fluid", name="water", amount=360},
      {type="fluid", name="light-oil", amount=0.6},
    },
      results = 
    {
        {type="fluid", name="water", amount=360}
                
      },
      main_product= "",
      icon = "__OilSteamBoiler__/graphics/icons/burn-light-oil.png",
    subgroup = "fluid-recipes"
      },
      {
    type = "assembling-machine",
    name = "OilSteamBoiler",
    icon = "__OilSteamBoiler__/graphics/icons/OilSteamBoiler.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "OilSteamBoiler"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
     animation =
    {
      north =
      {
        priority = "extra-high",
        width = 128,
        height = 160,
        line_length = 1,
        shift = {0.3, 0.3},
        filename = "__OilSteamBoiler__/graphics/entity/OilSteamBoiler/oil-boiler-s.png",
        frame_count = 1,
        animation_speed = 0.2
      },
      south =
      {
        priority = "extra-high",
        width = 128,
        height = 160,
        line_length = 1,
        shift = {0.3, 0.3},
        filename = "__OilSteamBoiler__/graphics/entity/OilSteamBoiler/oil-boiler-n.png",
        frame_count = 1,
        animation_speed = 0.2
      },
      east =
      {
        priority = "extra-high",
        width = 128,
        height = 160,
        line_length = 1,
        shift = {0, 0.4},
        filename = "__OilSteamBoiler__/graphics/entity/OilSteamBoiler/oil-boiler-w.png",
        frame_count = 1,
        animation_speed = 0.2
      },
 

      west =
      {
        priority = "extra-high",
        width = 128,
        height = 160,
        line_length = 1,
        shift = {0, 0.5},
        filename = "__OilSteamBoiler__/graphics/entity/OilSteamBoiler/oil-boiler-e.png",
        frame_count = 1,
        animation_speed = 0.2
      }
    },
    
   
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/boiler.ogg",
          volume = 1.2
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_speed = 5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 4 / 4
    },
    energy_usage = "30kW",
    ingredient_count = 3,
    crafting_categories = {"OilBurn"},
    fluid_boxes =
    {
    
    
    
     {
        production_type = "input",
      --  pipe_covers = pipecoverspictures(),
      base_area = 30,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
     },
    {
       production_type = "input",
      --  pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },    
         {
        production_type = "output",
     --   pipe_covers = pipecoverspictures(),
       base_level = 1,
       pipe_connections = {{ position = {0, 2} }}
     },      
     
     
     
    
     
    }
  },
  {
    type = "technology",
    name = "OilBurning",
    icon = "__OilSteamBoiler__/graphics/technology/OilBurning.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "OilSteamBoiler"
      },
      {
        type = "unlock-recipe",
        recipe = "burn-crude-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "burn-light-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "burn-heavy-oil"
      },
     
    },
    prerequisites = {"oil-processing"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "d-a-c",
  },
  
{type = "recipe-category", name = "OilBurn"},
})
  