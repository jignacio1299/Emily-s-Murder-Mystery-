local TextService = game:GetService("TextService")
local Players = game:GetService("Players")

local function filterText(player, text)
    local success, filteredText = pcall(function()
        return TextService:FilterStringAsync(text, player.UserId):GetNonChatStringForBroadcastAsync()
    end)
    
    if success then
        return filteredText
    else
        warn("Text filtering failed")
        return ""
    end
end

-- Example usage
local player = Players.LocalPlayer
local textToFilter = "interactions"
local filteredText = filterText(player, textToFilter)
print("Filtered Text: ", filteredText)

