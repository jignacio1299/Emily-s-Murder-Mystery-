local textLabel = script.Parent

local function adjustSize()
    local xSize = textLabel.AbsoluteSize.X
    textLabel.Size = UDim2.new(0, xSize, 0, xSize * 91 / 430)
end

-- Adjust size initially
adjustSize()

-- Optionally, connect to a resize event if the size can change dynamically
textLabel:GetPropertyChangedSignal("AbsoluteSize"):Connect(adjustSize)

