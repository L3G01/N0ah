  exports.ox_target:addSphereZone({
    coords = vector3(286.4534, -983.3701, 29.45),
    radius = 2,
    debug = false,
    options = {
        {
            icon = "fa-solid fa-bars",
            label = "Samle Menu",
            distance = 2.0,
            job = 'pizzajob',
            onSelect = function()
                mixfood()
            end
        }
    }
  })
  
  mixfood = function()
    lib.registerContext({
      id = 'mixfood',
      title = 'Samle menuer',
      options = {
        {
          title = 'kebab box',
          description = 'her kan i samle kebab boxe',
          icon = 'bowl-food',
          arrow = true,
          onSelect = function()
            openBox()
          end
        },
        {
          title = 'Pita Brød',
          description = 'her kan i lave pitabrød',
          icon = 'bread-slice',
          arrow = true,
          onSelect = function()
            openBox2()
          end
        },
        {
          title = 'Durums',
          description = 'her kan i lave durums',
          icon = 'bread-slice',
          arrow = true,
          onSelect = function()
            openBox3()
          end
        },
        {
          title = 'Turkish',
          description = 'her kan i lave Turkish Brød',
          icon = 'bread-slice',
          arrow = true,
          disabled = false,
          onSelect = function()
            openBox4()
          end
        }
      }
    })
  
    lib.showContext('mixfood')
  end

  openBox = function()
    lib.registerContext({
      id = 'openBox',
      title = 'Samle Kebab Boxe',
      options = {
        {
          title = 'kebab box med kebab',
          description = '2x kebab 1x salat 2x pommes friter',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav kebab box', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Kebab Box',
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
        
                    TriggerServerEvent("lego:kebabbox", Antal)
                  end
                end
             end
        },
        {
          title = 'Kebab box med kylling',
          description = '2x kylling 1x salat 2x pommes friter',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav kylling box', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Kylling Box',
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
        
                    TriggerServerEvent("lego:kyllingbox", Antal)
                  end
                end
             end
        },
        {
          title = 'Kebab box med falafel',
          description = '2x falafel 1x salat 2x pommes friter',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav falafel box', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Falafel Box',
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
        
                    TriggerServerEvent("lego:falafelbox", Antal)
                  end
                end
             end
        }
      }
    })
  
    lib.showContext('openBox')
  end

  openBox2 = function()
    lib.registerContext({
      id = 'openBox2',
      title = 'Samle Pita Brød',
      options = {
        {
          title = 'PitaBrød med kebab',
          description = '2x kebab 2x Skåret salat 2x skåret Løg 1x tomat',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav pita kebab', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Pitabrød med kebab',
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
        
                    TriggerServerEvent("lego:pitakebab", Antal)
                end
             end
          end
        },
        {
          title = 'PitaBrød med kylling',
          description = '2x kylling 2x Skåret salat 2x skåret Løg 1x tomat',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav pita kylling', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Pitabrød med kylling',
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
        
                    TriggerServerEvent("lego:pitachicken", Antal)
                end
             end
          end
        },
        {
          title = 'PitaBrød med falafel',
          description = '2x falafel 2x Skåret salat 2x skåret Løg 1x tomat',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav pita falafel', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Pitabrød med falafel',
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
        
                    TriggerServerEvent("lego:pitafalafel", Antal)
                end
             end
          end
        }
      }
    })
  
    lib.showContext('openBox2')
  end

  openBox3 = function()
    lib.registerContext({
      id = 'openBox3',
      title = 'Samle Durums',
      options = {
        {
          title = 'Durum med kebab',
          description = '2x kebab 2x skåret salat 2x skåret Tomat x2 Skåret Løg',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav durum kebab', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Durum kebab',
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
        
                    TriggerServerEvent("lego:durumkebab", Antal)
                end
             end
          end
        },
        {
          title = 'Durum med kylling',
          description = '2x kylling 2x skåret salat 2x skåret Tomat x2 Skåret Løg',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav durum kylling', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Durum kylling',
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
        
                    TriggerServerEvent("lego:durumchicken", Antal)
                end
             end
          end
        },
        {
          title = 'Durum med falafel',
          description = '2x falafel 2x skåret salat 2x skåret Tomat x2 Skåret Løg',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav durum falafel', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Durum falafel',
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
        
                    TriggerServerEvent("lego:durumfalafel", Antal)
                end
             end
          end
        }
      }
    })
  
    lib.showContext('openBox3')
  end

  openBox4 = function()
    lib.registerContext({
      id = 'openBox4',
      title = 'Samle Turkish Brød',
      options = {
        {
          title = 'Turkish med kebab',
          description = '2x kebab 2x skåret salat 2x skåret Tomat x2 Skåret Løg',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav Turkish kebab', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Turkish kebab',
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
        
                    TriggerServerEvent("lego:turkishkebab", Antal)
                end
             end
          end
        },
        {
          title = 'Turkish med kylling',
          description = '2x kylling 2x skåret salat 2x skåret Tomat x2 Skåret Løg',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav Turkish kylling', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Turkish kylling',
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
        
                    TriggerServerEvent("lego:turkishchicken", Antal)
                end
             end
          end
        },
        {
          title = 'Turkish med falafel',
          description = '2x falafel 2x skåret salat 2x skåret Tomat x2 Skåret Løg',
          icon = 'bowl-food',
          arrow = false,
          onSelect = function()
            local input = lib.inputDialog('Lav Turkish falafel', {'Antal'})
            
            if not input then return end
        
            if input[1] then 
                local Antal = tonumber(input[1]) 
                if Antal ~= nil then
                    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
        
                    if lib.progressBar({
                        duration = Antal * 12000, 
                        label = 'Samler Turkish falafel',
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
        
                    TriggerServerEvent("lego:turkishfalafel", Antal)
                end
             end
          end
        }
      }
    })
  
    lib.showContext('openBox4')
  end