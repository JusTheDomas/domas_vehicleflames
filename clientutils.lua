function CheckJob() -- Only in use if Config.JobCheck -- Brings value of player's server Id
    local WhatToReturn = false
    if Config.UseOx then
        local playerPed = PlayerPedId()
        local xjob = ESX.PlayerData.job.name
        if Config.Debug then
            print("job:  " .. xjob)
        end
        if xjob == Config.JobName then
            WhatToReturn = true
        else
            WhatToReturn =  false
        end
    else
        local QBCore = exports['qb-core']:GetCoreObject()
        QBCore.Functions.GetPlayerData(function(PlayerData)
            local PlayerJob = PlayerData.job.name
            print("PlayerJob: " .. PlayerJob)
            if PlayerJob == Config.JobName then
                WhatToReturn = true
                if Config.Debug then
                    print("Mechanic")
                end
            else
                WhatToReturn = false
            end
        end)
    end
    return WhatToReturn
end


function Installing()
    if Config.UseOx then
        lib.progressCircle({
            duration = Config.InstallingFunctionTime,
            label = Config.Text['installing'],
            useWhileDead = false,
            canCancel = false, -- Cannot be canceled
            disable = {
                car = true
            },
            anim = {
                dict = 'mp_player_intdrink',
                clip = 'loop_bottle'
            }
        })
    else
        local QBCore = exports['qb-core']:GetCoreObject()
        QBCore.Functions.Progressbar("random_ta456sk", Config.Text['installing'], Config.InstallingFunctionTime, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true
        }, {
            animDict = "mp_suicide",
            anim = "pill",
            flags = 49
        }, {}, {}, function()
            -- Done
        end, function()
            -- Cancel
        end)

    end
end


function CustomPlate(vehicle)
    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= false then
        if Config.UseOx then
            local plate = ESX.Game.GetVehicleProperties(vehicle).plate
            if Config.Debug then
                print("plate: "..plate)
            end
            return plate
        else
            local plate = GetVehicleNumberPlateText(vehicle)
            if Config.Debug then
                print("plate: "..plate)
            end
            return plate
        end
    end
end











-- Logic for getting chips

if Config.NativeChipGetting and Config.UseOx then
    RegisterNetEvent(Config.Trigger..'mechas_laptopas')
    AddEventHandler(Config.Trigger..'mechas_laptopas', function()
        if Config.JobCheck then
            if ESX.PlayerData.job.name == Config.JobName then
                local input = lib.inputDialog(Config.Text['mech_laptop'], {{
                    type = 'input',
                    label = Config.Text['engine'],
                    description = Config.Text['example_text_laptop'],
                    required = true
                }, {
                    type = 'number',
                    label = Config.Text['progralvl'],
                    description = '(1-5)',
                    icon = 'hashtag',
                    required = true,
                    min = 1,
                    max = 5
                }})
                local Variklis = string.upper(input[1])
                local Lygis = input[2]
                local itemname = ''
                if Variklis == 'AVESV' then
                    itemname = 'domas_avesv_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'BRABUS850' then
                    itemname = 'domas_brabus850_'..Lygis
                elseif Variklis == 'DIABLOV12' then
                    itemname = 'domas_diablov12_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'F40V8' then
                    itemname = 'domas_f40v8_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'F50V12' then
                    itemname = 'domas_f50v12_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'FERRARIF12' then
                    itemname = 'domas_ferrarif12_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'GT3FLAT6' then
                    itemname = 'domas_gt3flat6_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'LAMBOV10' then
                    itemname = 'domas_lambov10_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'MURCIEV12' then
                    itemname = 'domas_murciev12_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'MUSV8' then
                    itemname = 'domas_musv8_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'PREDATORV8' then
                    itemname = 'domas_predatorv8_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'RB26DETT' then
                    itemname = 'domas_rb26dett_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'ROTARY7' then
                    itemname = 'domas_rotary7_'..Lygis
                    Prog(itemname, Lygis)
                elseif Variklis == 'SESTOV10' then
                    itemname = 'domas_sestov10_'..Lygis
                    Prog(itemname, Lygis)
                else
                    Notify(Config.Text['no_ship_for_engine']..Variklis, 'error')
                end
            else
                if Config.Debug then
                    print("Not a mechanic")
                end
            end
        else
            local input = lib.inputDialog(Config.Text['mech_laptop'], {{
                type = 'input',
                label = Config.Text['engine'],
                description = Config.Text['example_text_laptop'],
                required = true
            }, {
                type = 'number',
                label = Config.Text['progralvl'],
                description = '(1-5)',
                icon = 'hashtag',
                required = true,
                min = 1,
                max = 5
            }})
            local Variklis = string.upper(input[1])
            local Lygis = input[2]
            local itemname = ''
            if Variklis == 'AVESV' then
                itemname = 'domas_avesv_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'BRABUS850' then
                itemname = 'domas_brabus850_'..Lygis
            elseif Variklis == 'DIABLOV12' then
                itemname = 'domas_diablov12_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'F40V8' then
                itemname = 'domas_f40v8_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'F50V12' then
                itemname = 'domas_f50v12_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'FERRARIF12' then
                itemname = 'domas_ferrarif12_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'GT3FLAT6' then
                itemname = 'domas_gt3flat6_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'LAMBOV10' then
                itemname = 'domas_lambov10_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'MURCIEV12' then
                itemname = 'domas_murciev12_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'MUSV8' then
                itemname = 'domas_musv8_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'PREDATORV8' then
                itemname = 'domas_predatorv8_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'RB26DETT' then
                itemname = 'domas_rb26dett_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'ROTARY7' then
                itemname = 'domas_rotary7_'..Lygis
                Prog(itemname, Lygis)
            elseif Variklis == 'SESTOV10' then
                itemname = 'domas_sestov10_'..Lygis
                Prog(itemname, Lygis)
            else
                Notify(Config.Text['no_ship_for_engine']..Variklis, 'error')
            end
        end
    end)

    function Prog(itemname, Lygis)
        if lib.progressBar({
            duration = math.random(5000, 10000),
            label = Config.Text['searching'],
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
            },
            anim = {
                dict = 'amb@world_human_tourist_map@male@base',
                clip = 'base'
            },
            prop = {
                model = 'prop_cs_tablet',
                pos = vec3(0.0, -0.03, 0.0),
                rot = vec3(20.0, -90.0, 0.0)
            },
        }) then
            ConfirmCheck(itemname, Lygis)
        else
            Notify(Config.Text['cancelled_search'], 'error')
        end
    end

    function ConfirmCheck(itemname, Lygis)
        local price = math.random(5000, 7000)
        local finalPrice = price * Lygis
        local alert = lib.alertDialog({
            header = Config.Text['chip_found'],
            content = Config.Text['download']..finalPrice.. Config.Text['agree'],
            centered = true,
            cancel = true
        })
        if alert == 'confirm' then
            DuotiPrograma(itemname, Lygis, finalPrice)
        end
    end

    function DuotiPrograma(itemname, Lygis, finalPrice)
        TriggerServerEvent(Config.Trigger..'mecholaptopas_pirkti', itemname, Lygis, finalPrice)
    end

end
