local button = script.Parent
local Note = script.Parent.Parent.Parent.Parent:WaitForChild("Note3")

local function openNote() 
	Note.Enabled = true
end

button.MouseButton1Click:Connect(openNote)