Citizen.CreateThread(function()
    while true do
        -- Disable radio controls
        DisableControlAction(0, 85, true)  -- INPUT_VEH_RADIO_WHEEL
        DisableControlAction(0, 81, true)  -- INPUT_VEH_NEXT_RADIO
        DisableControlAction(0, 82, true)  -- INPUT_VEH_PREV_RADIO
        DisableControlAction(0, 83, true)  -- INPUT_VEH_NEXT_RADIO_TRACK
        DisableControlAction(0, 84, true)  -- INPUT_VEH_PREV_RADIO_TRACK

        -- Force the radio to be turned off
        SetUserRadioControlEnabled(false)
        SetVehRadioStation(GetVehiclePedIsIn(PlayerPedId(), false), "OFF")

        Citizen.Wait(0) -- Prevent game freezing
    end
end)
