local textBox = script.Parent

local function updateTime()
	local currentTime = os.date("%I:%M") -- Format the time as HH:MM AM/PM
	textBox.Text = currentTime
end

-- Update the time every second
while true do
	updateTime()
	task.wait(1)
end

