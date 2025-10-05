local scrollingFrame = script.Parent
local frameToClone = scrollingFrame:FindFirstChild("Unloaded 4")

for i = 1, 24 do
    local clonedFrame = frameToClone:Clone()
    clonedFrame.Name = "Unloaded " .. tostring(i)
    clonedFrame.Parent = scrollingFrame
end

