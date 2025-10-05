local image = script.Parent

local function resize()
	local xAbs = image.AbsoluteSize.X
	image.Size = UDim2.new(0, xAbs, 0, xAbs)
end

resize()