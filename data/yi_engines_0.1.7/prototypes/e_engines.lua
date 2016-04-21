data:extend(
{  
	
	-- Solid Fuel Engine		
	{
		type = "assembling-machine",
		name = "y-sfe",
		icon = "__yi_engines__/graphics/entity/energy2/sfe-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-sfe"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			
			{
				production_type = "output",
				base_area = 2,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {0, 2}},										
				}
			},					
			{
				production_type = "input",
				base_area = 20,
				base_level = -1,
				pipe_connections = {
					{ type="input", position = {  1, -2}},					
				}
			},
			{
				production_type = "input",
				base_area = 20,
				base_level = -1,
				pipe_connections = {
					{ type="input", position = { -1, -2}},					
				}
			},			
			
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",

		animation =
		{
			north= {
				filename = "__yi_engines__/graphics/entity/energy2/sfe-nord.png",			
				width = 112,
				height = 128,
				shift = {0.2, -0.1},
				frame_count = 12,
				line_length = 12,			
			},
			east= {
				filename = "__yi_engines__/graphics/entity/energy2/sfe-west.png",			
				width = 128,
				height = 112,
				shift = {0.25, 0.2},
				frame_count = 12,
				line_length = 12,			
			},
			south= {
				filename = "__yi_engines__/graphics/entity/energy2/sfe-sued.png",			
				width = 112,
				height = 128,
				shift = {0.2, 0.3},
				frame_count = 12,
				line_length = 12,			
			},
			west= {
				filename = "__yi_engines__/graphics/entity/energy2/sfe-ost.png",			
				width = 128,
				height = 112,
				shift = {0.25, 0.2},
				frame_count = 12,
				line_length = 12,			
			},			
		},		
		crafting_categories = {"yrcat-mf1a"},
		crafting_speed = 1,
		energy_source =
		{		
			type = "burner",
			effectivity = 0.85,
			fuel_inventory_size = 1,
			emissions = 0.02,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.65, -0.2},
					frequency = 1
				}
			}
		},
		energy_usage = "3000kW",						
		ingredient_count = 3,
		order="a[atomics]",
		subgroup = "yie-engines",
	},	
	
	{
		type = "assembling-machine",
		name = "y-ffe",
		icon = "__yi_engines__/graphics/entity/energy2/ffe-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-ffe"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 3,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {0, 2}},										
				}
			},					
			{
				production_type = "input",
				base_area = 30,
				base_level = -1,
				pipe_connections = {
					{ type="input", position = { 0, -2}},					
				}
			},
			{
				production_type = "input",
				base_area = 30,
				base_level = -1,
				pipe_connections = {
					{ type="input", position = { -1, -2}},					
				}
			},
			{
				production_type = "input",
				base_area = 30,
				base_level = -1,
				pipe_connections = {
					{ type="input", position = { 1, -2}},					
				}
			},			
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			north= {
				filename = "__yi_engines__/graphics/entity/energy2/ffe-sa.png",			
				width = 128,
				height = 112,
				shift = {0.4, -0.1},
				frame_count = 15,
				line_length = 15,			
			},
			east= {
				filename = "__yi_engines__/graphics/entity/energy2/ffe-wa.png",			
				width = 128,
				height = 128,
				shift = {0.15, -0.2},
				frame_count = 15,
				line_length = 15,			
			},
			south= {
				filename = "__yi_engines__/graphics/entity/energy2/ffe-na.png",			
				width = 128,
				height = 128,
				shift = {0.4, 0.0},
				frame_count = 15,
				line_length = 15,			
			},
			west= {
				filename = "__yi_engines__/graphics/entity/energy2/ffe-oa.png",			
				width = 128,
				height = 112,
				shift = {0.25, 0.0},
				frame_count = 15,
				line_length = 15,			
			},					
			animation_speed = 0.8,
		},
		crafting_categories = {"yrcat-mf1b"},
		crafting_speed = 1,
		energy_source = {		
			type = "electric",
			usage_priority = "primary-input",
			emissions = 0.00025, 
		},
		energy_usage = "100kW",						
		ingredient_count = 3,
		--module_slots = 2,
		--allowed_effects = {"speed", "productivity", "pollution"},
		order="a[atomics]",		
		subgroup = "yie-engines",
	},		
	
	-- Quantrinum Reactor		
	{
		type = "assembling-machine",
		name = "y-quantrinum-reactor",
		icon = "__yi_engines__/graphics/entity/energy2/qr-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-quantrinum-reactor"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 100,
				base_level = 1,
				pipe_connections = {
					{type="output", position = { 0, 3}},					
					{type="output", position = { 0,-3}},						
					{type="output", position = { 3, 0}},					
					{type="output", position = {-3, 0}},											
				}
			},					
		},
		collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__yi_engines__/graphics/entity/energy2/qr-anim.png",			
			width = 200,
			height = 180,
			shift = {0.35, 0.0},
			frame_count = 18,
			line_length = 9,
			animation_speed = 0.75,
		},
		crafting_categories = {"yrcat-mf1q"},
		crafting_speed = 1,
		energy_source = {		
			type = "electric",
			usage_priority = "primary-input",
			emissions = 0.00025, 
		},
		energy_usage = "200kW",						
		ingredient_count = 1,
		order="a[atomics]",		
		subgroup = "yie-engines",
	},	

	
	-- A(Tiny) Stirling Engine		
	{
		type = "assembling-machine",
		name = "y-1stirling-engine",
		icon = "__yi_engines__/graphics/entity/energy2/ast-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-1stirling-engine"},
		max_health = 150,
		corpse = "small-remnants",
		resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 5,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {0.5, 1.5}},										
				}
			},					
		},
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__yi_engines__/graphics/entity/energy2/stir-sheet.png",			
			width = 96,
			height = 96,
			shift = {0.6, -0.25},
			frame_count = 18,
			line_length = 18,			
		},		
		crafting_categories = {"yrcat-mf1c"},
		crafting_speed = 1,
		energy_source =
		{		
			type = "burner",
			effectivity = 0.7,
			fuel_inventory_size = 1,
			emissions = 0.05,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.65, -0.2},
					frequency = 0.25
				}
			}
		},
		energy_usage = "300kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "yie-engines",
	},			
	
	{
		type = "assembling-machine",
		name = "y-electric-air-heater",
		icon = "__yi_engines__/graphics/entity/energy2/air-heater-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-electric-air-heater"},
		max_health = 150,
		corpse = "medium-remnants",
		--resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "input",
				base_area = 150,
				base_level = 0,
				pipe_connections = {
					{type="input", position = {0, 2}},										
				}
			},					
			{
				production_type = "input",
				base_area = 2,
				base_level = 0,
				pipe_connections = {
					{type="input", position = { 2, 0}},										
					{type="input", position = {-2, 0}},										
				}
			},					
			
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		picture =
		{
			filename = "__yi_engines__/graphics/entity/energy2/air-heater.png",			
			width = 130,
			height = 128,
			shift = {0.825, 0.0}
		},		
		animation =
		{
			filename = "__yi_engines__/graphics/entity/energy2/ah-a.png",			
			width = 130,
			height = 128,
			shift = {0.825, 0.0},
			frame_count = 24,
			line_length = 12,	
			animation_speed = 1.5,	
		},		
		crafting_categories = {"yrcat-eg4"},
		crafting_speed = 1.0,
		
		energy_source = {		
			type = "electric",
			usage_priority = "secondary-input",
			emissions = -0.4, 
		},
		energy_usage = "250kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "yie-engines",
	},			
	
		-- E-Motor Small
	{
		type = "assembling-machine",
		name = "y-emotor-s",
		icon = "__yi_engines__/graphics/entity/e-motor-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-emotor-s"},
		max_health = 150,
		corpse = "medium-remnants",
		--resistances = {{type = "physical",percent = 60},},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 1,
				base_level = 1,
				pipe_connections = {
					{type="output", position = {0.5, -1.5}},										
				}
			},										
		},
		collision_box = {{-0.5, -0.7}, {0.7, 0.7}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			north = { 	filename = "__yi_engines__/graphics/entity/e-motor-n.png",			
						width = 96, height = 96, shift = {0.5, -0.03}, frame_count = 1, line_length = 1, },	
			south = {	filename = "__yi_engines__/graphics/entity/e-motor-s.png",			
						width = 96, height = 96, shift = {-0.5, 0.13}, frame_count = 1, line_length = 1, },	
			east = {	filename = "__yi_engines__/graphics/entity/e-motor-e.png",			
						width = 96, height = 96, shift = {-0.09, 0.53}, frame_count = 1, line_length = 1, },	
			west = {	filename = "__yi_engines__/graphics/entity/e-motor-w.png",			
						width = 96, height = 96, shift = {0.13, -0.47}, frame_count = 1, line_length = 1, },										
		},		
		crafting_categories = {"yrcat-mf1c"},
		crafting_speed = 1,
		
		energy_source = {		
			type = "electric",
			usage_priority = "primary-input",
			emissions = 0.1, 
		},
		energy_usage = "200kW",						
		ingredient_count = 1,
		order="a",
		subgroup = "yie-engines",
	},	
	
	
	{
		type = "boiler",
		name = "ye_rheinsberg",
		icon = "__yi_engines__/graphics/entity/rheinsberg-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.3, mining_time = 0.5, result = "ye_rheinsberg"},
		max_health = 700,
		corpse = "big-remnants",
		resistances = 
		{
			{
				type = "fire",
				percent = 80
			}
		},		
		collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fluid_box =
		{
		
			base_area = 300,
			pipe_connections =
			{
				{ type="input", position = {    0, 3.0} },
				{ type="input", position = {  1.5, 3.0} },
				{ type="input", position = { -1.5, 3.0} },
				--{ type="input", position = {  2.0, -3.0} },
				--{ type="input", position = { -2.0, -3.0} },
				

				
				{ type="output",position = { -1.5, -3.0} },
				{ type="output",position = {  1.5, -3.0} },				
				{ type="output",position = {  0,  -3.0} },
				--{ position = {  0.5,  3.0} },
			},
		},
		energy_consumption = "50MW",
		burner =
		{
			effectivity = 0.98,
			fuel_inventory_size = 3,
			fuel_inventory_count = 1000,
			emissions = 0.005,
			smoke = {{	name = "smoke",deviation = {0.1, 0.1},frequency = 0.1,}}
		},
		structure =
		{
			left = 
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},
			},
			down =
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},
			},
			left_down =
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},
			},
			right_down =
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},
			},
			left_up =
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},
			},
			right_up =
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},
			},
			t_down =
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},
			},
			t_up =
			{
				filename = "__yi_engines__/graphics/entity/rheinsberg.png", priority = "extra-high", width = 192, height = 192, shift = {0.34, -0.125},		
			},			
		},
		fire ={},
		burning_cooldown = 500,
		-- these are the pipe pictures - boiler is a pipe as well
		pictures = pipepictures()
	},	
	
})	
