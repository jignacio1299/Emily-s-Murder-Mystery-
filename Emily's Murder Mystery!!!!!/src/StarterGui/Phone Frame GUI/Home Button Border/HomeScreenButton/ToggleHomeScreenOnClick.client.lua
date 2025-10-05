local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local homeScreenGui = playerGui:WaitForChild("Home Screen")
local frameGUI = playerGui:FindFirstChild("Phone Frame GUI")

local button = script.Parent

local function toggleHomeScreen()
    for _, gui in playerGui:GetChildren() do
        if gui:IsA("ScreenGui") then
            gui.Enabled = false
        end
    end
	homeScreenGui.Enabled = true
	frameGUI.Enabled = true
end

button.MouseButton1Click:Connect(toggleHomeScreen)

