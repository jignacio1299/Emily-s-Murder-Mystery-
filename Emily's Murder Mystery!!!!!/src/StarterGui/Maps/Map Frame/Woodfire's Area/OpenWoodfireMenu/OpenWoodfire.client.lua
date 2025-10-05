local button = script.Parent
local menu = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Woodfire")

local function openMenu()
	menu.Enabled = true
end

button.MouseButton1Click:Connect(openMenu)
