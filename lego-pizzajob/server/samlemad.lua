RegisterNetEvent('lego:kebabbox')
AddEventHandler('lego:kebabbox', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local fries = xPlayer.getInventoryItem('burgershot_fries')
    local kebab = xPlayer.getInventoryItem('kebab_pieces')

    if tomat.count >= 2 * Antal and salat.count >= 1 * Antal and fries.count >= 2 * Antal and kebab.count >= 2 * Antal then
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 1 * Antal)
        xPlayer.removeInventoryItem('burgershot_fries', 2 * Antal)
        xPlayer.removeInventoryItem('kebab_pieces', 2 * Antal)
        xPlayer.addInventoryItem('bowl_kebab', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

RegisterNetEvent('lego:kyllingbox')
AddEventHandler('lego:kyllingbox', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local fries = xPlayer.getInventoryItem('burgershot_fries')
    local chicken = xPlayer.getInventoryItem('burgershot_chicken_grilled')

    if tomat.count >= 2 * Antal and salat.count >= 2 * Antal and fries.count >= 2 * Antal and chicken.count >= 2 * Antal then
        xPlayer.removeInventoryItem('pita_bread_warmed', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 2 * Antal)
        xPlayer.removeInventoryItem('burgershot_fries', 2 * Antal)
        xPlayer.removeInventoryItem('burgershot_chicken_grilled', 2 * Antal)
        xPlayer.addInventoryItem('bowl_chicken', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

RegisterNetEvent('lego:falafelbox')
AddEventHandler('lego:falafelbox', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local fries = xPlayer.getInventoryItem('burgershot_fries')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local falafel = xPlayer.getInventoryItem('falafel_fried')

    if tomat.count >= 2 * Antal and salat.count >= 2 * Antal and fries.count >= 2 * Antal and falafel.count >= 2 * Antal then
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 1 * Antal)
        xPlayer.removeInventoryItem('burgershot_fries', 2 * Antal)
        xPlayer.removeInventoryItem('falafel_fried', 2 * Antal)
        xPlayer.addInventoryItem('bowl_falafel', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

--pita brød

RegisterNetEvent('lego:pitakebab')
AddEventHandler('lego:pitakebab', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    local bun = xPlayer.getInventoryItem('pita_bread_warmed')
    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local onion = xPlayer.getInventoryItem('onion_cut')
    local kebab = xPlayer.getInventoryItem('kebab_pieces')

    if bun.count >= 1 * Antal and tomat.count >= 1 * Antal and salat.count >= 2 * Antal and kebab.count >= 2 * Antal and onion.count >= 2 * Antal then
        xPlayer.removeInventoryItem('pita_bread_warmed', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 1 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 2 * Antal)
        xPlayer.removeInventoryItem('onion_cut', 2 * Antal)
        xPlayer.removeInventoryItem('kebab_pieces', 2 * Antal)
        xPlayer.addInventoryItem('pita_bread_kebab', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

RegisterNetEvent('lego:pitachicken')
AddEventHandler('lego:pitachicken', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    local bun = xPlayer.getInventoryItem('pita_bread_warmed')
    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local chicken = xPlayer.getInventoryItem('burgershot_chicken_grilled')

    if bun.count >= 1 * Antal and tomat.count >= 2 * Antal and salat.count >= 2 * Antal and chicken.count >= 2 * Antal then
        xPlayer.removeInventoryItem('pita_bread_warmed', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 2 * Antal)
        xPlayer.removeInventoryItem('burgershot_chicken_grilled', 2 * Antal)
        xPlayer.addInventoryItem('pita_bread_chicken', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

RegisterNetEvent('lego:pitafalafel')
AddEventHandler('lego:pitafalafel', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    local bun = xPlayer.getInventoryItem('pita_bread_warmed')
    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local falafel = xPlayer.getInventoryItem('falafel_fried')

    if bun.count >= 1 * Antal and tomat.count >= 2 * Antal and salat.count >= 2 * Antal and falafel.count >= 2 * Antal then
        xPlayer.removeInventoryItem('pita_bread_warmed', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 2 * Antal)
        xPlayer.removeInventoryItem('falafel_fried', 2 * Antal)
        xPlayer.addInventoryItem('pita_bread_falafel', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

-- durum

RegisterNetEvent('lego:durumkebab')
AddEventHandler('lego:durumkebab', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    local bun = xPlayer.getInventoryItem('durum_bread_warmed')
    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local kebab = xPlayer.getInventoryItem('kebab_pieces')

    if bun.count >= 1 * Antal and tomat.count >= 2 * Antal and salat.count >= 2 * Antal and kebab.count >= 2 * Antal then
        xPlayer.removeInventoryItem('durum_bread_warmed', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 2 * Antal) 
        xPlayer.removeInventoryItem('kebab_pieces', 2 * Antal)
        xPlayer.addInventoryItem('durum_kebab', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

RegisterNetEvent('lego:durumchicken')
AddEventHandler('lego:durumchicken', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    local bun = xPlayer.getInventoryItem('durum_bread_warmed')
    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local chicken = xPlayer.getInventoryItem('burgershot_chicken_grilled')

    if bun.count >= 1 * Antal and tomat.count >= 2 * Antal and salat.count >= 2 * Antal and chicken.count >= 2 * Antal then
        xPlayer.removeInventoryItem('durum_bread_warmed', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 2 * Antal)
        xPlayer.removeInventoryItem('burgershot_chicken_grilled', 2 * Antal)
        xPlayer.addInventoryItem('durum_chicken', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

RegisterNetEvent('lego:durumfalafel')
AddEventHandler('lego:durumfalafel', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local bun = xPlayer.getInventoryItem('durum_bread_warmed')
    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local falafel = xPlayer.getInventoryItem('falafel_fried')

    if bun.count >= 1 * Antal and tomat.count >= 2 * Antal and salat.count >= 2 * Antal and falafel.count >= 2 * Antal then
        xPlayer.removeInventoryItem('durum_bread_warmed', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 2 * Antal)
        xPlayer.removeInventoryItem('falafel_fried', 2 * Antal)
        xPlayer.addInventoryItem('durum_falafel', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

-- Turkish

RegisterNetEvent('lego:turkishkebab')
AddEventHandler('lego:turkishkebab', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    local bun = xPlayer.getInventoryItem('turkish_bread_warmed')
    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local onion = xPlayer.getInventoryItem('onion_cut')
    local kebab = xPlayer.getInventoryItem('kebab_pieces')

    if bun.count >= 1 * Antal and tomat.count >= 2 * Antal and salat.count >= 2 * Antal and onion.count >= 2 * Antal and kebab.count >= 2 * Antal then
        xPlayer.removeInventoryItem('turkish_bread_warmed', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 2 * Antal) 
        xPlayer.removeInventoryItem('onion_cut', 2 * Antal) 
        xPlayer.removeInventoryItem('kebab_pieces', 2 * Antal)
        xPlayer.addInventoryItem('turkish_bread_kebab', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

RegisterNetEvent('lego:turkishchicken')
AddEventHandler('lego:turkishchicken', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    local bun = xPlayer.getInventoryItem('turkish_bread_warmed')
    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local onion = xPlayer.getInventoryItem('onion_cut')
    local chicken = xPlayer.getInventoryItem('burgershot_chicken_grilled')

    if bun.count >= 1 * Antal and tomat.count >= 2 * Antal and salat.count >= 2 * Antal and onion.count >= 2 * Antal and chicken.count >= 2 * Antal then
        xPlayer.removeInventoryItem('turkish_bread_warmed', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 2 * Antal)
        xPlayer.removeInventoryItem('onion_cut', 2 * Antal) 
        xPlayer.removeInventoryItem('burgershot_chicken_grilled', 2 * Antal)
        xPlayer.addInventoryItem('turkish_bread_chicken', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

RegisterNetEvent('lego:turkishfalafel')
AddEventHandler('lego:turkishfalafel', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local bun = xPlayer.getInventoryItem('turkish_bread_warmed')
    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local salat = xPlayer.getInventoryItem('salat_cut')
    local onion = xPlayer.getInventoryItem('onion_cut')
    local falafel = xPlayer.getInventoryItem('falafel_fried')

    if bun.count >= 1 * Antal and tomat.count >= 2 * Antal and salat.count >= 2 * Antal and onion.count >= 2 * Antal and falafel.count >= 2 * Antal then
        xPlayer.removeInventoryItem('turkish_bread_warmed', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('salat_cut', 2 * Antal)
        xPlayer.removeInventoryItem('onion_cut', 2 * Antal) 
        xPlayer.removeInventoryItem('falafel_fried', 2 * Antal)
        xPlayer.addInventoryItem('turkish_bread_falafel', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

-- varm ting

RegisterNetEvent('lego:varmpita')
AddEventHandler('lego:varmpita', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer ~= nil then
        local bun = xPlayer.getInventoryItem('pita_bread')

        if bun.count >= Antal then
            xPlayer.removeInventoryItem('pita_bread', Antal)
            xPlayer.addInventoryItem('pita_bread_warmed', Antal)
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
        end
    else
        print('xPlayer is nil')
    end
end)

RegisterNetEvent('lego:varmturkish')
AddEventHandler('lego:varmturkish', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer ~= nil then
        local bun = xPlayer.getInventoryItem('turkish_bread')

        if bun.count >= Antal then
            xPlayer.removeInventoryItem('turkish_bread', Antal)
            xPlayer.addInventoryItem('turkish_bread_warmed', Antal)
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
        end
    else
        print('xPlayer is nil')
    end
end)

RegisterNetEvent('lego:varmdurum')
AddEventHandler('lego:varmdurum', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source) 

    if xPlayer ~= nil then
        local bun = xPlayer.getInventoryItem('durum_bread')

        if bun.count >= Antal then
            xPlayer.removeInventoryItem('durum_bread', Antal)
            xPlayer.addInventoryItem('durum_bread_warmed', Antal)
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
        end
    else
        print('xPlayer is nil')
    end
end)

RegisterNetEvent('lego:stegkulling')
AddEventHandler('lego:stegkulling', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source) 

    if xPlayer ~= nil then
        local chicken = xPlayer.getInventoryItem('burgershot_chicken_raw')

        if chicken.count >= Antal then
            xPlayer.removeInventoryItem('burgershot_chicken_raw', Antal)
            xPlayer.addInventoryItem('burgershot_chicken_grilled', Antal)
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
        end
    else
        print('xPlayer is nil')
    end
end)

-- Pizza

RegisterNetEvent('lego:pepperonipizza')
AddEventHandler('lego:pepperonipizza', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local bun = xPlayer.getInventoryItem('pizzabund')
    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local Ost = xPlayer.getInventoryItem('burgershot_cheese')
    local pepperoni = xPlayer.getInventoryItem('pepperoni')

    if bun.count >= 1 * Antal and tomat.count >= 2 * Antal and Ost.count >= 3 * Antal and pepperoni.count >= 4 * Antal then
        xPlayer.removeInventoryItem('pizzabund', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 2 * Antal)
        xPlayer.removeInventoryItem('burgershot_cheese', 3 * Antal)
        xPlayer.removeInventoryItem('pepperoni', 4 * Antal) 
        xPlayer.addInventoryItem('pizza2', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)

RegisterNetEvent('lego:cheesepizza')
AddEventHandler('lego:cheesepizza', function(Antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local bun = xPlayer.getInventoryItem('pizzabund')
    local tomat = xPlayer.getInventoryItem('tomato_cut')
    local Ost = xPlayer.getInventoryItem('burgershot_cheese')

    if bun.count >= 1 * Antal and tomat.count >= 4 * Antal and Ost.count >= 4 * Antal  then
        xPlayer.removeInventoryItem('pizzabund', 1 * Antal)
        xPlayer.removeInventoryItem('tomato_cut', 4 * Antal)
        xPlayer.removeInventoryItem('burgershot_cheese', 4 * Antal)
        xPlayer.addInventoryItem('pizza1', 1 * Antal)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke alle ingredienserne' })
    end
end)