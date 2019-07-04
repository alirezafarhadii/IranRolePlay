local cloudOpacity = 0.01 
local muteSound = true

function ToggleSound(state)
    if state then
        StartAudioScene("MP_LEADERBOARD_SCENE");
    else
        StopAudioScene("MP_LEADERBOARD_SCENE");
    end
end

function InitialSetup()
    SetManualShutdownLoadingScreenNui(true)
    ToggleSound(muteSound)
    if not IsPlayerSwitchInProgress() then
        SwitchOutPlayer(PlayerPedId(), 0, 1)
    end
end

Citizen.CreateThread(function()
    InitialSetup()
    while GetPlayerSwitchState() ~= 5 do
        Citizen.Wait(0)
        ClearScreen()
    end
    
    ShutdownLoadingScreen()
    SetCloudHatOpacity(cloudOpacity)
    Citizen.Wait(0)
    DoScreenFadeOut(0)
    ShutdownLoadingScreenNui()
    
    SetCloudHatOpacity(cloudOpacity)
    Citizen.Wait(0)
    DoScreenFadeIn(500)
    while not IsScreenFadedIn() do
        Citizen.Wait(0)
        SetCloudHatOpacity(cloudOpacity)
    end
    
    local timer = GetGameTimer()
    ToggleSound(false)
    TriggerServerEvent('es:firstJoinProper')
    TriggerEvent('es:allowedToSpawn')
    while true do
        SetCloudHatOpacity(cloudOpacity)
        Citizen.Wait(0)
        if GetGameTimer() - timer > 5000 then
            SwitchInPlayer(PlayerPedId())
            while GetPlayerSwitchState() ~= 12 do
                Citizen.Wait(0)
                SetCloudHatOpacity(cloudOpacity)
            end
            break
        end
    end
    TriggerEvent('ui:toggle', true)
end)
