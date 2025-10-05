local Pic = script.Parent

local function Resize()
	local xsize = Pic.AbsoluteSize.X
	Pic.Size = UDim2.new(0, xsize, 0, xsize)
end


Resize()