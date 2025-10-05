local StarterGui = game:GetService("StarterGui")

-- Disable all core GUI elements
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

-- Disable the chat input bar if it exists
local TextChatService = game:GetService("TextChatService")
local ChatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
if ChatInputBarConfiguration then
    ChatInputBarConfiguration.Enabled = false
end

