data:extend(
{  

	-- 1- munition
	-- 2- handwaffen
	-- 3- materials
	-- 4- schwere waffen 
	-- 5- fahrzeuge
	-- 6- panzer
	-- 7- material
	-- 8- ausrüstung	
	--[[
	y-equ-0=Shield Generator Basic Component
	y-equ-1=Shield Generator CF-56
	y-equ-2=Shield Generator KT-34
	y-equ-3=Advanced Targeting Device
	y-equ-4=Battlefield Energy Support
	y-equ-5=Battlefield Energy Stockpile
	y-equ-6=Mobile Energy Generator
	]]
	
	{ type = "recipe", name = "y-fab8a-recipe", energy_required = 3, ingredients = {{"y-stuff-4",1},{"y-iron-case",8},{"y-refined-yres1",8},{"y-chip-1",8},}, result = "y-equ-0", enabled = "true", result_count = 1, order="equ-0", subgroup = "yi-material", category="yrcat-material",},		
	{ type = "recipe", name = "y-fab8b-recipe", energy_required = 3, ingredients = {{"y-equ-0",1},{"y-stuff-5",2},{"y-accumulator-s",2},}, result = "y-equ-1", enabled = "true", result_count = 1, order="equ-1", subgroup = "yi-material", category="yrcat-material",},		
	{ type = "recipe", name = "y-fab8c-recipe", energy_required = 3, ingredients = {{"y-equ-0",1},{"y-stuff-5",4},{"y-accumulator-m",6},}, result = "y-equ-2", enabled = "true", result_count = 1, order="equ-2", subgroup = "yi-material", category="yrcat-material",},		
	{ type = "recipe", name = "y-fab8d-recipe", energy_required = 3, ingredients = {{"y-zielfern",1},{"y-equ-0",1},{"y-sm-1",1},{"y-cyb-0",4},{"y-iron-case",1},{"y-zproduct-8",1},}, result = "y-equ-3", enabled = "true", result_count = 1, order="equ-3", subgroup = "yi-material", category="yrcat-material",},		
	
	{ type = "recipe", name = "y-fab8e-recipe", energy_required = 3, ingredients = {{"y-meg-t",2},{"y-beg",1},{"y-ups-flywheel-b",2},{"y-stirling-solar-dish",8},{"y-conductive-wire-1",12},}, result = "y-equ-4", enabled = "true", result_count = 1, order="equ-4", subgroup = "yi-material", category="yrcat-material",},				
	{ type = "recipe", name = "y-fab8f-recipe", energy_required = 3, ingredients = {{"y-ups-flywheel-b",4},{"y-accumulator-b",8},{"y-stuff-3",3},{"y-conductive-wire-1",14},{"y-iron-case",4}}, result = "y-equ-5", enabled = "true", result_count = 1, order="equ-5", subgroup = "yi-material", category="yrcat-material",},			
	{ type = "recipe", name = "y-fab8g-recipe", energy_required = 3, ingredients = {{"y-stuff-3",1},{"y-stuff-4",1},{"y-stuff-5",1},{"y-basic-t2-mf",1},{"y-iron-case",1} }, result = "y-equ-6", enabled = "true", result_count = 1, order="equ-6", subgroup = "yi-material", category="yrcat-material",},		
	
	--{ type = "recipe", name = "y-fab8h-recipe", energy_required = 2, ingredients = {{"y-biomass",5},{"y-medic",1},{"y-combat-train",5}, }, result = "y-equ-7", enabled = "true", result_count = 1, order="equ-7", subgroup = "yi-material", category="yrcat-material",},		
	--{ type = "recipe", name = "y-fab8i-recipe", energy_required = 2, ingredients = {{"y-basic-t1-mf",2},{"y-sm-1",2},{"y-combat-armor-3",1},{"y-chip-2",1}, }, result = "y-equ-8", enabled = "true", result_count = 1, order="equ-8", subgroup = "yi-material", category="yrcat-material",},		
	--{ type = "recipe", name = "y-fab8k-recipe", energy_required = 2, ingredients = {{"y-basic-t2-mf",2},{"y-sm-2",3},{"y-combat-armor-3",1},{"y-chip-2",1}, }, result = "y-equ-9", enabled = "true", result_count = 1, order="equ-9", subgroup = "yi-material", category="yrcat-material",},		
		
		
	{ type = "item", name = "y-equ-0", icon = "__yi_pfw__/graphics/fab8/teil_04_32.png", flags = {"goes-to-main-inventory"}, order = "a", stack_size = 100, },
	{ type = "item", name = "y-equ-1", icon = "__yi_pfw__/graphics/fab8/lfg13.png", flags = {"goes-to-main-inventory"}, order = "a", stack_size = 100, placed_as_equipment_result = "y-equ-1",},
	{ type = "item", name = "y-equ-2", icon = "__yi_pfw__/graphics/fab8/mfg28.png", flags = {"goes-to-main-inventory"}, order = "a", stack_size = 100, placed_as_equipment_result = "y-equ-2",},
	{ type = "item", name = "y-equ-3", icon = "__yi_pfw__/graphics/fab8/msg-cb.png", flags = {"goes-to-main-inventory"}, order = "a", stack_size = 100, },		
	{ type = "item", name = "y-equ-4", icon = "__yi_pfw__/graphics/fab8/sfg400.png", flags = {"goes-to-main-inventory"}, order = "a", stack_size = 100, },
	{ type = "item", name = "y-equ-5", icon = "__yi_pfw__/graphics/fab8/teil_02.png", flags = {"goes-to-main-inventory"}, order = "a", stack_size = 100, },	
	{ type = "item", name = "y-equ-6", icon = "__yi_pfw__/graphics/fab8/energy_icon.png", flags = {"goes-to-main-inventory"}, order = "a", stack_size = 100, placed_as_equipment_result = "y-equ-6",},
	--{ type = "item", name = "y-equ-7", icon = "__yi_pfw__/graphics/fab8/mcb_sani_32.png", flags = {"goes-to-main-inventory"}, order = "a", stack_size = 100, },
	--{ type = "item", name = "y-equ-8", icon = "__yi_pfw__/graphics/fab8/neron_u3_32.png", flags = {"goes-to-main-inventory"}, order = "a", stack_size = 100, },
	--{ type = "item", name = "y-equ-9", icon = "__yi_pfw__/graphics/fab8/neron_u5_32.png", flags = {"goes-to-main-inventory"}, order = "a", stack_size = 100, },	
	
	
	-- Retrade !!!		
	--{ type = "recipe", name = "y-rfab8a-recipe", ingredients = {{"y-equ-0",1},}, results = {{type="item", name="y-unicomp-a2", amount=1,},}, enabled = "true", order="equ-0", subgroup = "yi-retrade8", category="yrcat-retrade", icon = "__yi_pfw__/graphics/fab8/teil_04-sell.png" },		
	{ type = "recipe", name = "y-rfab8b-recipe", ingredients = {{"y-equ-1",1},}, results = {{type="item", name="y-stuff-1", amount=1,},{type="item", name="y-redcoil", amount=3,},}, enabled = "true", order="equ-1", subgroup = "yi-retrade8", category="yrcat-retrade", icon = "__yi_pfw__/graphics/fab8/lfg13-sell.png" },	
	{ type = "recipe", name = "y-rfab8c-recipe", ingredients = {{"y-equ-2",1},}, results = {{type="item", name="y-stuff-4", amount=2,},{type="item", name="y-stuff-2", amount=4,},}, enabled = "true", order="equ-2", subgroup = "yi-retrade8", category="yrcat-retrade", icon = "__yi_pfw__/graphics/fab8/mfg28-sell.png" },	
	{ type = "recipe", name = "y-rfab8d-recipe", ingredients = {{"y-equ-3",1},}, results = {{type="item", name="y-stuff-2", amount=4,},{type="item", name="y-grycoil", amount=6,},}, enabled = "true", order="equ-3", subgroup = "yi-retrade8", category="yrcat-retrade", icon = "__yi_pfw__/graphics/fab8/msg-cb-sell.png" },	
	
	{ type = "recipe", name = "y-rfab8e-recipe", ingredients = {{"y-equ-4",1},}, results = {{type="item", name="y-stuff-4", amount=2,},{type="item", name="y-stuff-5", amount=3,},}, enabled = "true", order="equ-4", subgroup = "yi-retrade8", category="yrcat-retrade", icon = "__yi_pfw__/graphics/fab8/sfg400-sell.png" },	
	{ type = "recipe", name = "y-rfab8f-recipe", ingredients = {{"y-equ-5",1},}, results = {{type="item", name="y-stuff-6", amount=1,},{type="item", name="y-unicomp-a2", amount=245,}}, enabled = "true", order="equ-5", subgroup = "yi-retrade8", category="yrcat-retrade", icon = "__yi_pfw__/graphics/fab8/teil_02-sell.png" },		
	{ type = "recipe", name = "y-rfab8g-recipe", ingredients = {{"y-equ-6",1},}, results = {{type="item", name="y-stuff-1", amount=8,},{type="item", name="y-stuff-2", amount=6,},}, enabled = "true", order="equ-6", subgroup = "yi-retrade8", category="yrcat-retrade", icon = "__yi_pfw__/graphics/fab8/energy_icon.png" },	
	--{ type = "recipe", name = "y-rfab8h-recipe", ingredients = {{"y-equ-7",9},}, results = {{type="item", name="y-unicomp-a2", amount=1,}, {type="item", name="y-stuff-2", amount=2,},}, enabled = "true", order="equ-7", subgroup = "yi-retrade", category="yrcat-retrade", icon = "__yi_pfw__/graphics/fab8/mcb_sani-sell.png" },	
	--{ type = "recipe", name = "y-rfab8i-recipe", ingredients = {{"y-equ-8",2},}, results = {{type="item", name="y-stuff-4", amount=1,}, {type="item", name="y-stuff-3", amount=3,},{type="item", name="y-unicomp-a2", amount=10,}}, enabled = "true", order="equ-8", subgroup = "yi-retrade", category="yrcat-retrade", icon = "__yi_pfw__/graphics/fab8/neron_u3-sell.png" },	
	--{ type = "recipe", name = "y-rfab8k-recipe", ingredients = {{"y-equ-9",2},}, results = {{type="item", name="y-stuff-6", amount=1,}, {type="item", name="y-stuff-5", amount=4,},}, enabled = "true", order="equ-9", subgroup = "yi-retrade", category="yrcat-retrade", icon = "__yi_pfw__/graphics/fab8/neron_u5-sell.png" },	
	
})	
	