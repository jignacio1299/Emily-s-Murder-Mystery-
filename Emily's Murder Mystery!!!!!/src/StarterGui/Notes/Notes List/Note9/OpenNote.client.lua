local button = script.Parent
local Note = script.Parent.Parent.Parent.Parent:WaitForChild("Note9")

local function openNote1() 
	Note.Enabled = true
end

button.MouseButton1Click:Connect(openNote1)