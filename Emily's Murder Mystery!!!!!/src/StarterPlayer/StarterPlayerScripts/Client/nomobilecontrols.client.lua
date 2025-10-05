local player = game.Players.LocalPlayer

-- Function to remove default controls
local function removeMobileControls()
	local controlModule = require(player:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule")):GetControls()

	-- Disabling the touch controls
	controlModule:Disable()
end

-- Call the function to remove controls
removeMobileControls()
