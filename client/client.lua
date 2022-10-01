---------------- NPC ---------------------
function LoadModel(model)
    local model = GetHashKey(model)
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(10)
    end
end

Citizen.CreateThread(function()
    for i, npc in pairs(Config.NPCS) do
        LoadModel(npc.model)
        local npc_coords = npc.coords
        local npc_ped = CreatePed(npc.model, npc_coords, false, true, true, true)

        if npc.outfit then
            SetPedOutfitPreset(npc_ped, npc.outfit)
        else
            Citizen.InvokeNative(0x283978A15512B2FE, npc_ped, true)
        end

        if npc.weapon then 
            GiveWeaponToPed_2(npc_ped, GetHashKey(npc.weapon), 10, true, true, 1, false, 0.5, 1.0, 1.0, true, 0, 0)
            SetCurrentPedWeapon(npc_ped, GetHashKey(npc.weapon), true, 0, false, false)
        end

        if npc.scenario then
            TaskStartScenarioInPlace(npc_ped, GetHashKey(npc.scenario), 0, true, false, false, false)
        end

        SetEntityCanBeDamaged(npc_ped, false)
        SetEntityInvincible(npc_ped, true)
        FreezeEntityPosition(npc_ped, true)
        SetBlockingOfNonTemporaryEvents(npc_ped, true)
        SetModelAsNoLongerNeeded(npc.model)
        SetEntityAsMissionEntity(npc_ped, true, true)

        Config.NPCS[i].NPC = npc_ped
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    for i, v in pairs(Config.NPCS) do
        if v.NPC then
            DeleteEntity(v.NPC)
            DeletePed(v.NPC)
        end
    end
end)