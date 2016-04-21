require "defines"
script.on_init(function() On_Load() end)
script.on_load(function() On_Load() end)
local didTheThing = false
function On_Load()
	if not didTheThing then
		didTheThing = true
		--if a recipe has changed
--		for i, player in ipairs(game.players) do 
--  			player.force.reset_recipes() 
--		end
		--if a technology has changed
--		for i, player in ipairs(game.players) do 
--  			player.force.reset_technologies() 
		end
	end
--end
