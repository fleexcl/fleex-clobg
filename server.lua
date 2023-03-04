local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("bolso_ropa", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('rainbow-clobg:client:abrirBolso', source)
    end
end)

--- si no quieres remover el bolso al utilizarlo comenta desde la linea 11 hasta las linea 17
RegisterNetEvent('rainbow-clobg:server:quitaBolso', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.RemoveItem('bolso_ropa', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bolso_ropa'], "remove")
end)



---recuerda agregar el items: bolso_ropa a una tienda o donde quieras que la gente lo consiga