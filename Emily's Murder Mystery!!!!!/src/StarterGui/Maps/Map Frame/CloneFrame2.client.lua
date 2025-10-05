local scrollingFrame = script.Parent
local frameToClone = scrollingFrame:FindFirstChild("Unloaded 2")

for i = 1, 23 do
    local clonedFrame = frameToClone:Clone()
    clonedFrame.Name = "Unloaded " .. tostring(i)
    clonedFrame.Parent = scrollingFrame
end

