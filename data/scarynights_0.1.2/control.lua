--mod to provide additional challenge for ship landing part of the game
require "defines"
require "util"
--variables
--[[
global.attackdata=
	{
		cap - max number of biters sent
		timer - time in ticks until next attack
		interval - interval between attacks
	}
global.target  - entity which attracts biters, usually it'll be the rocket defense
global.bases=
	{--a table of biter bases from which units are going to be sent
		{x,y} - approximate position of biter base
	}
]]
------------------------------------------------------------------------
--few commands which might be used in analogy with "freeplay" ones
remote.add_interface("scarynight",
{
  setattackdata = function(data)--function to modify attackdata table
--allows incomplete definition of fields. Undefined ones will keep their previous
--values.    
	for index in pairs(global.attackdata) do 
		if data[index]~=nil  then
			global.attackdata[index]=data[index]
		end
	end
  end,

  do_attack = function()
  	return do_attack(0)
  end,

  getattackdata = function()
    return global.attackdata
  end,
})
------------------------------------------------------------------------
script.on_init(function()
	initattackdata()
	do_attack()
end)

script.on_load(function()
	if global.attackdata==nil then 
		initattackdata() 
	end
	do_attack()
end)

function do_attack(event)
--prepare the biter plan for the battle
	--game.evolution_factor=1
--subscribe the attack function
	--game.player.print("starting biter nite attack")
	script.on_event(defines.events.on_tick,function(event)
		global.attackdata.timer=global.attackdata.timer-1
		if global.attackdata.timer == 30 then
			initbases()
		end
		if global.attackdata.timer<=0 then
			global.attackdata.timer=global.attackdata.interval
			--game.player.print("Biter Check")

			dangerlevel = game.daytime - 0.25
			if dangerlevel > 0.25 then dangerlevel = 0.25 - (dangerlevel - 0.25) * 1.4 end
			
			dangerlevel = dangerlevel * game.evolution_factor * 4

			--game.player.print("DangerLevel: " .. dangerlevel)

			if dangerlevel > 0.1 and math.random(game.evolution_factor * 30) > 3 then
				--game.player.print("Sending Biters ")
				global.attackdata.cap = (10 * game.evolution_factor) * (10 * game.evolution_factor) * math.random(10 * dangerlevel)

				send_biters() 
			end
		end
	end)

end


------------------------------------------------------------------------
function initattackdata()
	global.attackdata=
	{cap=100, timer=600, interval=600}
	global.bases={}
end

function chunk_to_tiles(chunk) --transform chunk coords to coords of it's middle tile
	local tile={}
	tile.x=math.floor((chunk.x+0.5)*32)
	tile.y=math.floor((chunk.y+0.5)*32)
	return tile
end

function initbases()
	--check all the generated chunks
	--game.player.print("init bases")
	global.bases={}
	local amount=0
	for coord in game.get_surface(1).get_chunks() do
		amount=amount+1
		if game.get_surface(1).is_chunk_generated(coord) then 
			coord=chunk_to_tiles(coord)
			if game.get_surface(1).get_pollution(coord) > 0.1 or math.random(100) > 97 then

				--for the given chunk check if there are biters 
				local biters=game.get_surface(1).find_enemy_units(coord, 16)
				if #biters>0 then
					--see if they're there because there's their base
					if #(game.get_surface(1).find_entities_filtered{area={{coord.x-32, coord.y-32},{coord.x+32, coord.y+32}},
					type = "unit-spawner"})>0 then--this assumes that only enemy spawners can exist there
					--if so, mark it's location
						--game.player.print(game.get_surface(1).get_pollution(coord))
						table.insert(global.bases,coord)
					end
				end
			end
 		end
 		--if amount>100 then break end
	end

	shuffleTable(global.bases)
end

function shuffleTable( t )
    local rand = math.random 
    assert( t, "shuffleTable() expected a table, got nil" )
    local iterations = #t
    local j
    
    for i = iterations, 2, -1 do
        j = rand(i)
        t[i], t[j] = t[j], t[i]
    end
end


function send_biters()
	--we just go around their bases
	local amount_bit=0
	for _,base in ipairs(global.bases) do
	--and put them in squads
		local group=game.get_surface(1).create_unit_group{position=base}
		for _, biter in ipairs(game.get_surface(1).find_enemy_units(base, 16)) do
			--if not biter.has_command() then--we also see if they aren't in other squad already
				group.add_member(biter)
				--biter.set_command{ type=defines.command.attack_area, destination=game.player.position, radius=200, distraction=defines.distraction.by_anything }

				amount_bit=amount_bit+1
				--game.player.print("found someone")
			--end
		end
		--then we see if there were any
		if #group.members==0 then
			group.destroy()
			--game.player.print("broke group")
		else--if there were, send them to war
			--group.set_command{}
			

			group.set_autonomous()
			--group.set_command{ type=defines.command.attack_area, destination=game.player.position, radius=200, distraction=defines.distraction.by_anything }
			--group.set_command{type=defines.command.attack, target=game.player.character, distraction=defines.distraction.enemy}
			--game.player.force.chart{{base.x-16, base.y-16},{base.x+16, base.y+16}}
		end
		--see if we have sent to die enough
		if amount_bit>global.attackdata.cap then
			break
		end
	end
	--game.player.print("sent "..amount_bit)
end

function closest(a,b,c)--returns true if position "a" is closer to "c" than the "b"
	local dist_a=(a.x-c.x)^2+(a.y-c.y)^2
	local dist_b=(b.x-c.x)^2+(b.y-c.y)^2
	return dist_a<dist_b
end
