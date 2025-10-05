local loginGui = script.Parent.Parent.Parent
local gmailGUI = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Gmail")

local textBox = script.Parent
local unlocked = false

local function unlockCheck()
	print("checking Unlocked")
	if unlocked then
		loginGui.Enabled = false
	end
end

local correctPassword1 = "greased bundt" 
textBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
		if string.lower(textBox.Text) == correctPassword1 then
			loginGui.Visible = false
			unlocked = true
        else
			textBox.Text = "Incorrect password"
			task.wait(0.6)
			textBox.Text = "Enter Password"
        end
    end
end)

gmailGUI:GetPropertyChangedSignal("Enabled"):Connect(function()
        unlockCheck()
end)

