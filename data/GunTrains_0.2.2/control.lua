require "defines"
require "util"
--player will have special items that allow installation of combat equipment in trains.
--upon installation a colored robot appears and follows combat train
--now combat capable trains will work as usual but will shoot at enemies around
--if they stop near special chest - ammo refill is allowed.
--if the train is mined, combat equipment is provided back

--will track trigger created entity to detect when combat item is installed
--upon installation will destroy intermittent entity if any and will create
--companion robot to follow the train. Also robot will be set undestructible.
--combat entity and robot will be stored in global table indexed by backer name
--if there's already train with such name, will append number to name

--there will be interface fuctions to allow renaiming of trains without breaking the mod

--on train changed state will check if it's one of combat trains
--if it has stopped, will check whether there is ammo-chest nearby
--if there is, will spawn open ammo-chest over it, which will be synchronised with train ammo
--in train there will be stored ammo for a single shot (energy in buffer of personal defence)
--each second it will be checked for ammo and a single shot will be loaded again
--when train starts moving, all contents of chest are loaded in train ammo and ches is destroyed.
--any excess or wrong items get spilled around

--on  train death dummy character and robot will be destroyed
--on mine ammo and item will be attempted to insert in char and in case of fail will drop to ground

--remote interface to that should be used to avoid breaking mod by reanming locomotives

script.on_init(function() init() end)
--script.on_load(function() init() end)
function init()
    global.trains=global.trains or {}--a place to store all data related to combat trains
    --{train,character,grid,companion} listed by backername of train
    global.loading=global.loading or {}--table where data about current ammo-loading is kept
        --{locomotive,chest,grid}
    global.ticker=global.ticker or {tick=0,next=1,interval=20}--a table used for iterating over loading locomotives
        --tick - time of next update, next - index of the first element to be updated, 
        --interval - ticks between two updates of the same entity
    --defines
    --okay I cant currently obtain ammo categories automatically so this one has to be done by hand
    global.ammo_categories={}--this one groups items in categories 
    global.ammo_categories["shotgun-shell"]='shotgun-shell'
    global.ammo_categories["piercing-shotgun-shell"]='shotgun-shell'
    global.ammo_categories["poison-capsule"]='capsule'

    global.dummies={}--this is used to define which equipment is put initially
    global.dummies["guntrain-dummy-#shotgun-shell#"]="guntrain-gun-#shotgun-shell#"
    global.dummies["guntrain-dummy-#capsule#"]="guntrain-gun-#poison-capsule#"


    global.def={}--this describes stuff needed to know about combat equipment
    for k,v in pairs(game.item_prototypes) do
        if string.find(k,"guntrain%-gun%-#") then
            local ammo
            _,_,ammo=string.find(k,"#(.+)#")

            global.def[k]=
                {companion="guntrain-companion-#"..ammo..'#',
                ammo=ammo,
                category=global.ammo_categories[ammo],
                magazine_size=game.item_prototypes[ammo].magazine_size or 1
                }
        end
    end

    global.fed={}--this describes which ammo fits where
    for k,v in pairs(global.def) do
        global.fed[v.ammo]=k
    end

end

--handling attachment
script.on_event(defines.events.on_trigger_created_entity,
function(event)
    local ent=event.entity;
    if global.dummies[ent.name] then
        local train=find_train(ent)
        if train then
            attach(train,global.dummies[ent.name])
        else
            ent.surface.spill_item_stack(ent.position,{name="guntrain-attacher-#"..global.def[global.dummies[ent.name]].category.."#",count=1})
            ent.destroy()
        end
    end
end)

function find_train(ent)--get train near the created entity
    local surf=ent.surface
    local pos=ent.position
    local forc=ent.force.name
    ents=surf.find_entities_filtered{area={{pos.x-1,pos.y-1},{pos.x+1,pos.y+1}},type='locomotive'} 
    if ents then return ents[1] else return nil end
end

