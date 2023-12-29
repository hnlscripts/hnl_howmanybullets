HideDefaultUI = true -- if you want to hide the default UI, set this to true. If you want 0.00ms resmon then set this to false, otherwise it will be 0.01ms.



-- do not change bellow
Citizen.CreateThread(function()
    while HideDefaultUI do Citizen.Wait(0) HideHudComponentThisFrame(2) end
end)