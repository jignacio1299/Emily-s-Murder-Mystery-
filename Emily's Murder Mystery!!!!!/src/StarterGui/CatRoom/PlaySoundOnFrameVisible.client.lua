local frame = script.Parent:WaitForChild("Loading Screen") -- Assuming the frame is a child of the ScreenGui
local sound = Instance.new("Sound", frame)
sound.SoundId = "rbxassetid://1091083826" -- Replace <placeholder> with the actual asset ID of the MP3 file

frame:GetPropertyChangedSignal("Visible"):Connect(function()
    if frame.Visible then
        sound:Play()
    end
end)

