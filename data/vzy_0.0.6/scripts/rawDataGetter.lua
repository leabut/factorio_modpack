function forItems(callback)
	if callback == nil then
		return
	end
	forTable(callback,data.raw.item)
end
function forTechnologies(callback)
	if callback == nil then
		return
	end
	forTable(callback,data.raw.technology)
end
function forResources(callback)
	if callback == nil then
		return
	end
	forTable(callback,data.raw.resource)
end
function forRecipes(callback)
	if callback == nil then
		return
	end
	forTable(callback,data.raw.recipe)
end
function forFluids(callback)
	if callback == nil then
		return
	end
	forTable(callback,data.raw.fluid)
end
function forTable(callback, table)
	if callback == nil then
		return
	end
	for key,value in pairs(table) do
		callback(value)
	end
end
