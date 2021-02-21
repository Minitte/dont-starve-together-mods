-- Register prefabs
PrefabFiles = {
    "exchangetoken",
}

-- load assets
Assets = {
	Asset( "IMAGE", "images/recipetabicons/toexchangecoin.tex" ),
    Asset( "ATLAS", "images/recipetabicons/toexchangecoin.xml" ),
    
    Asset( "ATLAS", "images/recipetabicons/fromexchangecoin.xml" ),
    Asset( "IMAGE", "images/recipetabicons/fromexchangecoin.tex" ),
    
    Asset("ATLAS", "images/inventoryimages/exchangetoken.xml"),
    Asset("IMAGE", "images/inventoryimages/exchangetoken.tex"),
}

local TECH = GLOBAL.TECH 

GLOBAL.STRINGS.NAMES.EXCHANGETOKEN = "Exchange Token"
GLOBAL.STRINGS.RECIPE_DESC.EXCHANGETOKEN = "Token for resources!"

-- Register Crafting Tabs
local toTokenTab = AddRecipeTab("To Tokens", 200, "images/recipetabicons/toexchangecoin.xml", "toexchangecoin.tex")
local fromTokenTab = AddRecipeTab("From Tokens", 200, "images/recipetabicons/fromexchangecoin.xml", "fromexchangecoin.tex")

-- Recipes for To Tokens

local function AddToTokenRecipe(uniqueName, matName, tokenAmount)
    AddRecipe(uniqueName, {Ingredient(matName, 6)}, toTokenTab, TECH.NONE, nil, nil, nil, tokenAmount, nil, "images/inventoryimages/exchangetoken.xml", nil, nil, "exchangetoken")
end

AddToTokenRecipe("exchangetoken-cutgrass", "cutgrass", 4)
AddToTokenRecipe("exchangetoken-twigs", "twigs", 4)

AddToTokenRecipe("exchangetoken-log", "log", 3)
AddToTokenRecipe("exchangetoken-rocks", "rocks", 3)

AddToTokenRecipe("exchangetoken-flint", "flint", 2)
AddToTokenRecipe("exchangetoken-silk", "silk", 2)
--AddToTokenRecipe("exchangetoken-pinecone", "pinecone", 2)
--AddToTokenRecipe("exchangetoken-twiggy_nut", "twiggy_nut", 2)

--AddToTokenRecipe("exchangetoken-stinger", "stinger", 1)

-- Recipes for From Tokens

local tokenIngredent = Ingredient("exchangetoken", 6, "images/inventoryimages/exchangetoken.xml")

local function AddFromTokenRecipe(uniqueName, outputName, ouputAmount)
    AddRecipe(uniqueName, {tokenIngredent}, fromTokenTab, TECH.NONE, nil, nil, nil, ouputAmount, nil, nil, nil, nil, outputName)
end

AddFromTokenRecipe("cutgrass-exchangetoken", "cutgrass", 6)
AddFromTokenRecipe("twigs-exchangetoken", "twigs", 6)
AddFromTokenRecipe("rocks-exchangetoken", "rocks", 6)
AddFromTokenRecipe("log-exchangetoken", "log", 6)
AddFromTokenRecipe("flint-exchangetoken", "flint", 6)
AddFromTokenRecipe("silk-exchangetoken", "silk", 6)