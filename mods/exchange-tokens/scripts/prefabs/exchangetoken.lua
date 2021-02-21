local assets =
{
    Asset("ANIM", "anim/exchangetoken.zip"),

    Asset("ATLAS", "images/inventoryimages/exchangetoken.xml"),
    Asset("IMAGE", "images/inventoryimages/exchangetoken.tex"),
}

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("exchangetoken")
    inst.AnimState:SetBuild("exchangetoken")
    inst.AnimState:PlayAnimation("idle")

    MakeInventoryFloatable(inst, "med", 0.05, 0.68)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "exchangetoken"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/exchangetoken.xml"

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_TINYITEM

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("exchangetoken", fn, assets)
