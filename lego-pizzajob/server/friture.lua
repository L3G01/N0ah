RegisterNetEvent('lego:fries')
AddEventHandler('lego:fries', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer ~= nil then
        local fries = xPlayer.getInventoryItem('burgershot_uncooked_fries')

    if fries.count >= Antal then
        xPlayer.addInventoryItem('burgershot_fries', Antal)
        xPlayer.removeInventoryItem('burgershot_uncooked_fries', Antal)
    end
  end
end)

RegisterNetEvent('lego:falafel')
AddEventHandler('lego:falafel', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer ~= nil then
        local falafel = xPlayer.getInventoryItem('falafel_raw')

    if falafel.count >= Antal then
        xPlayer.removeInventoryItem('falafel_raw', Antal)
        xPlayer.addInventoryItem('falafel_fried', Antal)
    end
  end
end)