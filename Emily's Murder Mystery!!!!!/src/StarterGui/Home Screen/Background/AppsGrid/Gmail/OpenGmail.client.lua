local button = script.Parent -- The button this script is a child of
--local otherGui = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("OtherGui")
local Maps = script.Parent.Parent.Parent.Parent.Parent:WaitForChild("Password Gmail")

-- Function to show the other GUI
local function onButtonClicked()
	Maps.Enabled = true

end

-- Connect the function to the button click event
button.MouseButton1Click:Connect(onButtonClicked)