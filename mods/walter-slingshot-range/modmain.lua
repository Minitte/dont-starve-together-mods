
range = GetModConfigData("CUSTOM_SLINGSHOT_RANGE")

AddPrefabPostInit('slingshot', function(inst)
	if inst.components then
		if inst.components.weapon then
			inst.components.weapon:SetRange(range, range + 4)
		end
	end
end)