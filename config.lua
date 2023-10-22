_CONFIG = 
{
    locale = "en", -- Sprache (de/en)

    PanicButtons = 
    {
        {
            item = "panicbutton",
            cooldownMinutes = 1,
            useJobWhitelist = true,
            jobWhitelist = {"police", "fib", "swat"},
            jobBlacklist = {},
            blip =
            {
                durationMinutes = 1, -- Delete Blip after one Minute
                label = "Panicbutton!",
                sprite = 3, -- https://wiki.rage.mp/index.php?title=Blips
                color = 3, -- https://wiki.rage.mp/index.php?title=Blips
                asShortRange = true, -- true = only shows blip on minimap when player is close to it
                scale = 0.9
            },
            setWayPoint = true, -- Set New Waypoint For Panic Button
        },
        {
            item = "panicbutton2",
            cooldownMinutes = 1,
            useJobWhitelist = false,
            jobWhitelist = {},
            jobBlacklist = {"police", "ambulance", "unemployed"},
            blip =
            {
                durationMinutes = 1, -- Delete Blip after one Minute
                label = "Panicbutton!",
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
    RegisterNetEvent("5d-panicbutton:notify", function(msg)
         ESX.ShowNotification(msg)
    end)
end
