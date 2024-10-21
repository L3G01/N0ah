exports.ox_target:addSphereZone({
    coords = vector3(289.5484, -983.9502, 29.00),
    radius = 1,
    debug = false,
    options = {
        {
            icon = "fa-solid fa-french-fries",
            label = "Åben Stegpande",
            distance = 1.0,
            job = 'pizzajob',
            onSelect = function()
                openkulling()
            end
        }
    }
  })
  
  openkulling = function()
    lib.registerContext({
      id = 'openkulling',
      title = 'Stegpande',
      options = {
        {
          title = 'Steg Kylling',
          description = 'Krav Rå Kylling',
          icon = 'spoon',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Steg Kylling', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'bbq')
        
                    if lib.progressBar({
                        duration = Antal * 2000, 
                        label = 'Crafter Stegt Kylling',
                        useWhileDead = false,
                        canCancel = false,
                        disable = {
                            move = true,
                            car = true,
                            combat = true,
                        },
                    }) then
                       
                    end
        
                    TriggerEvent('esx_animation:EmoteCancel')
        
                    TriggerServerEvent("lego:stegkulling", Antal)
                end
            end
        end
        }
      }
    })
  
    lib.showContext('openkulling')
  end

  exports.ox_target:addSphereZone({
    coords = vector3(287.91, -980.9502, 29.50),
    radius = 1.0,
    debug = false,
    options = {
        {
            icon = "fa-solid fa-pizza-slice",
            label = "Åben Pizza Oven",
            distance = 1.0,
            job = 'pizzajob',
            onSelect = function()
                openPizza()
            end
        }
    }
  })
  
  openPizza = function()
    lib.registerContext({
      id = 'openPizza',
      title = 'Pizza Oven',
      options = {
        {
          title = 'Pepperoni Pizza',
          description = 'Krav 1x Pizza Bund 2x Skåret Tomat 3x Ost 4x pepperoni',
          icon = 'pizza-slice',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Varm Pizza', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 45000, 
                        label = 'Varmer Pepperoni Pizza',
                        useWhileDead = false,
                        canCancel = false,
                        disable = {
                            move = false,
                            car = true,
                            combat = true,
                        },
                    }) then
                       
                    end
        
                    TriggerEvent('esx_animation:EmoteCancel')
        
                    TriggerServerEvent("lego:pepperonipizza", Antal)
                end
            end
        end
        },
        {
          title = 'Magarita Pizza',
          description = 'Krav 1x Pizza Bund 4x Skåret Tomat 4x Ost',
          icon = 'pizza-slice',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Varm Pizza', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 45000, 
                        label = 'Varmer Magarita Pizza',
                        useWhileDead = false,
                        canCancel = false,
                        disable = {
                            move = false,
                            car = true,
                            combat = true,
                        },
                    }) then
                       
                    end
        
                    TriggerEvent('esx_animation:EmoteCancel')
        
                    TriggerServerEvent("lego:cheesepizza", Antal)
                end
            end
        end
        },
        {
          title = 'Hawaii Pizza',
          description = 'Krav 1x Pizza Bund 2x Skåret Tomat 2x Ost 4x annanas 4x skinke Strimler',
          icon = 'pizza-slice',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Varm Pizza', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 45000, 
                        label = 'Varmer Hawaii Pizza',
                        useWhileDead = false,
                        canCancel = false,
                        disable = {
                            move = false,
                            car = true,
                            combat = true,
                        },
                    }) then
                       
                    end
        
                    TriggerEvent('esx_animation:EmoteCancel')
        
                    TriggerServerEvent("lego:hawaiipizza", Antal)
                end
            end
        end
       }
      }
    })
  
    lib.showContext('openPizza')
  end