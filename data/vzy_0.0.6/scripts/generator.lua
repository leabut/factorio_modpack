function vzyGenerateThing(simpleThing, originalThing, level)
	newCopy = table.deepcopy(originalThing)
	if simpleThing.nameAll then
		newCopy.name = simpleThing.nameAll
		if newCopy.result then
			newCopy.result = simpleThing.nameAll
		end
		if newCopy.place_result then
			newCopy.place_result = simpleThing.nameAll
		end
		if newCopy.minable then
			if newCopy.minable.result then
				newCopy.minable.result = simpleThing.nameAll
			end
		end
		--clean up after ourselves.
		simpleThing.nameAll = nil
	end
	vzyGenerateThingCopyTo(simpleThing, newCopy, level)
	data.raw[newCopy.type][newCopy.name] = newCopy
end
function vzyGenerateThingCopyTo(simpleThing, newCopy, level)
	for key, value in pairs(simpleThing) do
		if type(value) == "function" then
			newCopy[key] = value(level)
		else
			if type(value) == "table" then
				newCopy[key] = {}
				vzyGenerateThingCopyTo(value, newCopy[key], level)
			else
				newCopy[key] = value
			end
		end
	end
end