function attach(train,gun)--actually attach equipment to train
    local ent=train.surface.create_entity{name='guntrain-dummy-char',force=train.force,position=train.position}
    local inv=ent.get_inventory(defines.inventory.player_armor)
    inv.insert{name="guntrain-dummy-armor",count=1}
    inv[1].grid.put({name=gun})
    train.passenger=ent
    local companion=ent.surface.create_entity{position=ent.position,name=global.def[gun].companion,force=ent.force,target=train}
    companion.destructible=false
    store({train=train, character=ent, grid=inv[1].grid,
           companion=companion})
end

function store(data)--put data in global table, watch out for collisions
    remote.call("UniqueBackerNames",'make_unique',data.train)
    global.trains[data.train.backer_name]=data
end

--handling reloading
trainstates={}
trainstates[defines.trainstate.wait_station]=true
trainstates[defines.trainstate.no_schedule]=true
script.on_event(defines.events.on_train_changed_state,
function(event)
    if trainstates[event.train.state] then--train stops
        start_reload(can_reload(are_combat(event.train)))
    else --train leaves
        stop_reload(are_combat(event.train))
    end
end)

function are_combat(train)--determine whether the train contains entities of interest
    local combat_locos={}
    for _,loco in pairs(train.locomotives.front_movers) do
        if global.trains[loco.backer_name] then
            table.insert(combat_locos,loco)
        end
    end
    for _,loco in pairs(train.locomotives.back_movers) do
        if global.trains[loco.backer_name] then
            table.insert(combat_locos,loco)
        end
    end
    return combat_locos
end

function can_reload(locomotives)--find reloader-chest-locomotive pairs
    local couples={};
    for _,l in pairs(locomotives) do
        local area=bounding(l)
        if area then--this is the second check of validity for reload
            local chest=l.surface.find_entities_filtered{area=area,name="guntrain-closed-chest",force=l.force}[1]
            if chest then table.insert(couples,{locomotive=l,chest=chest}) end
        end
    end
    return couples
end

function bounding(locomotive)--returns bounding box in which chests should be looked for
    --due to complicated geomety of trains, requirements to chest position will be quite strict
    local ori=locomotive.orientation
    local p=locomotive.position
    if (ori>.24 and ori<.26) then
        res={{x=p.x-2.8,y=p.y-1.6},{x=p.x+2.4,y=p.y+1.6}}
    elseif (ori>.74 and ori<.76) then
        res={{x=p.x-2.4,y=p.y-1.6},{x=p.x+2.8,y=p.y+1.6}}
    elseif  (ori>.49 and ori<.51) then
        res={{x=p.x-1.6,y=p.y-1.8},{x=p.x+1.6,y=p.y+2.4}}
    elseif (ori>.99 or ori<0.01) then
        res={{x=p.x-1.6,y=p.y-2.4},{x=p.x+1.6,y=p.y+1.8}}
    else
        res={{x=p.x,y=p.y},{x=p.x,y=p.y},}
    end
    return res
end

function start_reload(triples)--put actual ammo chest and memorize the data
    for _,triple in pairs(triples) do
        local closed_chest=triple.chest;
        local chest=triple.chest.surface.create_entity{
            position=triple.chest.position,name="guntrain-open-chest",force=triple.chest.force}
        closed_chest.destroy();
        chest.minable=false; chest.destructible=false;
        triple.chest=chest;
        triple.grid=global.trains[triple.locomotive.backer_name].grid
        table.insert(global.loading,triple)
        
        local gun=triple.grid.equipment[1]
        local mag=global.def[gun.name].magazine_size
        if gun.energy>mag then
            local removed=math.floor((gun.energy-1)/mag)
            chest.insert{name=global.def[gun.name].ammo,count=removed}
            gun.energy=gun.energy-removed*mag
        end
    end
    global.ticker.tick=(global.ticker.tick>game.tick) and global.ticker.tick or game.tick+1
    global.ticker.next=(global.ticker.next>0) and global.ticker.next or 1
end

