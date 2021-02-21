superDiet = {
	FOODTYPE.MEAT,
	FOODTYPE.VEGGIE,
	FOODTYPE.INSECT,
	FOODTYPE.SEEDS,
	FOODTYPE.GENERIC,
	FOODTYPE.GOODIES,
	FOODTYPE.BERRY,
	FOODTYPE.RAW,
	FOODTYPE.ROUGHAGE,
	FOODTYPE.ELEMENTAL
}

AddPrefabPostInit('crow', function(inst)
	if inst.components and inst.components.eater then
		inst.components.eater:SetDiet(superDiet, { FOODTYPE.SEEDS })
	end
end)

AddPrefabPostInit('robin', function(inst)
	if inst.components and inst.components.eater then
		inst.components.eater:SetDiet(superDiet, { FOODTYPE.SEEDS })
	end
end)

AddPrefabPostInit('robin_winter', function(inst)
	if inst.components and inst.components.eater then
		inst.components.eater:SetDiet(superDiet, { FOODTYPE.SEEDS })
	end
end)

AddPrefabPostInit('puffin', function(inst)
	if inst.components and inst.components.eater then
		inst.components.eater:SetDiet(superDiet, { FOODTYPE.SEEDS })
	end
end)

AddPrefabPostInit('canary', function(inst)
	if inst.components and inst.components.eater then
		inst.components.eater:SetDiet(superDiet, { FOODTYPE.SEEDS })
	end
end)