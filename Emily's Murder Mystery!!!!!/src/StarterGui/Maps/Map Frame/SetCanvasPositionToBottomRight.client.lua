local scrollingFrame = script.Parent
local mapsScreenGui = scrollingFrame.Parent

local function setCanvasPositionToBottomRight()
	local absoluteContentSize = scrollingFrame.AbsoluteWindowSize * 25
	local bottomRightPosition = Vector2.new(absoluteContentSize.X, absoluteContentSize.Y)
	scrollingFrame.CanvasPosition = bottomRightPosition
end

mapsScreenGui:GetPropertyChangedSignal("Enabled"):Connect(function()
	if mapsScreenGui.Enabled then
		setCanvasPositionToBottomRight()
	end
end)

setCanvasPositionToBottomRight()

