local imageLabel = script.Parent

local function adjustYOffset()
    local absoluteXSize = imageLabel.AbsoluteSize.X
    local newYOffset = absoluteXSize * (182/132)
    imageLabel.Offset = UDim2.new(imageLabel.Offset.X, newYOffset)
end

adjustYOffset()

imageLabel:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
    adjustYOffset()
end)

