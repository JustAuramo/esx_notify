local Debug = ESX.GetConfig().EnableDebug

---@param type string the notification type
---@param length number the length of the notification
---@param message any the message :D
local function Notify(notificatonType, length, message)

    if Debug then
        print("1 ".. tostring(notificatonType))
        print("2 "..tostring(length))
        print("3 "..message)
    end

    if type(notificatonType) ~= "string" then
        notificatonType = "info"
    end

    if type(length) ~= "number" then
        length = 3000
    end

    if Debug then
        print("4 ".. tostring(notificatonType))
        print("5 "..tostring(length))
        print("6 "..message)
    end

    lib.notify({
        title = 'Palvelin Ilmoitus',
        description = message,
        duration = length or 3000,
        type = type(types) == 'string' and types or 'info',
        style = {
            backgroundColor = '#141517',
            color = '#C1C2C5',
            ['.description'] = {
              color = '#909296'
            }
        },
    })
end


 exports('Notify', Notify)
RegisterNetEvent("ESX:Notify", Notify)

if Debug then
    RegisterCommand("oldnotify", function()
        ESX.ShowNotification('No Waypoint Set.', true, false, 140)
    end)

    RegisterCommand("notify", function()
        ESX.ShowNotification("You Recived ~br~ 1x ball~s~!", "success", 3000)
    end)

    RegisterCommand("notify1", function()
        ESX.ShowNotification("Well ~g~Done~s~!", "success", 3000)
    end)

    RegisterCommand("notify2", function()
        ESX.ShowNotification("Information Recived", "info", 3000)
    end)

    RegisterCommand("notify3", function()
        ESX.ShowNotification("You Did something ~r~WRONG~s~!", "error", 3000)
    end)
end
