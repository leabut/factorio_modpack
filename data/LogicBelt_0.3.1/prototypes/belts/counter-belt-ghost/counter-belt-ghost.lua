data:extend(
{
	{
		type = "item",
		name = "counter-belt-ghost",
		icon = "__base__/graphics/icons/smart-chest.png",
		flags = {"goes-to-quickbar"},
		subgroup = "storage",
		order = "a[items]-d[smart-chest]",
		place_result = "counter-belt-ghost",
		stack_size = 50
	},
	{
		type = "smart-container",
		name = "counter-belt-ghost",
		icon = "__base__/graphics/icons/smart-chest.png",
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		minable =
		{
		  hardness = 0.2,
		  mining_time = 0.5,
		  result = "counter-belt-ghost"
		},
		max_health = 150,
		corpse = "small-remnants",
		resistances =
		{
		  {
			type = "fire",
			percent = 70
		  }
		},
		collision_box = {{0, 0}, {0, 0}},
		collision_mask = { "item-layer"},
		selection_box = {{-0.3, -0.3}, {0.3, 0.3}},
		fast_replaceable_group = "container",
		inventory_size = 10,
		--vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
		  filename = "__LogicBelt__/graphics/transparent.png",
		  priority = "very-low",
		  width = 20,
		  height = 20
		},
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
		circuit_wire_max_distance = 7.5
	}
})

