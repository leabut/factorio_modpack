data.raw.item["logistic-robot"].order = "a[robot]-a[logistic-robot-1]"
data.raw.item["construction-robot"].order = "a[robot]-b[construction-robot-1]"
data.raw.item["flying-robot-frame"].order = "j[flying-robot-frame-1]"

data:extend(
{
  {
    type = "item",
    name = "flying-robot-frame-2",
    icon = "__boblogistics__/graphics/icons/flying-robot-frame-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-logistic-robots",
    order = "j[flying-robot-frame-2]",
    stack_size = 50
  },
  {
    type = "item",
    name = "flying-robot-frame-3",
    icon = "__boblogistics__/graphics/icons/flying-robot-frame-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-logistic-robots",
    order = "j[flying-robot-frame-3]",
    stack_size = 50
  },
  {
    type = "item",
    name = "flying-robot-frame-4",
    icon = "__boblogistics__/graphics/icons/flying-robot-frame-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-logistic-robots",
    order = "j[flying-robot-frame-4]",
    stack_size = 50
  },
}
)

if data.raw["item-subgroup"]["bob-intermediates"] then
  data.raw.item["flying-robot-frame-2"].subgroup = "bob-intermediates"
  data.raw.item["flying-robot-frame-3"].subgroup = "bob-intermediates"
  data.raw.item["flying-robot-frame-4"].subgroup = "bob-intermediates"
end


data:extend(
{
  {
    type = "item",
    name = "bob-logistic-robot-2",
    icon = "__boblogistics__/graphics/icons/logistic-robot-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-a[logistic-robot-2]",
    place_result = "bob-logistic-robot-2",
    stack_size = 50
  },

  {
    type = "item",
    name = "bob-logistic-robot-3",
    icon = "__boblogistics__/graphics/icons/logistic-robot-3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-a[logistic-robot-3]",
    place_result = "bob-logistic-robot-3",
    stack_size = 50
  },

  {
    type = "item",
    name = "bob-logistic-robot-4",
    icon = "__boblogistics__/graphics/icons/logistic-robot-4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-a[logistic-robot-4]",
    place_result = "bob-logistic-robot-4",
    stack_size = 50
  },


  {
    type = "item",
    name = "bob-construction-robot-2",
    icon = "__boblogistics__/graphics/icons/construction-robot-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-b[construction-robot-2]",
    place_result = "bob-construction-robot-2",
    stack_size = 50
  },

  {
    type = "item",
    name = "bob-construction-robot-3",
    icon = "__boblogistics__/graphics/icons/construction-robot-3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-b[construction-robot-3]",
    place_result = "bob-construction-robot-3",
    stack_size = 50
  },

  {
    type = "item",
    name = "bob-construction-robot-4",
    icon = "__boblogistics__/graphics/icons/construction-robot-4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-b[construction-robot-4]",
    place_result = "bob-construction-robot-4",
    stack_size = 50
  },
}
)





