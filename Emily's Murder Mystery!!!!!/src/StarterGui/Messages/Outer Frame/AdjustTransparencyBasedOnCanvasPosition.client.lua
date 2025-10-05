local scrollingFrame = script.Parent
local topBar = scrollingFrame.Parent:FindFirstChild("Top Bar")
local textLabel = topBar:FindFirstChild("Messages")
local imageLabel = scrollingFrame:FindFirstChild("Messages")

local function updateTransparency()
    local canvasPosition = scrollingFrame.CanvasPosition.Y / scrollingFrame.AbsoluteCanvasSize.Y
    local transparency = math.clamp((canvasPosition - 0.0) / (0.15 - 0.0), 0, 1)
    
    if imageLabel then
        imageLabel.ImageTransparency = transparency
    end
    
    if textLabel then
        textLabel.TextTransparency = 1 - transparency
    end
end

scrollingFrame:GetPropertyChangedSignal("CanvasPosition"):Connect(updateTransparency)

-- Initial update
updateTransparency()

