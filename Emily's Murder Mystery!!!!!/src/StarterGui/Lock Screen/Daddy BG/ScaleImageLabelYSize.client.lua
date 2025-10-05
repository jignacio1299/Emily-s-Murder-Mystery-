local imageLabel = script.Parent

local function adjustYSize()
    local xSize = imageLabel.AbsoluteSize.X
    local newYSize = (308/500) * xSize
    imageLabel.Size = UDim2.new(imageLabel.Size.X.Scale, imageLabel.Size.X.Offset, 0, newYSize)
end

-- Call the function initially and whenever the size changes
adjustYSize()
imageLabel:GetPropertyChangedSignal("AbsoluteSize"):Connect(adjustYSize)

