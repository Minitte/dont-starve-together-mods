return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 5,
  height = 5,
  tilewidth = 64,
  tileheight = 64,
  properties = {},
  tilesets = {
    {
      name = "ground",
      firstgid = 1,
      filename = "C:/Program Files (x86)/Steam/steamapps/common/Don't Starve Mod Tools/mod_tools/Tiled/dont_starve/ground.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "C:/Program Files (x86)/Steam/steamapps/common/Don't Starve Mod Tools/mod_tools/Tiled/dont_starve/tiles.png",
      imagewidth = 512,
      imageheight = 384,
      properties = {},
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "BG_TILES",
      x = 0,
      y = 0,
      width = 5,
      height = 5,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0,
        0, 22, 22, 0, 22,
        0, 22, 22, 22, 0,
        0, 22, 0, 22, 22,
        22, 0, 22, 0, 0
      }
    },
    {
      type = "objectgroup",
      name = "FG_OBJECTS",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          name = "bishop_nightmare",
          type = "bishop_nightmare",
          shape = "rectangle",
          x = 162,
          y = 183,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "flower_cave",
          type = "flower_cave",
          shape = "rectangle",
          x = 203,
          y = 249,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "flower_cave",
          type = "flower_cave",
          shape = "rectangle",
          x = 291,
          y = 134,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "flower_cave",
          type = "flower_cave",
          shape = "rectangle",
          x = 106,
          y = 94,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
