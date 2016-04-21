--Config
	--Tweaking Stack Sizes
		--to turn this part on/off
		doStackSizeModding = true
		--Multiplied with the current tack amount of items.
		itemStackMod = 10
		--The max Stack size, X <= 0 for no checking
		itemStackMax = 0
		--The minimum amount of Items in the stack (incase StackMod < 1, decreasing stack sizes)
		itemStackMin = 1
	--Tweaking Default Request Amounts
		--to turn this part on/off
		doRequestModding = true
		itemRequestMod = 1
		--Set to true to just modify it from the default amount, Set to false to Set to the Mod amount
		itemRequestModIsMultiplier = false
		itemRequestMin = 0
		-- X < 0 for no checking
		itemRequestMax = -1
--is Called with each item of the raw Data.
function vzyFnTweakItems(item)
	if doStackSizeModding then
		modStack(item)
	end
	if doRequestModding then
		modRequest(item)
	end
end


function modStack(item)
	item.stack_size = reValueStack(item.stack_size * itemStackMod)
end
function reValueStack(amount)
	if itemStackMax > 0 then
		if amount > itemStackMax then
			amount = itemStackMax
		end
	end
	if amount < itemStackMin then
		amount = itemStackMin
	end
	return amount
end


function modRequestM(item)
	modRequestCleanItem(item)
	item.default_request_amount = reValueRequest(itemRequestMod * item.default_request_amount)
end
function modRequestS(item)
	amount = reValueRequest(itemRequestMod)
	item.default_request_amount = amount
end
function modRequestCleanItem(item)
	item.default_request_amount = item.stack_size
end
function reValueRequest(amount)
	if itemRequestMax >= 0 then
		if amount > itemRequestMax then
			amount = itemRequestMax
		end
	end
	if amount < itemRequestMin then
		amount = itemRequestMin
	end
	return amount
end


function modRequest(item)
	if itemRequestModIsMultiplier then
		modRequestM(item)
	else
		modRequestS(item)
	end
end



--This will call the Tweak Items method for each item in data.raw
print("Starting to Work Items with "..type(_G.vzyGetItems)..", calling a "..type(vzyFnTweakItems)..".")
_G.vzyGetItems(vzyFnTweakItems)
print("Done Working Items.")
