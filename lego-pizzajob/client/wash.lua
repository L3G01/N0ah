startWash = function()
    TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
  
      if lib.progressBar({
        duration = 5000,
        label = 'Vasker Hænder',
        useWhileDead = false,
        canCancel = false,
        disable = {
          move = true,
          car = true,
          combat = true,
        },
    }) then end
  
  
    TriggerEvent('esx_animation:EmoteCancel')

    lib.notify({
        description = 'Din hænder er rene',
        type = 'inform'
    })

  end