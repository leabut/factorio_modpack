require "util"
local shared_info={}
local function gen(ammo,tint)
--generates equipment for guntrain
    local res={};
    res[1]={--combat equipment for train
        type = "active-defense-equipment",
        name='guntrain-gun-#'..ammo.name..'#',
        --sprite ={filename="__core__/graphics/empty.png",
        sprite ={filename="__base__/graphics/icons/shotgun-shell.png",
            width = 1,height = 1,priority = "medium"},
        shape ={width = 1,height = 1,type = "full"},
        energy_source ={type = "electric", usage_priority = "secondary-input",
            buffer_capacity = ''..((1+ammo.stack_size)*ammo.magazine_size).. "J"},
        attack_parameters ={type = "projectile",ammo_category = "shotgun-shell",
            sound ={{filename = "__base__/sound/pump-shotgun.ogg",volume = 0.5}},
            damage_modifier = 1.2,projectile_center = {0, 0},
            projectile_creation_distance = 1,
            range = 20,
            cooldown = 30,
            ammo_type =ammo.ammo_type,},
        automatic = true,
        }
    res[1].attack_parameters.ammo_type.energy_consumption = "1J"--this is needed because other amm_type info is copied from outside prototypes in the above code
    res[2]={--dummy item for combat equipment
        name = "guntrain-gun-#"..ammo.name..'#',
        type = "item",
        icon = "__base__/graphics/icons/shotgun-shell.png",
        placed_as_equipment_result = "guntrain-gun-#"..ammo.name..'#',
        flags = {"goes-to-main-inventory"},
        subgroup = "equipment",
        order = "d[active-defense]-a[basic-laser-defense-equipment]",
        stack_size = 1
        }
    res[3]={--creates flying robot that indicates the installation of equipment
        type = "combat-robot",
        name = "guntrain-companion-#"..ammo.name..'#',
        icon = "__base__/graphics/icons/defender.png",
        flags = {"placeable-off-grid", "not-on-map", "not-repairable",},
        subgroup="capsule",order="e-a-a",max_health = 1,
        collision_box = {{0, 0}, {0, 0}},
        selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        distance_per_frame = 0.13,
        time_to_live = 60 * 60 * 60 * 24 * 365, --this is dirty fix to absence of permanent combat robots or follow orders for units
        follows_player = true, friction = 0.01, range_from_player = 3.0,
        speed = .03,
        attack_parameters={type = "projectile",cooldown = 300,range = 0,ammo_type={category = "bullet",}},
        idle ={layers ={
            {filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
              priority = "high",line_length = 32,width = 45,height = 39,y = 39,
              frame_count = 1,direction_count = 32,shift = {0.078125, -0.546875},tint=tint,
            },
            {filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
              priority = "high",line_length = 32,width = 27,height = 21,y = 21, frame_count = 1,
              direction_count = 32,shift = {0.078125, -0.734375},apply_runtime_tint = false
            },
          }
        },
        shadow_idle =
        {filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
          priority = "high",line_length = 32,width = 48,height = 32,frame_count = 1,
          direction_count = 32,shift = {0.78125, 0}
        },
        in_motion =
        {layers ={
            {filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
              priority = "high",line_length = 32,width = 45,height = 39,
              frame_count = 1,direction_count = 32,shift = {0.078125, -0.546875},tint=tint},
            {filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
              priority = "high",line_length = 32,width = 27,height = 21,frame_count = 1,
              direction_count = 32,shift = {0.078125, -0.734375},apply_runtime_tint = false}
                }
        },
        shadow_in_motion =
            {filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
              priority = "high",line_length = 32,width = 48,
              height = 32,frame_count = 1,direction_count = 32,shift = {0.78125, 0}}  
        }
    return res
end
local function make_shared(ammo_category,gun,prereqs,icon)--creates things related to multiple instances of items
    --uses the ammo-category name and a name of a gun to use in recipe, 
    --prereqs is a table of prereq techs. The default guntrain research is allways added to it.
    --icon is filename of icon that will be used wherever needed
    --result is a table with: recipe,tech, attachment equipment and dummy entity for this category
    table.insert(prereqs,"guntrain-base-tech")
    local res={}
    res[1]={--attachment capsule
        type = "capsule",
        name = "guntrain-attacher-#".. ammo_category .."#",
        icon = icon,
        flags = {"goes-to-quickbar"},
        capsule_action =
            {type = "throw",
            attack_parameters =
                {type = "projectile",
                ammo_category = "capsule",
                cooldown = 60,
                range = 15,
                ammo_type =
                    {category = "capsule",
                    target_type = "entity",
                    action = 
                        {type = "direct",
                        action_delivery =
                            {type = "instant",
                            target_effects =
                                {type = "create-entity",entity_name = "guntrain-dummy-#".. ammo_category ..'#',trigger_created_entity="true"
                                },
                            }
                        }
                    }
                }
            },
        subgroup = "capsule",
        order = "b[guntrain]",
        stack_size = 5,
        }
    res[2]={--shared dummy entity for detection of capsule use
        type = "explosion",
        name = "guntrain-dummy-#".. ammo_category ..'#',
        flags = {"not-on-map"},
        animations =
        {
            {filename = "__GunTrains__/pic/empty_icon.png",
            priority = "very-low", width = 1, height = 1,direction_count = 18,
            frame_count = 1,}
        },
        rotate = false,
        light = {intensity = 0, size = 10},
        smoke = "smoke-fast",
        smoke_count = 1,
        smoke_slow_down_factor = 1
    }
    res[3]={--a recipe for attacher creation
        type='recipe',name="guntrain-attacher-#".. ammo_category .."#",
        enabled=false,result="guntrain-attacher-#".. ammo_category .."#",
        ingredients=
        {{"iron-gear-wheel", 10},{gun,1},
        {"electronic-circuit",8},{"advanced-circuit",2},},
        }
    res[4]={--a tech to enable guns of this ammo category 
        type = "technology",name = "guntrain-tech-#".. ammo_category ..'#',
        icon = icon,
        effects ={
            {type = "unlock-recipe",recipe = "guntrain-attacher-#".. ammo_category .."#"},
        },
        prerequisites = prereqs,
        unit ={
            count = 20,
            ingredients ={
                {"science-pack-1", 2},{"science-pack-2", 2},{"science-pack-3", 1}
            },
            time = 30
        },
        order = "e-a-c",
    }
    return res
end

--make shotgun equipment
local icon = "__GunTrains__/pic/gun_attacher.png"
for name,a in pairs(data.raw.ammo) do
    local tint
    if a.name=="shotgun-shell" then
        tint={r=1, g=1, b=51/255, a=1}
    elseif a.name=='piercing-shotgun-shell' then
        tint={r=151/255,g=51/255,b=1,a=1}
    elseif a.ammo_type.category=='shotgun-shell' then
        tint={r=1,g=51/255,b=153/255,a=1};
    else
        tint=nil
    end
    if tint then data:extend(gen(a,tint)) end
end
data:extend(make_shared('shotgun-shell',"combat-shotgun",{},icon))

--make poison capsule thrower
tint={r=51/255, g=255/255, b=51/255, a=1} 
icon = "__GunTrains__/pic/capsule_attacher.png";
local res=gen(
    {name='poison-capsule',
    magazine_size=1,
    ammo_type=data.raw.capsule['poison-capsule'].capsule_action.attack_parameters.ammo_type,
    stack_size=data.raw.capsule['poison-capsule'].stack_size
    },
    tint);
data:extend(make_shared(data.raw.capsule['poison-capsule'].capsule_action.attack_parameters.ammo_category,"smart-inserter",{},icon))
res[1].attack_parameters.range=30
res[1].attack_parameters.sound ={{filename = "__base__/sound/fight/rocket-launcher.ogg",volume = 0.7}}
data:extend(res)

