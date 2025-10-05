local textLabel = script.Parent

local function adjustSize()
    local sizeX = textLabel.AbsoluteSize.X
    textLabel.Size = UDim2.new(0, sizeX, 0, sizeX)
end

-- Adjust size initially
adjustSize()

-- Optionally, connect to a resize event if the TextLabel size might change dynamically
textLabel:GetPropertyChangedSignal("AbsoluteSize"):Connect(adjustSize)

