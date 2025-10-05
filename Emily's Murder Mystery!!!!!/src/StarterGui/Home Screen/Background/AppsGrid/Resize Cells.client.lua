local gridLayout = script.Parent:FindFirstChildOfClass("UIGridLayout")

if gridLayout then
	local firstCell = script.Parent:FindFirstChildOfClass("ImageButton")
	if firstCell then
		local xSize = firstCell.AbsoluteSize.X
		gridLayout.CellSize = UDim2.new(0.154, 0, 0, xSize)
	end
end
