local button = script.Parent
local mail = script.Parent.Parent.Parent.Parent:WaitForChild("Gmail Florist")

local function openMail()
	mail.Enabled = true
	print("Opened")
end

button.MouseButton1Click:Connect(openMail)