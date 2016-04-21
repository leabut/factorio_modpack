data:extend(
{

	{
		type = "energy-shield-equipment",
		name = "y-combat-armor-2",
		sprite = 
		{
			filename = "__yi_pfw__/graphics/equip/panz_5-96be.png",
			width = 96,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 3,
			height = 2,
			type = "full"
		},
		max_shield_value = 100,
		energy_source =
		{
			type = "electric",
			buffer_capacity = "15KJ",
			input_flow_limit = "30KW",
			usage_priority = "primary-input"
		},
		energy_per_shield = "3KJ"
	},
	
	{
		type = "energy-shield-equipment",
		name = "y-combat-armor-3",
		sprite = 
		{
			filename = "__yi_pfw__/graphics/equip/panz_4-96be.png",
			width = 96,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 3,
			height = 2,
			type = "full"
		},
		max_shield_value = 225,
		energy_source =
		{
			type = "electric",
			buffer_capacity = "25KJ",
			input_flow_limit = "50KW",
			usage_priority = "primary-input"
		},
		energy_per_shield = "5KJ"
	},
	
	{
		type = "energy-shield-equipment",
		name = "y-equ-1",
		sprite = 
		{
			filename = "__yi_pfw__/graphics/equip/lfg13_64.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		max_shield_value = 350,
		energy_source =
		{
			type = "electric",
			buffer_capacity = "35KJ",
			input_flow_limit = "70KW",
			usage_priority = "primary-input"
		},
		energy_per_shield = "7KJ"
	},	
	
	{
		type = "energy-shield-equipment",
		name = "y-equ-2",
		sprite = 
		{
			filename = "__yi_pfw__/graphics/equip/mfg28_96.png",
			width = 96,
			height = 96,
			priority = "medium"
		},
		shape =
		{
			width = 3,
			height = 3,
			type = "full"
		},
		max_shield_value = 500,
		energy_source =
		{
			type = "electric",
			buffer_capacity = "56KJ",
			input_flow_limit = "110KW",
			usage_priority = "primary-input"
		},
		energy_per_shield = "8KJ"
	},
	
	{
		type = "battery-equipment",
		name = "y-zproduct-8",
		sprite = 
		{
			filename = "__yi_pfw__/graphics/equip/fusion-cell-64.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "1500KJ",
			input_flow_limit = "15MW",
			output_flow_limit = "15MW",
			usage_priority = "terciary"
		}
	},
	
	{
		type = "generator-equipment",
		name = "y-equ-6",
		sprite = 
		{
			filename = "__yi_pfw__/graphics/equip/energy-128e.png",
			width = 128,
			height = 128,
			priority = "medium"
		},
		shape =
		{
			width = 4,
			height = 4,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = "150kW"
	},	
	
	
})
