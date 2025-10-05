local button = script.Parent
local convo = script.Parent.Parent.Parent

local function onClick()
	convo.Enabled = false
end

button.MouseButton1Click:Connect(onClick)