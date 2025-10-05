local button = script.Parent
local menu = script.Parent.Parent.Parent

local function closeMenu()
	menu.Enabled = false
end

button.MouseButton1Click:Connect(closeMenu)