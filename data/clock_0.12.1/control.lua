require "defines"

if not bobmods then bobmods = {} end
if not bobmods.clock then bobmods.clock = {} end
bobmods.clock.min = 0

script.on_event(defines.events.on_tick, function(event)
     bobmods.clock.previous = bobmods.clock.min
	if game.daytime >= 0.5 then
		bobmods.clock.time = game.daytime*24 -12
	else
		bobmods.clock.time = game.daytime*24 +12
	end
	bobmods.clock.hour = bobmods.clock.time - bobmods.clock.time % 1
	bobmods.clock.min = (bobmods.clock.time % 1) * 60
	bobmods.clock.min = bobmods.clock.min - bobmods.clock.min % 1
	if bobmods.clock.previous ~= bobmods.clock.min then
		for i, player in ipairs(game.players) do
			if player.gui.top.clockGUI == nil then player.gui.top.add{type="button", name="clockGUI"} end
			player.gui.top.clockGUI.caption=string.format("%02d:%02d", bobmods.clock.hour, bobmods.clock.min)
		end
	end
end)
