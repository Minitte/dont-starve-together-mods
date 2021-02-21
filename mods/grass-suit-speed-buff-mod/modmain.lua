AddPrefabPostInit('armorgrass', function(inst)
	if inst.components and inst.components.equippable then
		inst.components.equippable.walkspeedmult = 1.08
	end
end)