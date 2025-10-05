local textBox = script.Parent
local openEmailButton = textBox.Parent:FindFirstChild("OpenEmail")

textBox:GetPropertyChangedSignal("Text"):Connect(function()
    local text = textBox.Text:lower()
    if text:find("lily's flower pot") then  -- Replace "yourstring" with the string you want to check
        openEmailButton.Visible = true
    else
        openEmailButton.Visible = false
    end
end)