function stop_reload(locomotives)--remove chests and remove entries from global.loading
    if #global.loading>0 then
        local loading=global.loading
        local ticker=global.ticker
        for _,l in pairs(locomotives) do
            for i=#loading,1,-1 do
                if loading[i].locomotive==l then
                    local l=loading[i]
                    share(l)
                    l.chest.surface.create_entity{
                        position=l.chest.position,
                        force=l.chest.force,
                        name="guntrain-closed-chest",
                        }
                    l.chest.destroy()
                    table.remove(loading,i)
                    ticker.next=(ticker.next<#loading) and ticker.next or 1--rather iffy but stable at least
                end
            end
        end
    end
end
--reloading in progress
script.on_event(defines.events.on_tick,
function(event)
    local loading=global.loading
    if #loading>0 and event.tick==global.ticker.tick then
        local tic=global.ticker
        for i=tic.next,#loading,tic.interval do
            if loading[i].grid.equipment[1].energy==0 and loading[i].chest.get_item_count()>0 then
                share(loading[i],1)
            end
        end
        if tic.next==(#loading) then
            tic.next=1;
            tic.tick=tic.tick+tic.interval-(#loading)+1
        else
            tic.next=tic.next+1;
            tic.tick=tic.tick+1;
        end
    end
end)

function share(triple,count)--moves ammo from chest to gun
    local inventory=triple.chest.get_inventory(defines.inventory.chest)
     if inventory.get_item_count()==0 then return end
    local name=inventory[1].name;
    local grid=triple.grid
    count=count or inventory.get_item_count()
    if global.fed[name] then
        local gun=grid.equipment[1]
        if gun.name~=global.fed[name] then
            --if train and chest have different ammo
            if gun.energy~=0 then
                spill_ammo({name=global.def[gun.name].ammo,count=1,ammo=gun.energy},triple.chest.position,triple.chest.surface)
            end
            local loco=triple.locomotive
            grid.clear()
            global.trains[loco.backer_name].companion.destroy()
            gun=grid.put({name=global.fed[name]})
            global.trains[loco.backer_name].companion=
                loco.surface.create_entity{position=loco.position,name=global.def[gun.name].companion,target=loco,force=loco.force}
            global.trains[loco.backer_name].companion.destructible=false
            --end function putgun
        end
        local ammo=(inventory[1].type=='ammo') and inventory[1].ammo or 1
        nbullets=(count-1)*global.def[global.fed[name]].magazine_size+ammo
        gun.energy=gun.energy+nbullets
        inventory.remove{name=name,count=count}
    else
        if not( inventory[1].type=='ammo') then
            triple.chest.surface.spill_item_stack(triple.chest.position,{name=name,count=count})
        else
            spill_ammo({name=name,count=count,ammo=inventory[1].ammo},triple.chest.position,triple.chest.surface)
        end
        inventory.clear()
    end
end

function spill_ammo(stack,pos,surf)--spills ammo stack with respect to ammo count in it
    local i
    for j=stack.count,1,-1 do
        local p=surf.find_non_colliding_position("item-on-ground",pos,10,0.5);
        i=surf.create_entity{name='item-on-ground',position=p,stack={name=stack.name}}
    end
    i.stack.ammo=stack.ammo
end

script.on_event({defines.events.on_entity_died,defines.events.on_robot_pre_mined_item,defines.events.on_preplayer_mined_item,},
function(event)--handle locomotive removal and train splitting
    local ent=event.entity
    --standard handling
    if ent.type=='locomotive' and global.trains[ent.backer_name] then
        global.trains[ent.backer_name].character.destroy()
        if global.trains[ent.backer_name].companion.valid then
            global.trains[ent.backer_name].companion.destroy()
        end
        global.trains[ent.backer_name]=nil
        --handling of reloading train
        if #global.loading>0  then
            local loading=global.loading
            for i=1,#loading do
                if loading[i].locomotive==ent then
                    local l=loading[i]
                    l.chest.surface.create_entity{
                        position=l.chest.position,
                        force=l.chest.force,
                        name="guntrain-closed-chest",
                        }
                    l.chest.destroy()
                    table.remove(loading,i)
                    local ticker=global.ticker
                    ticker.next=(ticker.next<#loading) and ticker.next or ticker.next-#locomotives
                end
            end
        end
    end
end)
