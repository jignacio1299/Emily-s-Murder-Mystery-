local scrollingFrame = script.Parent

local function setCanvasPositionToMiddle()
	local absoluteContentSize = scrollingFrame.AbsoluteWindowSize * 4.5
	local middlePosition = Vector2.new(absoluteContentSize.X / 2, absoluteContentSize.Y / 2)
	scrollingFrame.CanvasPosition = middlePosition
end

setCanvasPositionToMiddle()
