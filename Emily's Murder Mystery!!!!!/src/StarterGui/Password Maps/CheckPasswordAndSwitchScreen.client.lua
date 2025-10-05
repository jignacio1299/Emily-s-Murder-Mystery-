local lockScreenGui = script.Parent
local homeGUI = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Home Screen")
local Maps = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Maps")
local textBox = lockScreenGui:WaitForChild("Enter Password")
local unlocked = false

local function unlockCheck()
	print("checking Unlocked")
	if unlocked then
		homeGUI.Enabled = false
		lockScreenGui.Enabled = false
		Maps.Enabled = true
	end
end

local correctPassword1 = "count slayula" -- Replace "placeholder" with the actual password
textBox.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local lowerText = string.lower(textBox.Text) -- Convert enterPressed to lowercase
		print(lowerText)
		if lowerText == correctPassword1 then
			homeGUI.Enabled = false
			lockScreenGui.Enabled = false
			Maps.Enabled = true
			unlocked = true
        else
			textBox.Text = "Incorrect password"
			task.wait(0.5)
			textBox.Text = "Enter Password"
        end
    end
end)

lockScreenGui:GetPropertyChangedSignal("Enabled"):Connect(function()
    if lockScreenGui.Enabled then
        unlockCheck()
    end
end)

