Citizen.CreateThread(function()
    while true do
        Wait(0)

        local ped = PlayerPedId()

        -- disable ragdoll
        SetPedCanRagdoll(ped, false)

        if IsPedFalling(ped) or IsPedInParachuteFreeFall(ped) then
            local currentHealth = GetEntityHealth(ped)
            if currentHealth < 200 then
                SetEntityHealth(ped, 200)
            end
        end

        if IsPedOnFoot(ped) and not IsPedFalling(ped) then
            local health = GetEntityHealth(ped)
            if health < 200 then
                SetEntityHealth(ped, 200)
            end
        end
    end
end)
