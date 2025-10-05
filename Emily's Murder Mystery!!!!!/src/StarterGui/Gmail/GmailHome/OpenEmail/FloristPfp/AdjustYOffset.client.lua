local imageLabel = script.Parent

local function adjustYOffset()
    local xSize = imageLabel.AbsoluteSize.X
    imageLabel.Size = UDim2.new(0, xSize, 0, xSize)
end

adjustYOffset()
