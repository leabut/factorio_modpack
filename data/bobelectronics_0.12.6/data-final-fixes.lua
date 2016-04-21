bobmods.lib.replace_item_all_recipes("basic-electronic-circuit-board", "electronic-circuit")
bobmods.lib.replace_item_all_recipes("electronic-circuit-board", "advanced-circuit")
bobmods.lib.replace_item_all_recipes("electronic-processing-board", "processing-unit")
bobmods.lib.replace_item_all_recipes("electronic-processing-board-2", "advanced-processing-unit")

if data.raw.item["basic-electronic-circuit-board"] then
  data.raw.item["basic-electronic-circuit-board"] = nil
end

if data.raw.item["electronic-circuit-board"] then
  data.raw.item["electronic-circuit-board"] = nil
end

if data.raw.item["electronic-processing-board"] then
  data.raw.item["electronic-processing-board"] = nil
end

if data.raw.item["electronic-processing-board-2"] then
  data.raw.item["electronic-processing-board-2"] = nil
end
