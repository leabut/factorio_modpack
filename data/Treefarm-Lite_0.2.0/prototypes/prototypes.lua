data:extend
({

  -- Grouping
  {
    type = "item-group",
    name = "treefarm",
    order = "e",
    inventory_order = "e",
    icon = "__Treefarm-Lite__/graphics/icons/treefarm.png"
  },

    {
      type = "item-subgroup",
      name = "tf-seeds",
      group = "treefarm",
      order = "a",
    },
    {
      type = "item-subgroup",
      name = "tf-buildings",
      group = "treefarm",
      order = "b",
    },
    {
      type = "item-subgroup",
      name = "tf-raw-materials",
      group = "treefarm",
      order = "c",
    },
    {
      type = "item-subgroup",
      name = "tf-intermediate",
      group = "treefarm",
      order = "d",
    },
    {
      type = "item-subgroup",
      name = "tf-liquids",
      group = "treefarm",
      order = "e",
    },
    {
      type = "item-subgroup",
      name = "tf-tools",
      group = "treefarm",
      order = "f",
    },
    {
      type = "item-subgroup",
      name = "tf-war",
      group = "treefarm",
      order = "g",
    },






  -- Field MK1
  {
    type = "item",
    name = "tf-field",
    icon = "__Treefarm-Lite__/graphics/icons/field.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tf-buildings",
    order = "a[field]",
    place_result = "tf-field",
    stack_size = 10
  },

  {
    type = "recipe",
    name = "tf-field",
    ingredients = {{"stone",20},{"wooden-chest",1},{"burner-inserter",1}},
    result = "tf-field",
    result_count = 1,
    enabled = "true"
  },

  {
    type = "recipe-category",
    name = "treefarm-mod-dummy"
  },

  {
    type = "furnace",
    name = "tf-field",
    max_health = 100,
    icon = "__Treefarm-Lite__/graphics/icons/field.png",
    flags = {"placeable-neutral", "player-creation"},
    crafting_categories = {"treefarm-mod-dummy"},
    minable = {mining_time = 1,result = "tf-field"},
    collision_box = {{-0.5,-0.5},{0.5,0.5}},
    selection_box = {{0.75,-0.50},{9.0,7.50}},
    result_inventory_size = 1,
    energy_usage = "180kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1
    },
    animation =
    {
      filename = "__Treefarm-Lite__/graphics/entities/field/field.png",
      priority = "extra-high",
      width = 512,
      height = 512,
      frame_count = 1,
      shift = {1.20, -0.30}
    },
    working_visualisations =
    {
      filename = "__Treefarm-Lite__/graphics/icons/empty.png",
      priority = "extra-high",
      width = 32,
      height = 32,
      frame_count = 1,
      shift = {0.0, 0.0}
    }
  },


  -- Field MK2
  {
    type = "item",
    name = "tf-fieldmk2",
    icon = "__Treefarm-Lite__/graphics/icons/fieldmk2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tf-buildings",
    order = "b[fieldmk2]",
    place_result = "tf-fieldmk2Overlay",
    stack_size = 10
  },

  {
    type = "recipe",
    name = "tf-fieldmk2",
    ingredients = {{"advanced-circuit",20},{"red-wire",20},{"steel-plate",20}},
    result = "tf-fieldmk2",
    result_count = 1,
    enabled = "false"
  },

  {
    type = "container",
    name = "tf-fieldmk2Overlay",
    max_health = 100,
    icon = "__Treefarm-Lite__/graphics/icons/fieldmk2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1,result = "tf-fieldmk2"},
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    inventory_size = 1,
    picture =
    {
      filename = "__Treefarm-Lite__/graphics/entities/fieldmk2/fieldmk2Overlay.png",
      priority = "extra-high",
      width = 640,
      height = 640,
      shift = {0.0, 0.0}
    }
  },

  {
    type = "logistic-container",
    name = "tf-fieldmk2",
    logistic_mode = "requester",
    order = "c[fieldmk2]",
    max_health = 100,
    icon = "__Treefarm-Lite__/graphics/icons/fieldmk2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1,result = "tf-fieldmk2"},
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-2.8, -0.5}, {0.5, 0.5}},
    inventory_size = 2,
    picture =
    {
      filename = "__Treefarm-Lite__/graphics/entities/fieldmk2/fieldmk2.png",
      priority = "extra-high",
      width = 70,
      height = 170,
      shift = {0.0, -1.5}
    }
  },







  {
    type = "item",
    name = "tf-germling",
    icon = "__Treefarm-Lite__/graphics/icons/germling.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "tf-seeds",
    order = "a[germling]",
    place_result = "tf-germling",
    fuel_value = "1MJ",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "tf-germling",
    ingredients = {{"raw-wood",1}},
    result = "tf-germling",
    result_count = 1
  },


  {
    type = "item",
    name = "tf-coral-seed",
    icon = "__Treefarm-Lite__/graphics/icons/coral-seed.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "tf-seeds",
    order = "b[coral]",
    place_result = "tf-coral-seed",
    fuel_value = "1MJ",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "tf-coral-seed",
    ingredients = {{"raw-wood",1}},
    result = "tf-coral-seed",
    result_count = 1
  },








  {
    type = "technology",
    name = "tf-advanced-treefarming",
    icon = "__Treefarm-Lite__/graphics/icons/fieldmk2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tf-fieldmk2"
      }
    },
    prerequisites =
    {
      "construction-robotics",
      "logistic-robotics"
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 2}
      },
      time = 30
    }
  },



  {
    type = "decorative",
    name = "tf-overlay-green",
    flags = {"placeable-neutral", "not-on-map"},
    icon = "__Treefarm-Lite__/graphics/entities/fieldmk2/tf-overlay-1.png",
    subgroup = "grass",
    order = "b[decorative]-b[tf-overlay-green]",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    render_layer = "radius-visualization",
    pictures =
    {
      {
        filename = "__Treefarm-Lite__/graphics/entities/fieldmk2/tf-overlay-1.png",
        width = 32,
        height = 32,
        shift = {-0.5, -0.5}
      }
    }
  },
  
  {
    type = "decorative",
    name = "tf-overlay-red",
    flags = {"placeable-neutral", "not-on-map"},
    icon = "__Treefarm-Lite__/graphics/entities/fieldmk2/tf-overlay-2.png",
    subgroup = "grass",
    order = "b[decorative]-b[tf-overlay-red]",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    render_layer = "radius-visualization",
    pictures =
    {
      {
        filename = "__Treefarm-Lite__/graphics/entities/fieldmk2/tf-overlay-2.png",
        width = 32,
        height = 32,
        shift = {-0.5, -0.5}
      }
    }
  }
})

local tf_smallerButtonFont =
{
  type = "button_style",
  parent = "button_style",
  font = "default"
}
data.raw["gui-style"].default["tf_smallerButtonFont"] = tf_smallerButtonFont