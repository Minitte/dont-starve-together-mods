-- Adds qty post init changer
local function AdjustPickableQty(prefabName, amt)
	-- Add post init for the prefab
	AddPrefabPostInit(prefabName, function(inst)
		if inst.components and inst.components.pickable then
			inst.components.pickable.numtoharvest = inst.components.pickable.numtoharvest * amt
		end
	end)
end

local multipliedTables = {}

-- Duplicates items in a loot table
-- Use MultiplyPrefabLootTable() instead because loot tables may not be loaded yet
local function MultiplyLootTable(tableName, multiplier)

	if multipliedTables[tableName] then
		return
	end

	-- loot tables
	lootTable = GLOBAL.LootTables[tableName]
	
	if lootTable == nil then
		print("table " .. tableName .. " is nil")
		return
	end
	
	numLoot = table.maxn(lootTable)
	
	for i = 2, multiplier, 1 do
		-- duplicate table items by multiplier times
		for j = 1, numLoot, 1 do
			table.insert(lootTable, lootTable[j])
		end
	end
	
	-- flag table as multiplied
	multipliedTables[tableName] = 1
	
end

-- Multiplies loot table items that a prefab uses
local function MultiplyPrefabLootTable(prefabName, multiplier)

	AddPrefabPostInit(prefabName, function(inst)
		if inst.components and inst.components.lootdropper then
			lootName = inst.components.lootdropper.chanceloottable
			MultiplyLootTable(lootName, multiplier)
		end
	end)
end

-- Cut grass sources
AdjustPickableQty("grass", GetModConfigData("CONFIG_GRASS_MULTIPLIER"))

-- Twig sources
AdjustPickableQty("sapling", GetModConfigData("CONFIG_SAPLING_MULTIPLIER"))
AdjustPickableQty("marsh_bush", GetModConfigData("CONFIG_SPIKY_BUSH_MULTIPLIER"))

-- Rocks Rocks Rocks Rocks
MultiplyPrefabLootTable("rock1", GetModConfigData("CONFIG_ROCK1_MULTIPLIER")) -- nitre rocks
MultiplyPrefabLootTable("rock2", GetModConfigData("CONFIG_ROCK2_MULTIPLIER")) -- gold rocks

MultiplyPrefabLootTable("rock_flintless", GetModConfigData("CONFIG_ROCK_FLINTLESS_MULTIPLIER")) -- desert rocks
MultiplyPrefabLootTable("rock_flintless_med", GetModConfigData("CONFIG_ROCK_FLINTLESS_MULTIPLIER")) -- desert rocks
MultiplyPrefabLootTable("rock_flintless_low", GetModConfigData("CONFIG_ROCK_FLINTLESS_MULTIPLIER")) -- desert rocks

MultiplyPrefabLootTable("rock_moon", GetModConfigData("CONFIG_ROCK_MOON_MULTIPLIER")) -- normal moon rock
MultiplyPrefabLootTable("rock_moon_shell", GetModConfigData("CONFIG_ROCK_MOON_SHELL_MULTIPLIER")) -- moon rock with the orb
MultiplyPrefabLootTable("rock_moon_glass", GetModConfigData("CONFIG_ROCK_MOON_GLASS_MULTIPLIER")) -- glass moon rock

-- Petrified trees
MultiplyPrefabLootTable("rock_petrified_tree", GetModConfigData("CONFIG_PETRIFIED_TREE_MULTIPLIER"))
MultiplyPrefabLootTable("rock_petrified_tree_tall", GetModConfigData("CONFIG_PETRIFIED_TREE_MULTIPLIER"))
MultiplyPrefabLootTable("rock_petrified_tree_short", GetModConfigData("CONFIG_PETRIFIED_TREE_MULTIPLIER"))
MultiplyPrefabLootTable("rock_petrified_tree_old", GetModConfigData("CONFIG_PETRIFIED_TREE_MULTIPLIER"))

-- 