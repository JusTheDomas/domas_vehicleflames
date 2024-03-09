Citizen.CreateThread(function()
    RegisterItems() -- on resource start
end)

function RemoveItemOnUse(itemName, player) -- Brings itemname & players server id
    if Config.UseOx then
        local xPlayer = ESX.GetPlayerFromId(player)
        xPlayer.removeInventoryItem(itemName, 1)
    else
        local QBCore = exports['qb-core']:GetCoreObject()
        local Player = QBCore.Functions.GetPlayer(player)

        if not Player then return end
        Player.Functions.RemoveItem(itemName, 1)
        --print("Add your remove item for different framework. Location: Domas_VehicleFlames/server/utils.lua line 10")
    end
end

function RegisterItems()
    if Config.UseOx then
        local itemcount = 0
        for key, value in pairs(Config.Flames) do
            local itemLabel = value.label
            local itemName = value.item
            local itemType = value.type
            local itemSound = value.sound

            ESX.RegisterUsableItem(itemName, function(source)
                local xPlayer = ESX.GetPlayerFromId(source)
                xPlayer.triggerEvent(Config.Trigger..'InstallStart', itemLabel, itemName, itemType, itemSound)
            end)
            if Config.Debug then
                print('Registrated item: '..itemName)
                itemcount = itemcount + 1
                print('Total chips registrated: '..itemcount)
            end
        end
    else
        local QBCore = exports['qb-core']:GetCoreObject()
        local itemcount = 0
        for key, value in pairs(Config.Flames) do
            local itemLabel = value.label
            local itemName = value.item
            local itemType = value.type
            local itemSound = value.sound

            QBCore.Functions.CreateUseableItem(itemName, function(source, item)
                local Player = QBCore.Functions.GetPlayer(source)
                if not Player.Functions.GetItemByName(item.name) then return end
                TriggerClientEvent(Config.Trigger..'InstallStart', source, itemLabel, itemName, itemType, itemSound)
                --Player.triggerEvent(Config.Trigger..'InstallStart', itemLabel, itemName, itemType, itemSound)
            end)


            if Config.Debug then
                print('Registrated item: '..itemName)
                itemcount = itemcount + 1
                print('Total chips registrated: '..itemcount)
            end
        end
    end
end

if Config.NativeChipGetting and Config.UseOx then
    ESX.RegisterUsableItem(Config.NativeChipGettingItem, function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.triggerEvent(Config.Trigger..'mechas_laptopas')
    end)

    RegisterServerEvent(Config.Trigger..'mecholaptopas_pirkti')
    AddEventHandler(Config.Trigger..'mecholaptopas_pirkti', function(itemname, Lygis, finalPrice)
        local xPlayer = ESX.GetPlayerFromId(source)
        local shaibos = xPlayer.getAccount('bank').money
        if shaibos >= finalPrice then
            xPlayer.removeAccountMoney('bank', finalPrice)
            xPlayer.addInventoryItem(itemname, 1)
        else
            Notify(Config.Text['no_money'], 'error')
        end
    end)
end

if Config.EnableChipRemoveing then
    if Config.UseOx then
        ESX.RegisterUsableItem(Config.ItemNameForRemove, function(source)
            local xPlayer = ESX.GetPlayerFromId(source)
            TriggerClientEvent(Config.Trigger..'startRemove', source)
        end)
    else
        local QBCore = exports['qb-core']:GetCoreObject()
        QBCore.Functions.CreateUseableItem(Config.ItemNameForRemove, function(source, item)
            local Player = QBCore.Functions.GetPlayer(source)
            if not Player.Functions.GetItemByName(item.name) then return end
            TriggerClientEvent(Config.Trigger..'startRemove', source)
        end)
    end
end

function GetIdentifier(id)
    print("@ia")
    if not Config.RemoveLicensePrefix then
        if Config.Debug then
            print("Player's id: "..json.encode(id))
        end
        local newid = GetPlayerIdentifierByType(id, 'license')
        if Config.Debug then
            print("Identifier: "..json.encode(newid))
        end
        return newid
    else
        if Config.Debug then
            print("Player's id: "..json.encode(id))
        end
        local newid = GetPlayerIdentifierByType(id, 'license')
        local newids = string.sub(newid, 9)
        if Config.Debug then
            print("Identifier: "..json.encode(newids))
        end
        return newids
    end
end