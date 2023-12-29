CreateThread(function()
    while true do
        local Player = PlayerPedId()
        local WeaponHash = GetSelectedPedWeapon(Player)

        local ammo = 0

        if(IsPedArmed(Player, 4)) then _, ammo = GetAmmoInClip(Player, WeaponHash) end

        SendNUIMessage({
            action = "Status",
            Ammo = ammo,
            Armed = IsPedArmed(Player, 4),
        })

        Wait(100)
    end
end)