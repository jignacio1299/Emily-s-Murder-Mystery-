local frame = script.Parent
local screenGui = frame.Parent

screenGui:GetPropertyChangedSignal("Enabled"):Connect(function()
    if screenGui.Enabled then
        frame.Visible = true
        task.wait(1)
        frame.Visible = false
    end
end)

