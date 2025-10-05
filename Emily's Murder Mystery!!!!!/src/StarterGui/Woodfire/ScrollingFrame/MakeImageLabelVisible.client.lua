local scrollingFrame = script.Parent
local imageLabel = scrollingFrame:FindFirstChild("WoodfireTopFull")
local closeButton = script.Parent:WaitForChild("Close WoodfireMenu")

scrollingFrame:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
    if scrollingFrame.CanvasPosition.Y > 100 then
		imageLabel.Visible = true
		closeButton.Visible = true
    else
		imageLabel.Visible = false
		closeButton.Visible = false
    end
end)

