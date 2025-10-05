local imageButton = script.Parent
local messagesGui = script.Parent.Parent.Parent.Parent.Parent:WaitForChild("Messages with Friends")
local function onButtonClicked()
	messagesGui.Enabled = true
end

-- Connect the function to the button click event
imageButton.MouseButton1Click:Connect(onButtonClicked)