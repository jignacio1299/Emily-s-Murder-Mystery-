local gridLayout = script.Parent
local scrollingFrame = script.Parent.Parent

local function adjustCellSize()
    local cellSizeX = gridLayout.AbsoluteCellSize.X
    local newCellSizeY = cellSizeX * (502/498)
    gridLayout.CellSize = UDim2.new(0, cellSizeX, 0, newCellSizeY)
    print("Adjusted Cell Size")
end

local function adjustCanvasPosition()
    local cellSizeY = gridLayout.CellSize.Y.Offset
    scrollingFrame.CanvasSize = UDim2.new(scrollingFrame.CanvasSize.X.Scale, scrollingFrame.CanvasSize.X.Offset, 0, cellSizeY * 5)
    print("Adjusted Canvas Position")
end

adjustCellSize()
adjustCanvasPosition()

gridLayout:GetPropertyChangedSignal("AbsoluteCellSize"):Connect(function()
    adjustCellSize()
    adjustCanvasPosition()
end)

