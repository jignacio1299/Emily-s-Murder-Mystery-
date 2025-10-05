local image = script.Parent

local function resize()
	local ysize = image.AbsoluteSize.Y
	image.Size = UDim2.new(0, ysize, 0, ysize)
end

resize()