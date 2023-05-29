--[[ 
    Fibaro HC3 Restart Script
    This script restarts the Fibaro HC3 controller every night.
    Instructions:
    1. Create a new Virtual Device in the Fibaro HC3 interface.
    2. Assign this script to the new Virtual Device.
    3. Schedule the Virtual Device to run every night.
    Note: Make sure to update the 'RESTART_TIME' variable with the desired restart time.
--]]

-- Configuration
local RESTART_TIME = "04:00" -- Set the desired restart time (24-hour format)

-- Get the current time
local currentDate = os.date("*t")
local restartDate = os.date("*t")
restartDate.hour = tonumber(RESTART_TIME:sub(1, 2))
restartDate.min = tonumber(RESTART_TIME:sub(4, 5))
restartDate.sec = 0

-- Calculate the time difference until the restart time
local timeDifference = os.time(restartDate) - os.time(currentDate)

-- Check if the restart time has already passed for today
if timeDifference < 0 then
    -- Add one day to the restart time
    timeDifference = timeDifference + 24 * 60 * 60
end

-- Function to restart the Fibaro HC3 controller
local function restartHC3()
    -- Perform the restart by sending an API request
    -- Replace 'YOUR_HC3_IP' with the actual IP address of your Fibaro HC3 controller
    local hc3IP = "YOUR_HC3_IP"
    local url = "http://" .. hc3IP .. "/api/settings/reboot"
    local http = net.HTTPClient()

    http:request(url, {
        options = {
            method = 'POST',
            headers = { ['Authorization'] = 'Bearer fibaro-api-token' },
            timeout = 5000
        },
        success = function(response)
            fibaro:debug("Fibaro HC3 has been restarted.")
        end,
        error = function(error)
            fibaro:debug("Error restarting Fibaro HC3: " .. error)
        end
    })
end

-- Schedule the restart
fibaro.setTimeout(timeDifference * 1000, restartHC3)
fibaro:debug("Fibaro HC3 restart scheduled for " .. RESTART_TIME)
