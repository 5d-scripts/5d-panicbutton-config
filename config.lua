_CONFIG = 
{
    locale = "en", -- Select Script Language ("de"/"en")

    PanicButtons = 
    {
        { 
            item = "panicbutton", -- Item Name
            cooldownMinutes = 1, -- Item Cooldown per User
            useJobWhitelist = true, -- If set to true: use jobWhitelist. If set to false: use jobBlacklist
            jobWhitelist = {"police", "fib", "swat"}, -- Only allow the usage of this item to the whitelisted jobs.
            jobBlacklist = {}, -- Allow the usage of this item to any job, except the ones that are blacklisted.
            blip =
            {
                durationMinutes = 1, -- Delete Blip after one Minute
                label = "Panicbutton!", -- Blip Label
                sprite = 3, -- https://wiki.rage.mp/index.php?title=Blips
                color = 3, -- https://wiki.rage.mp/index.php?title=Blips
                asShortRange = true, -- true = only shows blip on minimap when player is close to it
                scale = 0.9
            },
            setWayPoint = true, -- Set New Waypoint For Panic Button
        },
        {
            item = "panicbutton2", -- Item Name
            cooldownMinutes = 1, -- Item Cooldown per User
            useJobWhitelist = false, -- If set to true: use jobWhitelist. If set to false: use jobBlacklist
            jobWhitelist = {}, -- Only allow the usage of this item to the whitelisted jobs.
            jobBlacklist = {"police", "ambulance", "unemployed"}, -- Allow the usage of this item to any job, except the ones that are blacklisted.
            blip =
            {
                durationMinutes = 1, -- Delete Blip after one Minute
                label = "Panicbutton!", -- Blip Label
                sprite = 3, -- https://wiki.rage.mp/index.php?title=Blips
                color = 3, -- https://wiki.rage.mp/index.php?title=Blips
                asShortRange = true, -- true = only shows blip on minimap when player is close to it
                scale = 0.9
            },
            setWayPoint = true, -- Set New Waypoint For Panic Button
        }
    }
}

if (not IsDuplicityVersion()) then
 -- Notify event. Can be replaced.
    ---@param message string Message to be displayed for the notify.
    ---@param type string Notify type. Either success or errror.
    RegisterNetEvent("5d-shops:notify", function(message, type)
        ESX.ShowNotification(message)
    end)
end
