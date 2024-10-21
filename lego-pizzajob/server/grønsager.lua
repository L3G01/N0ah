RegisterNetEvent('lego:salat')
AddEventHandler('lego:salat', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer ~= nil then
        local salat = xPlayer.getInventoryItem('salat')

    if salat.count >= Antal then
        xPlayer.addInventoryItem('salat_cut', Antal)
        xPlayer.removeInventoryItem('salat', Antal)
    end
  end
end)

RegisterNetEvent('lego:tomato')
AddEventHandler('lego:tomato', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer ~= nil then
        local tomato = xPlayer.getInventoryItem('tomato')

    if tomato.count >= Antal then
        xPlayer.removeInventoryItem('tomato', Antal)
        xPlayer.addInventoryItem('tomato_cut', Antal)
    end
  end
end)

RegisterNetEvent('lego:onion')
AddEventHandler('lego:onion', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    
    if xPlayer ~= nil then
        local onion = xPlayer.getInventoryItem('onion')

    if onion.count >= Antal then
        xPlayer.removeInventoryItem('onion', Antal)
        xPlayer.addInventoryItem('onion_cut', Antal)
    end
  end
end)