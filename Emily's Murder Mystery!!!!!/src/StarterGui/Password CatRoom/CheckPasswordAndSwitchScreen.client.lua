local lockScreenGui = script.Parent
local homeGUI = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Home Screen")
local CatRoom = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("CatRoom")
local textBox = lockScreenGui:WaitForChild("Enter Password")
local unlocked = false

local function unlockCheck()
	print("checking Unlocked")
	if unlocked then
		homeGUI.Enabled = false
		lockScreenGui.Enabled = false
		CatRoom.Enabled = true
	end
end

local correctPassword1 = "10/06" -- Replace "placeholder" with the actual password
local correctPassword2 = "10/6"
textBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
		if textBox.Text == correctPassword1  or textBox.Text == correctPassword2 then
			homeGUI.Enabled = false
			lockScreenGui.Enabled = false
			CatRoom.Enabled = true
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

