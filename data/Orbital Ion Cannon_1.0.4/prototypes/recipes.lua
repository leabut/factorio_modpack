data:extend({
 {
  type = "recipe",
  name = "orbital-ion-cannon",
  energy_required = 60,
  enabled = false,
  ingredients =
  {
   {"low-density-structure", 100},
   {"solar-panel", 100},
   {"basic-accumulator", 200},
   {"radar", 10},
   {"processing-unit", 200},
   {"electric-engine-unit", 10},
   {"laser-turret", 25},
   {"rocket-fuel", 50}
  },
  result = "orbital-ion-cannon"
 },
 {
  type = "recipe",
  name = "ion-cannon-targeter",
  energy_required = 0.5,
  enabled = false,
  category = "crafting",
  ingredients =
  {
   {"processing-unit", 1},
   {"plastic-bar", 2},
   {"battery", 1}
  },
  result= "ion-cannon-targeter"
 }
})

if data.raw["item"]["bob-laser-turret-5"] and enableBobUpdates then
	data.raw["recipe"]["orbital-ion-cannon"].ingredients = {
	   {"low-density-structure", 100},
	   {"solar-panel", 100},
	   {"basic-accumulator", 200},
	   {"radar", 10},
	   {"processing-unit", 200},
	   {"electric-engine-unit", 10},
	   {"bob-laser-turret-5", 25},
	   {"rocket-fuel", 50}
	}
end

if data.raw["item"]["fast-accumulator-3"] and data.raw["item"]["solar-panel-large-3"] and enableBobUpdates then
	data.raw["recipe"]["orbital-ion-cannon"].ingredients = {
	   {"low-density-structure", 100},
	   {"solar-panel-large-3", 100},
	   {"fast-accumulator-3", 200},
	   {"radar", 10},
	   {"processing-unit", 200},
	   {"electric-engine-unit", 10},
	   {"laser-turret", 25},
	   {"rocket-fuel", 50}
	}
end

if data.raw["item"]["fast-accumulator-3"] and data.raw["item"]["solar-panel-large-3"] and data.raw["item"]["bob-laser-turret-5"] and enableBobUpdates then
	data.raw["recipe"]["orbital-ion-cannon"].ingredients = {
	   {"low-density-structure", 100},
	   {"solar-panel-large-3", 100},
	   {"fast-accumulator-3", 200},
	   {"radar", 10},
	   {"processing-unit", 200},
	   {"electric-engine-unit", 10},
	   {"bob-laser-turret-5", 25},
	   {"rocket-fuel", 50}
	}
end