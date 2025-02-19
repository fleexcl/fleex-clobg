local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("bolso_ropa", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fleex-clobg:client:abrirBolso', source)
    end
end)

--- si no quieres remover el bolso de tu inevtnario al usarlo, elimina de la linea 11 a la 17
RegisterNetEvent('fleex-clobg:server:quitaBolso', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.RemoveItem('bolso_ropa', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['bolso_ropa'], "remove")
end)



---recuerda añadir el items y la imagen .PNG "bolso_ropa" a tu inventario y archivo ítems.lua de qb-core