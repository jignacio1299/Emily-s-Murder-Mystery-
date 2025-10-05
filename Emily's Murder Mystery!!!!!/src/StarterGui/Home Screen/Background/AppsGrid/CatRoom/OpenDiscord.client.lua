local button = script.Parent -- The button this script is a child of
--local otherGui = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("OtherGui")
local homeGUI = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Home Screen")
local password = script.Parent.Parent.Parent.Parent.Parent:WaitForChild("Password CatRoom")

-- Function to show the other GUI
local function onButtonClicked()
	password.Enabled = true

end

-- Connect the function to the button click event
button.MouseButton1Click:Connect(onButtonClicked)