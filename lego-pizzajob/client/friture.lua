exports.ox_target:addSphereZone({
    coords = vector3(286.0468, -981.0912, 29.4336),
    radius = 1,
    debug = false,
    options = {
        {
            icon = "fa-solid fa-french-fries",
            label = "Åben Friture",
            distance = 1.0,
            job = 'pizzajob',
            onSelect = function()
                openFriture()
            end
        }
    }
  })
  
  openFriture = function()
    lib.registerContext({
      id = 'openFriture',
      title = 'Friture',
      options = {
        {
          title = 'Lav Pommes friter',
          description = 'Krav Rå Pomfritter',
          icon = 'spoon',
          arrow = true,
          onSelect = function()
            local input = lib.inputDialog('Friture Pomfritter', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 1800, 
                        label = 'Crafter Pomfritter',
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
        
                    TriggerServerEvent("lego:fries", Antal)
                  end
                end
             end
        },
        {
          title = 'Lav Falafler',
          description = 'Krav Rå Falafler',
          icon = 'spoon',
          arrow = true,
          onSelect = function()
            local input = lib.inputDialog('Friture falafler', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 1800, 
                        label = 'Crafter Falafler',
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
        
                    TriggerServerEvent("lego:falafel", Antal)
                  end
                end
             end
        }
      }
    })
  
    lib.showContext('openFriture')
  end