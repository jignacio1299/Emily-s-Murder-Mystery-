local textBox = script.Parent

textBox.FocusLost:Connect(function()
	wait(0.1)
    textBox.Text = "No WiFi, cached emails only"  -- Replace "Your new string" with the desired text
end)

