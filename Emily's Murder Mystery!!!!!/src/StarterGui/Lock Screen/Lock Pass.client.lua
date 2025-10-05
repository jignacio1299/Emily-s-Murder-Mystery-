local lockScreenGui = script.Parent
local homeGUI = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Home Screen")
local textBox = lockScreenGui:WaitForChild("Enter Password")

local correctPassword = "Bone Daddy" -- Replace "placeholder" with the actual password

textBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
		if textBox.Text == correctPassword then
			homeGUI.Enabled = true
            lockScreenGui.Enabled = false
            
        else
			textBox.Text = "Incorrect password"
			task.wait(0.6)
			textBox.Text = "Enter Password"
        end
    end
end)

