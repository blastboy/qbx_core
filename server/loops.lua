lib.cron.new(('*/%s * * * *'):format(Config.UpdateInterval), function()
    for src, player in pairs(QBX.Players) do
        if player then
            local newHunger = player.PlayerData.metadata.hunger - Config.Player.HungerRate
            local newThirst = player.PlayerData.metadata.thirst - Config.Player.ThirstRate
            if newHunger <= 0 then
                newHunger = 0
            end
            if newThirst <= 0 then
                newThirst = 0
            end
            player.Functions.SetMetaData('thirst', newThirst)
            player.Functions.SetMetaData('hunger', newHunger)
            TriggerClientEvent('hud:client:UpdateNeeds', src, newHunger, newThirst)
            player.Functions.Save()
        end
    end
end)

local function sendPaycheck(player, payment)
    player.Functions.AddMoney('bank', payment)
    TriggerClientEvent('QBCore:Notify', player.PlayerData.source, Lang:t('info.received_paycheck', {value = payment}))
end

local function pay(player)
    local job = player.PlayerData.job
    local payment = QBX.Shared.Jobs[job.name].grades[job.grade.level].payment or job.payment
    if payment <= 0 then return end
    if not QBX.Shared.Jobs[job.name].offDutyPay and not job.onduty then return end
    if not Config.Money.PaycheckSociety then
        sendPaycheck(player, payment)
        return
    end
    local account = exports['qbx_management']:GetAccount(job.name)
    if not account or account == 0 then -- Checks if player is employed by a society
        sendPaycheck(player, payment)
        return
    end
    if account < payment then -- Checks if company has enough money to pay society
        TriggerClientEvent('QBCore:Notify', player.PlayerData.source, Lang:t('error.company_too_poor'), 'error')
        return
    end
    exports['qbx_management']:RemoveMoney(job.name, payment)
    sendPaycheck(player, payment)
end

lib.cron.new(('*/%s * * * *'):format(Config.Money.PaycheckTimeout), function()
    for _, player in pairs(QBX.Players) do
        pay(player)
    end
end)
