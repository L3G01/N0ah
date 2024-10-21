exports.ox_target:addSphereZone({
    coords = vector3(282.0266, -981.3375, 29.00),
    radius = 1,
    debug = false,
    options = {
        {
            icon = "fa-solid fa-hands",
            label = "Vask hænder",
            distance = 0.9,
            job = 'pizzajob',
            onSelect = function()
                washHands()
            end
        }
    }
  })


washHands = function()
    lib.registerContext({
        id = 'washHands',
        title = 'Håndvask',
        options = {
        {
            title = 'Vask hænder',
            description = 'Husk og vask hænder før i laver mad',
            icon = 'hands',
            onSelect = function()
                startWash()
            end
        }
        }
    })
    lib.showContext('washHands')
  end

  exports.ox_target:addSphereZone({
    coords = vector3(288.5758, -986.4803, 29.00),
    radius = 0.8,
    debug = false,
    options = {
        {
            icon = "fa-solid fa-hands",
            label = "Varm brød",
            distance = 2.0,
            job = 'pizzajob',
            onSelect = function()
                warmBread()
            end
        }
    }
  })

  warmBread = function()
    lib.registerContext({
        id = 'warmBread',
        title = 'Håndvask',
        options = {
        {
            title = 'Varm PitaBrød',
            description = false,
            icon = 'bread-slice',
            onSelect = function()
                local input = lib.inputDialog('Varm brød', {'Antal'})
            
                if not input then return end
            
                if input[1] then 
                    local Antal = tonumber(input[1]) 
                    if Antal ~= nil then
                        TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
            
                        if lib.progressBar({
                            duration = Antal * 1500, 
                            label = 'Varmer Pitabrød',
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
    
                        TriggerServerEvent("lego:varmpita", Antal)
                    end
                end
            end
        },
        {
            title = 'Varm Durumbrød',
            description = false,
            icon = 'bread-slice',
            onSelect = function()
                local input = lib.inputDialog('Varm brød', {'Antal'})
            
                if not input then return end
            
                if input[1] then 
                    local Antal = tonumber(input[1]) 
                    if Antal ~= nil then
                        TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
            
                        if lib.progressBar({
                            duration = Antal * 1500, 
                            label = 'Varmer durum brød',
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
            
                        TriggerServerEvent("lego:varmdurum", Antal)
                    end
                end
            end
            },
            {
                title = 'Varm Turkish Brød',
                description = false,
                icon = 'bread-slice',
                onSelect = function()
                    local input = lib.inputDialog('Varm brød', {'Antal'})
                
                    if not input then return end
                
                    if input[1] then 
                        local Antal = tonumber(input[1]) 
                        if Antal ~= nil then
                            TriggerEvent('esx_animation:OnEmotePlay', 'Emotes', 'mechanic')
                
                            if lib.progressBar({
                                duration = Antal * 1500, 
                                label = 'Varmer Turkish Brød',
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
        
                            TriggerServerEvent("lego:varmturkish", Antal)
                        end
                    end
                end
            }
        }
    })
    lib.showContext('warmBread')
  end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
	ESX.PlayerData = {}
end)


PizzajobMenu = function()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'pizzajob_menu', {
		title = "Luchetti's Menu",
		align = 'top-left',
		elements = {
			{label = 'Giv Faktura', value = 'billing'}
	}}, function(data, menu)
        if data.current.value == "billing" then
            local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

			if closestPlayer ~= -1 and closestDistance < 2 then
				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'give_player_billing', {
					title = 'Faktura beløb'
				}, function(data2, menu2)
					local amount = tonumber(data2.value)

					if amount == nil then
                        lib.notify({
                            title = 'Ugyldigt beløb',
                            type = 'error'
                        })
					else
						menu2.close()
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

						if closestPlayer == -1 or closestDistance > 2.0 then
                            lib.notify({
                                title = 'Ingen spillere i nærheden.',
                                type = 'error'
                            })
						else
							TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_pizzajob', 'Luhetti`s Pizza', tonumber(data2.value))
                            lib.notify({
                                description = 'Fakture er nu blevet givet til: ' .. GetPlayerServerId(closestPlayer),
                                type = 'success'
                            })
						end
					end
				end, function(data2, menu2)
					menu2.close()
				end)
			else
				lib.notify({
                    title = 'Ingen spillere i nærheden.',
                    type = 'error'
                })
			end
        end
    end, function(data, menu)
		menu.close()
	end)
end

CreateThread(function()
	while true do
		Wait(0)
        if IsControlJustReleased(0, 167) and not isDead and ESX.PlayerData.job and ESX.PlayerData.job.name == Config.Job.rank and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'pizzajob_menu') then
            PizzajobMenu()
		end
    end
end)

SendFine = function(closestPlayer)
    ESX.UI.Menu.Open("dialog", GetCurrentResourceName(), "fine_amount",  {
        title = 'Bøde Størrelse'
    }, function(data, menu)
        local amount = tonumber(data.value)
            
        if amount == nil then
            exports['mythic_notify']:DoHudText('error', 'Ugyldigt antal.', 5000)
            return
        end

        if amount ~= nil then
            exports['mythic_notify']:DoHudText('success', "Bøden er nu blevet givet til: " .. GetPlayerServerId(closestPlayer), 5000)
            TriggerServerEvent("esx_billing:sendBill", GetPlayerServerId(closestPlayer), "society_police", "Samlet bøde: " .. ESX.Math.GroupDigits(data.value) .. " DKK", tonumber(data.value))

            menu.close()
        end
    end, function(data, menu)
        menu.close()
    end)
end

exports.qtarget:Player({
    options = {
        {
            icon = "fas fa-ticket-alt",
            label = "Giv en Fakture",
            job = "pizzajob",
            num = 1,
            action = function(entity)
                PizzajobMenu(NetworkGetPlayerIndexFromPed(entity)) 
            end
        }
    },
    distance = 2 
})

exports.qtarget:Player({
    options = {
        {
            icon = "fas fa-ticket-alt",
            label = "Giv en Fakture",
            job = "pizzajob",
            action = function(entity)
                SendFine(NetworkGetPlayerIndexFromPed(entity))
            end
        }
    },
    distance = 2 
})

Citizen.CreateThread(function()
    while ESX == nil do
        ESX = exports["es_extended"]:getSharedObject()
        Citizen.Wait(1000)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(1000)
    end

    while not ESX.IsPlayerLoaded() do
        Wait(1000)
    end
    
    ESX.PlayerData = ESX.GetPlayerData()
    PlayerLoaded = true

    InitPizzaJob()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job

    InitPizzaJob()
end)

InitPizzaJob = function()
    if ESX.PlayerData.job.name ~= "pizzajob" then
        hasPizzaJob = false
    end
    
    if ESX.PlayerData.job.name == "pizzajob" then
        if hasPizzaJob then 
            return 
        end
        
        hasPizzaJob = true
    end
end

exports.ox_target:addSphereZone({
    coords = vector3(298.65, -994.66, 29.27),
    radius = 2.0,
    debug = false,
    options = {
        {
            icon = "fa-solid fa-car",
            label = "Åben Garage",
            distance = 2.0,
            job = 'pizzajob',
            onSelect = function()
                openGarage()
            end
        }
    }
  })

  openGarage = function()
    lib.registerContext({
        id = 'openGarage',
        title = 'Garage',
        options = {
        {
            title = 'Tailgater',
            description = false,
            icon = 'car',
            onSelect = function()
                if lib.progressBar({
                    duration = 5000,
                    label = 'Finder Køretøj...',
                    useWhileDead = false,
                    canCancel = false,
                    disable = {
                        car = true,
                    },
                }) then end

                SpawnVeh("tailgater")
            end
            },
            {
                title = 'Landstalker',
                description = false,
                icon = 'car',
                onSelect = function()
                    if lib.progressBar({
                        duration = 5000,
                        label = 'Finder Køretøj...',
                        useWhileDead = false,
                        canCancel = false,
                        disable = {
                            car = true,
                        },
                    }) then end

                    SpawnVeh("landstalker2")
                end
            }
        }
    })
    lib.showContext('openGarage')
  end

SetVehicleMaxMods = function(vehicle)
    local props = {
        modEngine = 2,
        modBrakes = 2,
        modTransmission = 2,
        modSuspension = 3,
        modTurbo = true
    }
    
    ESX.Game.SetVehicleProperties(vehicle, props)
end

function SpawnVeh(vehicle)
    local hash = vehicle
    local car = GetHashKey(hash)
    RequestModel(car)
    while not HasModelLoaded(car) do
        Citizen.Wait(1000)
    end

    local playerPed = GetPlayerPed(-1)
    local pos = GetEntityCoords(playerPed)

    local spawnedVehicle = CreateVehicle(car, 294.00, -998.74, 29.21, 90.99, true, false)
    SetVehicleNumberPlateText(spawnedVehicle, exports['esx_vehicleshop']:GeneratedCustomPlate('PIZZA', 3))
    SetVehicleDirtLevel(spawnedVehicle, 0.1)
    SetVehicleMaxMods(spawnedVehicle)

    local spawnedVehicleProps = ESX.Game.GetVehicleProperties(spawnedVehicle)
    TriggerServerEvent('setOwnedServer', spawnedVehicleProps)
end

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(6)
        
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'pizzajob' then
            local coords = GetEntityCoords(GetPlayerPed(-1))
            
            if GetDistanceBetweenCoords(coords, 294.00, -998.74, false) <= 2 then
                DrawMarker(27, 294.00, -998.74, 29.21-0.97,  0.0, 0.0, 0.0, 0, 0.0, 0.0, 4.7, 4.7, 4.7, 255, 0, 0, 100, false, true, 10, false, false, false, false)
                
                if IsControlJustReleased(0, 38) then 
                    TriggerEvent("esx:deleteVehicle")
                    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                    local distance3 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), 294.00, -998.74, 29.21, true)
  
                    DeleteVehicle(veh)
                    exports['mythic_notify']:DoHudText('success', 'Du har parkeret dit køretøj')
                end
            end
        end
    end
  end)


  