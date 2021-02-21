name = "Loot Multiplier"
description = "Customize the number of resources you get."
author = "minitte"
version = "1.0"
forumthread = ""

dst_compatible = true

client_only_mod = false
all_clients_require_mod = false
server_only_mod = true

--icon_atlas = "modicon.xml"
--icon = "modicon.tex"

api_version = 10

local optionsArray = {
	{ description = "1 DEFAULT", data = 1 },
	{ description = "2", data = 2 },
	{ description = "3", data = 3 },
	{ description = "4", data = 4 },
	{ description = "5", data = 5 },
}

configuration_options = {
	--
	-- GRASS
	--
	{
		name = "CONFIG_GRASS_MULTIPLIER",
		label = "Grass",
		hover = "The amount of cut grass",
		options = optionsArray,
		default = 1
	},
	--
	-- TWIGS
	--
	{
		name = "CONFIG_SAPLING_MULTIPLIER",
		label = "Sapling",
		hover = "The amount of twigs",
		options = optionsArray,
		default = 1
	},
	{
		name = "CONFIG_SPIKY_BUSH_MULTIPLIER",
		label = "Spiky Bush",
		hover = "The amount of twigs",
		options = optionsArray,
		default = 1
	},
	--
	-- ROCKS
	--
	{
		name = "CONFIG_ROCK1_MULTIPLIER",
		label = "Nitre Rock",
		hover = "The loot multiplier for nitre rocks",
		options = optionsArray,
		default = 1
	},
	{
		name = "CONFIG_ROCK2_MULTIPLIER",
		label = "Gold Rock",
		hover = "The loot multiplier for gold rocks",
		options = optionsArray,
		default = 1
	},
	{
		name = "CONFIG_ROCK_FLINTLESS_MULTIPLIER",
		label = "Desert Rock",
		hover = "The loot multiplier for desrt rocks. (The one with no flint)",
		options = optionsArray,
		default = 1
	},
	{
		name = "CONFIG_ROCK_MOON_MULTIPLIER",
		label = "Moon Rock",
		hover = "The loot multiplier for moon rocks.",
		options = optionsArray,
		default = 1
	},
	{
		name = "CONFIG_ROCK_MOON_SHELL_MULTIPLIER",
		label = "Moon Rock",
		hover = "The loot multiplier for moon rocks with the moon orb.",
		options = optionsArray,
		default = 1
	},
	{
		name = "CONFIG_ROCK_MOON_GLASS_MULTIPLIER",
		label = "Glass Moon Rock",
		hover = "The loot multiplier for moon rocks with glass.",
		options = optionsArray,
		default = 1
	},
	{
		name = "CONFIG_PETRIFIED_TREE_MULTIPLIER",
		label = "Petrified Trees",
		hover = "The loot multiplier for petrified trees.",
		options = optionsArray,
		default = 1
	},
}