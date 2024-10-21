exports.ox_target:addSphereZone({
  coords = vector3(294.10, -989.80, 29.35),
  radius = 1,
  debug = false,
  options = {
      {
          icon = "fa-solid fa-laptop",
          label = "Åben Computeren",
          distance = 1.0,
          job = 'pizzajob',
          onSelect = function()
              openLaptop()
          end
      }
  }
})

openLaptop = function()
  lib.registerContext({
    id = 'openLaptop',
    title = 'Bestilling',
    options = {
      {
        title = 'Bestil Vare',
        description = 'Her kan du bestille vare til firmaet',
        icon = 'fa-solid fa-laptop',
        arrow = true,
        onSelect = function()
          openList()
        end
      },
      {
        title = 'Bestil Drikke Vare',
        description = 'Her kan du bestille drikke vare til firmaet',
        icon = 'fa-solid fa-laptop',
        arrow = true,
        disabled = false,
        onSelect = function()
          openDrinksList()
        end
      },
      {
        title = 'Bestil Pizza Vare',
        description = 'Her kan du bestille pizza vare til firmaet',
        icon = 'fa-solid fa-laptop',
        arrow = true,
        disabled = false,
        onSelect = function()
          openPizzaList()
        end
      },
    }
  })

  lib.showContext('openLaptop')
end

openDrinksList = function()
  lib.registerContext({
    id = 'openDrinksList',
    title = 'Bestil Drike Vare',
    options = {
      {
        title = 'Bestil Coca Cola',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Coca Cola', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addcocacola", input[1])
          end
        end
      },
      {
        title = 'Bestil Pepsi Max',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Pepsi Max', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addpepsimax", input[1])
          end
        end
      },
      {
        title = 'Bestil gazoz',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Gazoz', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addgazoz", input[1])
          end
        end
      },
      {
        title = 'Bestil ayran',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Ayran', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addayran", input[1])
          end
        end
      }
    }
  })

  lib.showContext('openDrinksList')
end

openList = function()
  lib.registerContext({
    id = 'openList',
    title = 'Bestilling',
    options = {
      {
        title = 'Bestil Salat',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Salad', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addsalad", input[1])
          end
        end
      },
      {
        title = 'Bestil Tomat',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Tomat', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addtomato", input[1])
          end
        end
      },
      {
        title = 'Bestil Løg',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Løg', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addonion", input[1])
          end
        end
      },
      {
        title = 'Bestil Pommes Friter',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Pommes Friter', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addfries", input[1])
          end
        end
      },
      {
        title = 'Bestil Kebab',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Kebab', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addkebab", input[1])
          end
        end
      },
      {
        title = 'Bestil kylling',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Kylling', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addchicken", input[1])
          end
        end
      },
      {
        title = 'Bestil falafel',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Falafel', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addfalafel", input[1])
          end
        end
      },
      {
        title = 'Bestil durum brød',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Durum Brød', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:adddurumbread", input[1])
          end
        end
      },
      {
        title = 'Bestil pitabrød',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil PitaBrød', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addpitabread", input[1])
          end
        end
      },
      {
        title = 'Bestil Turkish brød',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Turkish Brød', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addturkishbread", input[1])
          end
        end
      }
    }
  })

  lib.showContext('openList')
end

openPizzaList = function()
  lib.registerContext({
    id = 'openPizzaList',
    title = 'Bestil Pizza Topings',
    options = {
      {
        title = 'Bestil Pepperoni',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Pepperoni', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addpepperoni", input[1])
          end
        end
      },
      {
        title = 'Bestil Ost',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Ost', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addcheese", input[1])
          end
        end
      },
      {
        title = 'Bestil Pizza Bund',
        description = false,
        icon = 'fa-solid fa-laptop',
        onSelect = function()
          local input = lib.inputDialog('Bestil Pizza Bund', {'Antal'})
 
          if not input then return end
          
          if input[1] then 
            local Antal = input[1] 
            TriggerServerEvent("lego:addpizzabund", input[1])
          end
        end
      }
    }
  })

  lib.showContext('openPizzaList')
end