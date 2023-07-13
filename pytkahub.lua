local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "PYTKAHUB", HidePremium = false, SaveConfig = true, ConfigFolder = "PYTKAHUB"})

local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Combat"
})

Tab:AddToggle({
	Name = "AimLock!",
	Default = false,
	Callback = function(Value)
		print(Value)
		end
})


OrionLib:Init()
