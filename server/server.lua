ESX = exports["aurora_base"]:getSharedObject()

RegisterCommand('fps', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('DevMaster:fpsmenu', _source)
end)
