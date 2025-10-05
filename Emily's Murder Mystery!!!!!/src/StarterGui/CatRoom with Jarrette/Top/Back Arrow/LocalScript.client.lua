local button = script.Parent
local convo = script.Parent.Parent.Parent	

local function closeConvo()
	convo.Enabled = false
end

button.MouseButton1Click:Connect(closeConvo)