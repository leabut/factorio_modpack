--if a recipe has changed
for i, player in ipairs(game.players) do 
  player.force.reset_recipes() 
end
--if a technology has changed
for i, player in ipairs(game.players) do 
  player.force.reset_technologies() 
end
