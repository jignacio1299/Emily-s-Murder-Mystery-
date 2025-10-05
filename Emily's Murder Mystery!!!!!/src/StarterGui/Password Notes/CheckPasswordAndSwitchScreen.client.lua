local lockScreenGui = script.Parent
local homeGUI = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Home Screen")
local Notes = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Notes")
local textBox = lockScreenGui:WaitForChild("Enter Password")
local unlocked = false

local function unlockCheck()
	print("checking Unlocked")
	if unlocked then
		homeGUI.Enabled = false
		lockScreenGui.Enabled = false
		Notes.Enabled = true
	end
end

local correctPassword1 = "carrot cake" -- Replace "placeholder" with the actual password
local correctPassword2 = "carrotcake"
textBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
		if string.lower(textBox.Text) == correctPassword1  or string.lower(textBox.Text) == correctPassword2 then
			homeGUI.Enabled = false
			lockScreenGui.Enabled = false
			Notes.Enabled = true
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

