data:extend({
	--- Seedling
	{
    type = "recipe",
    name = "bf-seedling",
    enabled = "false",
    energy_required = 0.5,
    ingredients = {{"raw-wood",1}},
    result = "bf-seedling"
	},
	
	--- Bio Farm
	{
    type = "recipe",
    name = "bf_bio_farm",
    enabled = "false",
    ingredients = 
    {
      {"iron-stick",20},
      {"copper-cable",10},
      {"stone",20},
      {"small-lamp",10}
    },
    result = "bf_bio_farm"
	},
	
		--- Raw Wood from Water
	{
    type = "recipe",
    name = "bf-Logs_Mk1",
    category = "bf-mod-dummy",
    enabled = "false",
    energy_required = 240,
	ingredients =
    {
      {type="item", name="bf-seedling", amount=10},     
      {type="fluid", name="water", amount=100},
    },
    result_count = 25,
    result = "raw-wood"
	},
	
		--- Raw Wood from Water & Science-Pack-1
	{
    type = "recipe",
    name = "bf-Logs_Mk2",
    category = "bf-mod-dummy",
    enabled = "false",
    energy_required = 220,
	ingredients =
    {
      {type="item", name="bf-seedling", amount=10},     
	  {type="item", name="science-pack-1", amount=10},     
      {type="fluid", name="water", amount=100},
    },
    result_count = 50,
    result = "raw-wood"
	},
	
		
		--- Raw Wood from Water & Science-Pack-2
	{
    type = "recipe",
    name = "bf-Logs_Mk3",
    category = "bf-mod-dummy",
    enabled = "false",
    energy_required = 200,
	ingredients =
    {
      {type="item", name="bf-seedling", amount=10},     
	  {type="item", name="science-pack-2", amount=10},     
      {type="fluid", name="water", amount=100},
    },
    result_count = 100,
    result = "raw-wood"
	},
})