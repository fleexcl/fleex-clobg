local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('fleex-clobg:client:abrirBolso', function()
    QBCore.Functions.Progressbar('progre_bolso', 'Abriendo', 1000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'random@domestic',
        anim = 'pickup_low',
        flags = 16,
    }, {}, {}, function()
        ClearPedTasks(PlayerPedId())
        TriggerEvent('qb-clothing:client:openOutfitMenu')
        TriggerEvent('fleex-clobg:client:despawnBolso', obj)
    end)
end)

RegisterNetEvent('fleex-clothing:client:openMenu', function()
    TriggerEvent('qb-clothing:client:openOutfitMenu')
end)

RegisterNetEvent('fleex-clobg:client:despawnBolso', function(obj)
    DeleteObject(obj)
    --- si no quieres que el bolso sea removido al utilizarlo comenta la linea 27
    TriggerServerEvent('fleex-clobg:server:quitaBolso')
    TriggerEvent('fleex-clothing:client:openMenu')
end)
