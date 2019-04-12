
------
-- InteractionSound by Scott
-- Version: v0.0.1
-- Path: client/main.lua
--
-- Allows sounds to be played on single clients, all clients, or all clients within
-- a specific range from the entity to which the sound has been created.
------

local standardVolumeOutput = 1.0;

------
-- RegisterNetEvent LIFE_CL:Sound:PlayOnOne
--
-- @param soundFile    - The name of the soundfile within the client/html/sounds/ folder.
--                     - Can also specify a folder/sound file.
-- @param soundVolume  - The volume at which the soundFile should be played. Nil or don't
--                     - provide it for the default of standardVolumeOutput. Should be between
--                     - 0.1 to 1.0.
--
-- Starts playing a sound locally on a single client.
------
RegisterNetEvent('LIFE_CL:Sound:PlayOnOne')
AddEventHandler('LIFE_CL:Sound:PlayOnOne', function(soundFile, soundVolume)
    SendNUIMessage({
        transactionType     = 'playSound',
        transactionFile     = soundFile,
        transactionVolume   = soundVolume
    })
end)

------
-- RegisterNetEvent LIFE_CL:Sound:PlayOnAll
--
-- @param soundFile    - The name of the soundfile within the client/html/sounds/ folder.
--                     - Can also specify a folder/sound file.
-- @param soundVolume  - The volume at which the soundFile should be played. Nil or don't
--                     - provide it for the default of standardVolumeOutput. Should be between
--                     - 0.1 to 1.0.
--
-- Starts playing a sound on all clients who are online in the server.
------
RegisterNetEvent('LIFE_CL:Sound:PlayOnAll')
AddEventHandler('LIFE_CL:Sound:PlayOnAll', function(soundFile, soundVolume)
    SendNUIMessage({
        transactionType     = 'playSound',
        transactionFile     = soundFile,
        transactionVolume   = soundVolume
    })
end)

------
-- RegisterNetEvent LIFE_CL:Sound:PlayWithinDistance
--
-- @param playOnEntity    - The entity network id (will be converted from net id to entity on client)
--                        - of the entity for which the max distance is to be drawn from.
-- @param maxDistance     - The maximum float distance (client uses Vdist) to allow the player to
--                        - hear the soundFile being played.
-- @param soundFile       - The name of the soundfile within the client/html/sounds/ folder.
--                        - Can also specify a folder/sound file.
-- @param soundVolume     - The volume at which the soundFile should be played. Nil or don't
--                        - provide it for the default of standardVolumeOutput. Should be between
--                        - 0.1 to 1.0.
--
-- Starts playing a sound on a client if the client is within the specificed maxDistance from the playOnEntity.
-- @TODO Change sound volume based on the distance the player is away from the playOnEntity.
------
RegisterNetEvent('LIFE_CL:Sound:PlayWithinDistance')
AddEventHandler('LIFE_CL:Sound:PlayWithinDistance', function(playerNetId, maxDistance, soundFile, soundVolume, mwait)

    local myId = GetPlayerFromServerId(playerNetId)
    local pid = PlayerPedId()
    local dist = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true)
    

    -- if pid == myId then
    --     Citizen.Wait(mwait)

    --     SendNUIMessage({
    --         transactionType     = 'playSound',
    --         transactionFile     = soundFile,
    --         transactionVolume   = soundVolume
    --     })
    -- elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < maxDistance then
    --     Citizen.Wait(mwait)

    --     SendNUIMessage({
    --         transactionType     = 'playSound',
    --         transactionFile     = soundFile,
    --         transactionVolume   = soundVolume
    --     })
    -- end
end)
