RegisterServerEvent("lego:addsalad")
AddEventHandler("lego:addsalad", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local saladPrice = 10 

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * saladPrice


    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice) 
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount)
            xPlayer.removeMoney(xPlayer.getMoney()) 
        end

        xPlayer.addInventoryItem('salat', antal)
    end
end)

RegisterServerEvent("lego:addtomato")
AddEventHandler("lego:addtomato", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local tomatoPrice = 10

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * tomatoPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('tomato', antal) 
    end
end)

RegisterServerEvent("lego:addonion")
AddEventHandler("lego:addonion", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local onionPrice = 10

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * onionPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('onion', antal) 
    end
end)

RegisterServerEvent("lego:addkebab")
AddEventHandler("lego:addkebab", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local kebabPrice = 25

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * kebabPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('kebab_pieces', antal) 
    end
end)

RegisterServerEvent("lego:addchicken")
AddEventHandler("lego:addchicken", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local chickenPrice = 25

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * chickenPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('burgershot_chicken_raw', antal) 
    end
end)

RegisterServerEvent("lego:addfalafel")
AddEventHandler("lego:addfalafel", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local falafelPrice = 25

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * falafelPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('falafel_raw', antal) 
    end
end)

RegisterServerEvent("lego:addgazoz")
AddEventHandler("lego:addgazoz", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local gazozPrice = 45

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * gazozPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('gazoz', antal) 
    end
end)

RegisterServerEvent("lego:addayran")
AddEventHandler("lego:addayran", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local ayranPrice = 35

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
  
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * ayranPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('ayran', antal) 
    end
end)

RegisterServerEvent("lego:addayran")
AddEventHandler("lego:addayran", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local ayranPrice = 35

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
  
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * ayranPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('ayran', antal) 
    end
end)

RegisterServerEvent("lego:addpitabread")
AddEventHandler("lego:addpitabread", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local pitabreadPrice = 35

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
  
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * pitabreadPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('pita_bread', antal) 
    end
end)

RegisterServerEvent("lego:adddurumbread")
AddEventHandler("lego:adddurumbread", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local durumbreadPrice = 35

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
  
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * durumbreadPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('durum_bread', antal) 
    end
end)

RegisterServerEvent("lego:addturkishbread")
AddEventHandler("lego:addturkishbread", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local turkishbreadPrice = 35

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
  
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * turkishbreadPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('turkish_bread', antal) 
    end
end)

RegisterServerEvent("lego:addfries")
AddEventHandler("lego:addfries", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local friesPrice = 35

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
  
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * friesPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('burgershot_uncooked_fries', antal) 
    end
end)

RegisterServerEvent("lego:addcocacola")
AddEventHandler("lego:addcocacola", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local cocacolaPrice = 35

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
  
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * cocacolaPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('soda', antal) 
    end
end)

RegisterServerEvent("lego:addpepsimax")
AddEventHandler("lego:addpepsimax", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local pepsimaxPrice = 35

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
  
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * pepsimaxPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('soda_drink', antal) 
    end
end)

RegisterServerEvent("lego:addpepperoni")
AddEventHandler("lego:addpepperoni", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local pepperoniPrice = 45

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
  
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * pepperoniPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('pepperoni', antal) 
    end
end)

RegisterServerEvent("lego:addcheese")
AddEventHandler("lego:addcheese", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local ostPrice = 25

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
  
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * ostPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('burgershot_cheese', antal) 
    end
end)


RegisterServerEvent("lego:addpizzabund")
AddEventHandler("lego:addpizzabund", function(antal)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local pizzabundPrice = 45

    antal = tonumber(antal)

    if antal == nil or antal <= 0 then
  
        TriggerClientEvent('chatMessage', source, "^1Invalid quantity provided.")
        return
    end

    local totalPrice = antal * pizzabundPrice

    if xPlayer.getMoney() + xPlayer.getAccount('bank').money >= totalPrice then
        if xPlayer.getMoney() >= totalPrice then
            xPlayer.removeMoney(totalPrice)
        else
            local remainingAmount = totalPrice - xPlayer.getMoney()
            xPlayer.removeAccountMoney('bank', remainingAmount) 
            xPlayer.removeMoney(xPlayer.getMoney())
        end

        xPlayer.addInventoryItem('pizzabund', antal) 
    end
end)