local button = script.Parent
local convo = script.Parent.Parent.Parent.Parent:WaitForChild("CatRoom with Jarrette")

local function openConvo()
	convo.Enabled = true
end

button.MouseButton1Click:Connect(openConvo)