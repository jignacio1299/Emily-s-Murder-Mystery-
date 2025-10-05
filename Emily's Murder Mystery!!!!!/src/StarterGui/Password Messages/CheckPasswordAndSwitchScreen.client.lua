local lockScreenGui = script.Parent
local homeGUI = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Home Screen")
local messages = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Messages")
local textBox = lockScreenGui:WaitForChild("Enter Password")
local unlocked = false

local function unlockCheck()
	print("checking Unlocked")
	if unlocked then
		homeGUI.Enabled = false
		lockScreenGui.Enabled = false
		messages.Enabled = true
	end
end

local correctPassword1 = "meow" 
textBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
		if string.lower(textBox.Text) == correctPassword1 then
			homeGUI.Enabled = false
			lockScreenGui.Enabled = false
			messages.Enabled = true
			unlocked = true
        else
			textBox.Text = "Incorrect password"
			task.wait(0.6)
			textBox.Text = "Enter Password"
        end
    end
end)

lockScreenGui:GetPropertyChangedSignal("Enabled"):Connect(function()

        unlockCheck()

end)

