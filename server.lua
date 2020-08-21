ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--[[ RegisterCommand("gazeta", function(source) 
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    local xPlayers = ESX.GetPlayers()
    
    local cops = 0
    local ems = 0
    local mechanic = 0
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if xPlayer.job.name == 'police' then
            cops = cops + 1
        end
        if xPlayer.job.name == 'ambulance' then
            ems = ems + 1
        end
        if xPlayer.job.name == 'mechanic' then
            mechanic = mechanic + 1
        end
    end
    TriggerClientEvent('esx:showNotification', source, "Zadzwoniles pod numzer z gazety i powiedziano Ci, że na służbie jest aktualnie~b~ " .. cops ..  " Policjantów")
    TriggerClientEvent('esx:showNotification', source, "Zadzwoniles pod numzer z gazety i powiedziano Ci, że na służbie jest aktualnie~r~ " .. ems ..  " Medyków")
    TriggerClientEvent('esx:showNotification', source, "Zadzwoniles pod numzer z gazety i powiedziano Ci, że na służbie jest aktualnie~y~ " .. mechanic ..  " Mechaników")

	TriggerClientEvent('esx_lista:uzyj', _source)
end)--]]

ESX.RegisterUsableItem('gazeta', function(source)
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
    local xPlayers = ESX.GetPlayers()
    
    local cops = 0
    local ems = 0
    local mechanic = 0
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if xPlayer.job.name == 'police' then
            cops = cops + 1
        end
        if xPlayer.job.name == 'ambulance' then
            ems = ems + 1
        end
        if xPlayer.job.name == 'mechanic' then
            mechanic = mechanic + 1
        end
    end
    TriggerClientEvent('esx:showNotification', source, "Zadzwoniles pod numzer z gazety i powiedziano Ci, że na służbie jest aktualnie~b~ " .. cops ..  " Policjantów")
    TriggerClientEvent('esx:showNotification', source, "Zadzwoniles pod numzer z gazety i powiedziano Ci, że na służbie jest aktualnie~r~ " .. ems ..  " Medyków")
    TriggerClientEvent('esx:showNotification', source, "Zadzwoniles pod numzer z gazety i powiedziano Ci, że na służbie jest aktualnie~y~ " .. mechanic ..  " Mechaników")

	TriggerClientEvent('esx_lista:uzyj', _source)
end)