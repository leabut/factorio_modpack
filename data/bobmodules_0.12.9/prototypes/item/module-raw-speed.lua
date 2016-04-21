--[[Raw Speed Modules]]--

data:extend(
{
  {
    type = "module",
    name = "raw-speed-module-1",
    icon = "__bobmodules__/graphics/icons/cyan-module-1.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-speed-module",
    order = "m-rs-1",
    stack_size = 100,
    default_request_amount = 10,
    effect = { speed = {bonus = bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
  },

  {
    type = "module",
    name = "raw-speed-module-2",
    icon = "__bobmodules__/graphics/icons/cyan-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-speed-module",
    order = "m-rs-2",
    stack_size = 100,
    default_request_amount = 10,
    effect = { speed = {bonus = 2 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
  },

  {
    type = "module",
    name = "raw-speed-module-3",
    icon = "__bobmodules__/graphics/icons/cyan-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-speed-module",
    order = "m-rs-3",
    stack_size = 100,
    default_request_amount = 10,
    effect = { speed = {bonus = 3 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
  },

  {
    type = "module",
    name = "raw-speed-module-4",
    icon = "__bobmodules__/graphics/icons/cyan-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-speed-module",
    order = "m-rs-4",
    stack_size = 100,
    default_request_amount = 10,
    effect = { speed = {bonus = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
  },

  {
    type = "module",
    name = "raw-speed-module-5",
    icon = "__bobmodules__/graphics/icons/cyan-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-speed-module",
    order = "m-rs-5",
    stack_size = 100,
    default_request_amount = 10,
    effect = { speed = {bonus = 5 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
  },

  {
    type = "module",
    name = "raw-speed-module-6",
    icon = "__bobmodules__/graphics/icons/cyan-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-speed-module",
    order = "m-rs-6",
    stack_size = 100,
    default_request_amount = 10,
    effect = { speed = {bonus = 6 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
  },

  {
    type = "module",
    name = "raw-speed-module-7",
    icon = "__bobmodules__/graphics/icons/cyan-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-speed-module",
    order = "m-rs-7",
    stack_size = 100,
    default_request_amount = 10,
    effect = { speed = {bonus = 7 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
  },

  {
    type = "module",
    name = "raw-speed-module-8",
    icon = "__bobmodules__/graphics/icons/cyan-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-speed-module",
    order = "m-rs-8",
    stack_size = 100,
    default_request_amount = 10,
    effect = { speed = {bonus = 8 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
  },
}
)

