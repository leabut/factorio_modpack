data.raw.ammo["basic-bullet-magazine"].ammo_type.action[1].action_delivery[1].target_effects = {
  {
    type = "create-entity",
    entity_name = "explosion-gunshot"
  },
  {
    type = "damage",
    damage = { amount = 4 , type = "physical"}
  },
}

data.raw.ammo["piercing-bullet-magazine"].ammo_type.action.action_delivery.target_effects = {
  {
    type = "create-entity",
    entity_name = "explosion-gunshot"
  },
  {
    type = "damage",
    damage = { amount = 4 , type = "physical"}
  },
  {
    type = "damage",
    damage = { amount = 2 , type = "bob-pierce"}
  }
}


data.raw.projectile["piercing-shotgun-pellet"].action.action_delivery.target_effects = {
  {
    type = "damage", 
    damage = {amount = 4, type = "physical"}
  },
  {
    type = "damage", 
    damage = { amount = 2 , type = "bob-pierce"}
  }
}


data.raw["flame-thrower-explosion"]["flame-thrower-explosion"].damage = {amount = 1, type = "fire"}
