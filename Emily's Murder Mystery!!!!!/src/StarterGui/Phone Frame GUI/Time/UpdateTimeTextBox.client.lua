local textBox = script.Parent

local function updateTime()
    local currentTime = os.date("%I:%M %p") -- Format the time as H:MM AM/PM
    currentTime = currentTime:gsub("^0", "") -- Remove leading zero if present
    textBox.Text = currentTime
end

-- Update the time every second
while true do
    updateTime()
    task.wait(1)
end

