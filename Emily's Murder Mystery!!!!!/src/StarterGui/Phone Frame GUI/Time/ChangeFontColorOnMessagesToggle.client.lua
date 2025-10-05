local textLabel = script.Parent
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local messagesGui = playerGui:WaitForChild("Messages")
local notesGui = playerGui:WaitForChild("Notes")
local mapsGui = playerGui:WaitForChild("Maps")
local gmailGui = playerGui:WaitForChild("Gmail")

local function updateFontColor()
    if messagesGui.Enabled or notesGui.enabled or mapsGui.enabled or gmailGui.enabled then
        textLabel.TextColor3 = Color3.new(0, 0, 0) -- Black
    else
        textLabel.TextColor3 = Color3.new(1, 1, 1) -- White
    end
end

-- Connect to the Changed event of the Messages ScreenGui
messagesGui:GetPropertyChangedSignal("Enabled"):Connect(updateFontColor)
notesGui:GetPropertyChangedSignal("Enabled"):Connect(updateFontColor)
mapsGui:GetPropertyChangedSignal("Enabled"):Connect(updateFontColor)
gmailGui:GetPropertyChangedSignal("Enabled"):Connect(updateFontColor)

-- Initial update
updateFontColor()

