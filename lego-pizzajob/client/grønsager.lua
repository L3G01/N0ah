  exports.ox_target:addSphereZone({
    coords = vector3(284.0068, -983.5676, 29.45),
    radius = 2,
    debug = false,
    options = {
        {
            icon = "fa-solid fa-salad",
            label = "Åben Skær grønsager",
            distance = 0.9,
            job = 'pizzajob',
            onSelect = function()
                opengreensag()
            end
        }
    }
  })
  
  opengreensag = function(Antal)
    lib.registerContext({
      id = 'opengreensag',
      title = 'Skære Grønsager',
      options = {
        {
          title = 'Skære Salat',
          description = 'Krav Salat',
          icon = 'utensils',
          arrow = true,
          onSelect = function()
            local input = lib.inputDialog('Skær Salat', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 1200, 
                        label = 'Skær Salat i skiver',
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
        
                    TriggerServerEvent("lego:salat", Antal)
                  end
                end
             end
        },
        {
          title = 'Skær Tomater',
          description = 'Krav Tomat',
          icon = 'utensils',
          arrow = true,
          onSelect = function()
            local input = lib.inputDialog('Skær Tomat', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 1200, 
                        label = 'Skær Tomater i skiver',
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
        
                    TriggerServerEvent("lego:tomato", Antal)
                  end
                end
             end
        },
        {
          title = 'Skær Løg',
          description = 'Krav Løg',
          icon = 'utensils',
          arrow = true,
          onSelect = function()
            local input = lib.inputDialog('Skær Løg', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 1200, 
                        label = 'Skær Løg i skiver',
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
        
                    TriggerServerEvent("lego:onion", Antal)
                  end
                end
             end
            }
          }
        })
  
    lib.showContext('opengreensag')
  end
