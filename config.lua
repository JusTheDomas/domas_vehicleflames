Config = {}

Config.FlameSize = 2.4

Config.UseOx = true -- If using OxLib -- For more optimized detecting vehicle enter/exit
Config.JobCheck = true
Config.JobName = 'mechanic' -- Job name who will be able to install these mods
Config.RemoveItem = true

Config.NativeChipGetting = true -- If you want to use mechanic laptop logic to get chips (the way I showed in the video)
Config.NativeChipGettingItem = 'mechacniko_laptop' -- Name of the item if NativeChipGetting is true

Config.EnableChipRemoveing = true -- If you want to enable chip removing system
-- These 3 will only matter if EnableChipRemoveing is true
Config.RemoveOwnlyOwner = true -- Only owner can remove the program
Config.ItemNameForRemove = 'domas_tool' -- Name of the item in the inventory
Config.RemoveLicensePrefix = true -- Some frameworks remove "license:" before identifiers, so heres an option for that, also set to false if using QB

Config.PlayCustomSounds = true -- If using LondonStudios PlayCustomSounds (https://github.com/LondonStudios/PlayCustomSounds) so the sounds sounds better, if false interact-sound will be used

Config.ShootFlamesButton = 21 -- Left Shift
Config.DisablePopButton = true

Config.AutoPopOnDownshift = true -- Config.DisablePopButton must be true
Config.AutoAlwaysPop = false -- Config.AutoPopOnDownshift must be false Config.DisablePopButton must be true
Config.AutoPopFrequency = 100

Config.Database = 'oxmysql' -- oxmysql or mysql-async

Config.Debug = false

Config.HowFarSound = 50 -- How far from vehicle players will be able to hear the pops
Config.Volume = 0.2 --Volume of the sound

-- How much time wait for next pop
Config.Type1Frequency = 300
Config.Type2Frequency = 250
Config.Type3Frequency = 200
Config.Type4Frequency = 150
Config.Type5Frequency = 5

Config.Trigger = 'Domas_Flames'

function Notify(text,type)
    if Config.UseOx then
        ESX.ShowNotification(text, type)
    else
        local QBCore = exports['qb-core']:GetCoreObject()
        QBCore.Functions.Notify(text, type, 5000)
    end
end

Config.InstallingFunction = true -- You can edit it at client/utils.lua
Config.InstallingFunctionTime = 5000 -- Wait in ms before, triggering server-side events

Config.Text = {
    ['not_mechanic'] = "You are not a mechanic",
    ['no_vehicle'] = "You are not in a car",
    ['install_succ'] = "You installed program successful",

    ['mech_laptop'] = "Mechanic Laptop",
    ['progralvl'] = "Program Level",
    ['engine'] = "Engine",
    ['example_text_laptop'] = "Engine name (pvz.:f40v8, f50v12, murciev12",
    ['no_ship_for_engine'] = "The is no chip for engine: ",
    ['cancelled_search'] = "Search cancelled",
    ['installing'] = "Installing program",

    ['chip_found'] = "The chip you searched for was found",

    ['download'] = "If you want to download the chip it will cost you ",
    ['agree'] = " €, do you agree?",
    ['no_money'] = 'You don`t have enough money',
    ['you_dont_own'] = 'This is not your vehicle',
    ['no_program'] = 'This vehicle does not have any program installed',
    ['removed_program'] = 'You removed program successfuly',
    ['searching'] = 'Searching...',
}

Config.Flames = {
    Avesv1 = {
        label = 'Level 1 Tuning for Avesv engine', -- Label
        item = 'domas_avesv_1', -- How item called in your inventory
        type = 1, -- 1, 2 or 3 the higher the value the faster it will shoot flames
        sound = 'Avesv', -- Sound name from interact-sound
    },
    Avesv2 = {
        label = 'Level 2 Tuning for Avesv engine',
        item = 'domas_avesv_2',
        type = 2,
        sound = 'Avesv',
    },

    Avesv3 = {
        label = 'Level 3 Tuning for Avesv engine',
        item = 'domas_avesv_3',
        type = 3,
        sound = 'Avesv',
    },

    Avesv4 = {
        label = 'Level 4 Tuning for Avesv engine',
        item = 'domas_avesv_4',
        type = 4,
        sound = 'Avesv',
    },

    Avesv5 = {
        label = 'Level 5 Tuning for Avesv engine',
        item = 'domas_avesv_5',
        type = 5,
        sound = 'Avesv',
    },

    -- Brabus850

    brabus8501 = {
        label = 'Level 1 Tuning for brabus850 engine',
        item = 'domas_brabus850_1',
        type = 1,
        sound = 'brabus850',
    },
    brabus8502 = {
        label = 'Level 2 Tuning for brabus850 engine',
        item = 'domas_brabus850_2',
        type = 2,
        sound = 'brabus850',
    },

    brabus8503 = {
        label = 'Level 3 Tuning for brabus850 engine',
        item = 'domas_brabus850_3',
        type = 3,
        sound = 'brabus850',
    },

    brabus8504 = {
        label = 'Level 4 Tuning for brabus850 engine',
        item = 'domas_brabus850_4',
        type = 4,
        sound = 'brabus850',
    },

    brabus8505 = {
        label = 'Level 5 Tuning for brabus850 engine',
        item = 'domas_brabus850_5',
        type = 5,
        sound = 'brabus850',
    },

    -- diablov12

    diablov121 = {
        label = 'Level 1 Tuning for diablov12 engine',
        item = 'domas_diablov12_1',
        type = 1,
        sound = 'diablov12',
    },
    diablov122 = {
        label = 'Level 2 Tuning for diablov12 engine',
        item = 'domas_diablov12_2',
        type = 2,
        sound = 'diablov12',
    },

    diablov123 = {
        label = 'Level 3 Tuning for diablov12 engine',
        item = 'domas_diablov12_3',
        type = 3,
        sound = 'diablov12',
    },

    diablov124 = {
        label = 'Level 4 Tuning for diablov12 engine',
        item = 'domas_diablov12_4',
        type = 4,
        sound = 'diablov12',
    },

    diablov125 = {
        label = 'Level 5 Tuning for diablov12 engine',
        item = 'domas_diablov12_5',
        type = 5,
        sound = 'diablov12',
    },

        -- f40v8

    f40v81 = {
        label = 'Level 1 Tuning for f40v8 engine',
        item = 'domas_f40v8_1',
        type = 1,
        sound = 'f40v8',
    },
    f40v82 = {
        label = 'Level 2 Tuning for f40v8 engine',
        item = 'domas_f40v8_2',
        type = 2,
        sound = 'f40v8',
    },

    f40v83 = {
        label = 'Level 3 Tuning for f40v8 engine',
        item = 'domas_f40v8_3',
        type = 3,
        sound = 'f40v8',
    },

    f40v84 = {
        label = 'Level 4 Tuning for f40v8 engine',
        item = 'domas_f40v8_4',
        type = 4,
        sound = 'f40v8',
    },

    f40v85 = {
        label = 'Level 5 Tuning for f40v8 engine',
        item = 'domas_f40v8_5',
        type = 5,
        sound = 'f40v8',
    },

    -- f50v12

    f50v121 = {
        label = 'Level 1 Tuning for f50v12 engine',
        item = 'domas_f50v12_1',
        type = 1,
        sound = 'f50v12',
    },
    f50v122 = {
        label = 'Level 2 Tuning for f50v12 engine',
        item = 'domas_f50v12_2',
        type = 2,
        sound = 'f50v12',
    },

    f50v123 = {
        label = 'Level 3 Tuning for f50v12 engine',
        item = 'domas_f50v12_3',
        type = 3,
        sound = 'f50v12',
    },

    f50v124 = {
        label = 'Level 4 Tuning for f50v12 engine',
        item = 'domas_f50v12_4',
        type = 4,
        sound = 'f50v12',
    },

    f50v125 = {
        label = 'Level 5 Tuning for f50v12 engine',
        item = 'domas_f50v12_5',
        type = 5,
        sound = 'f50v12',
    },


    -- ferrarif12

    ferrarif121 = {
        label = 'Level 1 Tuning for ferrarif12 engine',
        item = 'domas_ferrarif12_1',
        type = 1,
        sound = 'ferrarif12',
    },
    ferrarif122 = {
        label = 'Level 2 Tuning for ferrarif12 engine',
        item = 'domas_ferrarif12_2',
        type = 2,
        sound = 'ferrarif12',
    },

    ferrarif123 = {
        label = 'Level 3 Tuning for ferrarif12 engine',
        item = 'domas_ferrarif12_3',
        type = 3,
        sound = 'ferrarif12',
    },

    ferrarif124 = {
        label = 'Level 4 Tuning for ferrarif12 engine',
        item = 'domas_ferrarif12_4',
        type = 4,
        sound = 'ferrarif12',
    },

    ferrarif125 = {
        label = 'Level 5 Tuning for ferrarif12 engine',
        item = 'domas_ferrarif12_5',
        type = 5,
        sound = 'ferrarif12',
    },


    -- gt3flat6

    gt3flat61 = {
        label = 'Level 1 Tuning for gt3flat6 engine',
        item = 'domas_gt3flat6_1',
        type = 1,
        sound = 'gt3flat6',
    },
    gt3flat62 = {
        label = 'Level 2 Tuning for gt3flat6 engine',
        item = 'domas_gt3flat6_2',
        type = 2,
        sound = 'gt3flat6',
    },

    gt3flat63 = {
        label = 'Level 3 Tuning for gt3flat6 engine',
        item = 'domas_gt3flat6_3',
        type = 3,
        sound = 'gt3flat6',
    },

    gt3flat64 = {
        label = 'Level 4 Tuning for gt3flat6 engine',
        item = 'domas_gt3flat6_4',
        type = 4,
        sound = 'gt3flat6',
    },

    gt3flat65 = {
        label = 'Level 5 Tuning for gt3flat6 engine',
        item = 'domas_gt3flat6_5',
        type = 5,
        sound = 'gt3flat6',
    },

    -- lambov10

    lambov101 = {
        label = 'Level 1 Tuning for lambov10 engine',
        item = 'domas_lambov10_1',
        type = 1,
        sound = 'lambov10',
    },
    lambov102 = {
        label = 'Level 2 Tuning for lambov10 engine',
        item = 'domas_lambov10_2',
        type = 2,
        sound = 'lambov10',
    },

    lambov103 = {
        label = 'Level 3 Tuning for lambov10 engine',
        item = 'domas_lambov10_3',
        type = 3,
        sound = 'lambov10',
    },

    lambov104 = {
        label = 'Level 4 Tuning for lambov10 engine',
        item = 'domas_lambov10_4',
        type = 4,
        sound = 'lambov10',
    },

    lambov105 = {
        label = 'Level 5 Tuning for lambov10 engine',
        item = 'domas_lambov10_5',
        type = 5,
        sound = 'lambov10',
    },

    -- murciev12

    murciev121 = {
        label = 'Level 1 Tuning for murciev12 engine',
        item = 'domas_murciev12_1',
        type = 1,
        sound = 'murciev12',
    },
    murciev122 = {
        label = 'Level 2 Tuning for murciev12 engine',
        item = 'domas_murciev12_2',
        type = 2,
        sound = 'murciev12',
    },

    murciev123 = {
        label = 'Level 3 Tuning for murciev12 engine',
        item = 'domas_murciev12_3',
        type = 3,
        sound = 'murciev12',
    },

    murciev124 = {
        label = 'Level 4 Tuning for murciev12 engine',
        item = 'domas_murciev12_4',
        type = 4,
        sound = 'murciev12',
    },

    murciev125 = {
        label = 'Level 5 Tuning for murciev12 engine',
        item = 'domas_murciev12_5',
        type = 5,
        sound = 'murciev12',
    },

    -- musv8

    musv81 = {
        label = 'Level 1 Tuning for musv8 engine',
        item = 'domas_musv8_1',
        type = 1,
        sound = 'musv8',
    },
    musv82 = {
        label = 'Level 2 Tuning for musv8 engine',
        item = 'domas_musv8_2',
        type = 2,
        sound = 'musv8',
    },

    musv83 = {
        label = 'Level 3 Tuning for musv8 engine',
        item = 'domas_musv8_3',
        type = 3,
        sound = 'musv8',
    },

    musv84 = {
        label = 'Level 4 Tuning for musv8 engine',
        item = 'domas_musv8_4',
        type = 4,
        sound = 'musv8',
    },

    musv85 = {
        label = 'Level 5 Tuning for musv8 engine',
        item = 'domas_musv8_5',
        type = 5,
        sound = 'musv8',
    },

    -- predatorv8

    predatorv81 = {
        label = 'Level 1 Tuning for predatorv8 engine',
        item = 'domas_predatorv8_1',
        type = 1,
        sound = 'predatorv8',
    },
    predatorv82 = {
        label = 'Level 2 Tuning for predatorv8 engine',
        item = 'domas_predatorv8_2',
        type = 2,
        sound = 'predatorv8',
    },

    predatorv83 = {
        label = 'Level 3 Tuning for predatorv8 engine',
        item = 'domas_predatorv8_3',
        type = 3,
        sound = 'predatorv8',
    },

    predatorv84 = {
        label = 'Level 4 Tuning for predatorv8 engine',
        item = 'domas_predatorv8_4',
        type = 4,
        sound = 'predatorv8',
    },

    predatorv85 = {
        label = 'Level 5 Tuning for predatorv8 engine',
        item = 'domas_predatorv8_5',
        type = 5,
        sound = 'predatorv8',
    },

    -- rb26dett

    rb26dett1 = {
        label = 'Level 1 Tuning for rb26dett engine',
        item = 'domas_rb26dett_1',
        type = 1,
        sound = 'rb26dett',
    },
    rb26dett2 = {
        label = 'Level 2 Tuning for rb26dett engine',
        item = 'domas_rb26dett_2',
        type = 2,
        sound = 'rb26dett',
    },

    rb26dett3 = {
        label = 'Level 3 Tuning for rb26dett engine',
        item = 'domas_rb26dett_3',
        type = 3,
        sound = 'rb26dett',
    },

    rb26dett4 = {
        label = 'Level 4 Tuning for rb26dett engine',
        item = 'domas_rb26dett_4',
        type = 4,
        sound = 'rb26dett',
    },

    rb26dett5 = {
        label = 'Level 5 Tuning for rb26dett engine',
        item = 'domas_rb26dett_5',
        type = 5,
        sound = 'rb26dett',
    },

    -- rotary7

    rotary71 = {
        label = 'Level 1 Tuning for rotary7 engine',
        item = 'domas_rotary7_1',
        type = 1,
        sound = 'rotary7',
    },
    rotary72 = {
        label = 'Level 2 Tuning for rotary7 engine',
        item = 'domas_rotary7_2',
        type = 2,
        sound = 'rotary7',
    },

    rotary73 = {
        label = 'Level 3 Tuning for rotary7 engine',
        item = 'domas_rotary7_3',
        type = 3,
        sound = 'rotary7',
    },

    rotary74 = {
        label = 'Level 4 Tuning for rotary7 engine',
        item = 'domas_rotary7_4',
        type = 4,
        sound = 'rotary7',
    },

    rotary75 = {
        label = 'Level 5 Tuning for rotary7 engine',
        item = 'domas_rotary7_5',
        type = 5,
        sound = 'rotary7',
    },

    -- sestov10

    sestov101 = {
        label = 'Level 1 Tuning for sestov10 engine',
        item = 'domas_sestov10_1',
        type = 1,
        sound = 'sestov10',
    },
    sestov102 = {
        label = 'Level 2 Tuning for sestov10 engine',
        item = 'domas_sestov10_2',
        type = 2,
        sound = 'sestov10',
    },

    sestov103 = {
        label = 'Level 3 Tuning for sestov10 engine',
        item = 'domas_sestov10_3',
        type = 3,
        sound = 'sestov10',
    },

    sestov104 = {
        label = 'Level 4 Tuning for sestov10 engine',
        item = 'domas_sestov10_4',
        type = 4,
        sound = 'sestov10',
    },

    sestov105 = {
        label = 'Level 5 Tuning for sestov10 engine',
        item = 'domas_sestov10_5',
        type = 5,
        sound = 'sestov10',
    },

}

