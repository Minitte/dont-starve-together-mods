name = "Walter Slingshot Range"
description = "Adjust the range of Walter's slingshot."
author = "minitte"
version = "1.0"
forumthread = ""

dst_compatible = true

client_only_mod = false
all_clients_require_mod = false
server_only_mod = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

configuration_options = {
	{
		name = "CUSTOM_SLINGSHOT_RANGE",
		label = "Slingshot Range",
		hover = "The range of Walter's slingshot",
		options = {
			{
				description = "1",
				data = 1
			},
			{
				description = "2",
				data = 2
			},
			{
				description = "4",
				data = 4
			},
			{
				description = "6",
				data = 6
			},
			{
				description = "8 Default",
				data = 8
			},
			{
				description = "10",
				data = 10
			},
			{
				description = "12",
				data = 12
			},
			{
				description = "14",
				data = 14
			},
			{
				description = "16",
				data = 16
			},
			{
				description = "18",
				data = 18
			},
			{
				description = "20",
				data = 20
			},
			{
				description = "22",
				data = 22
			},
			{
				description = "24",
				data = 24
			},
			{
				description = "26",
				data = 26
			},
			{
				description = "28",
				data = 28
			},
			{
				description = "30",
				data = 30
			},
			{
				description = "35",
				data = 35
			},
			{
				description = "40",
				data = 40
			},
			{
				description = "45",
				data = 45
			},
			{
				description = "50",
				data = 50
			},
			{
				description = "100",
				data = 100
			},
		},
		default = 8
	},
}