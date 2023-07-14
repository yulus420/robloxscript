local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = false, IntroEnabled = false})

OrionLib:MakeNotification({
    Name = "Logged in!",
    Content = "You are logged in as "..Player.Name..".",
    Image = "rbxassetid://4483345998",
    Time = 5
})

local Keys = {
    "yulus",
    "szefunciomuncio9",
    "nigger"
}
local KeyInput = ""

function MakeScriptHub()
    local Window = OrionLib:MakeWindow({Name = "PYTKAHUB", HidePremium = false, SaveConfig = false, IntroEnabled = true, IntroText = "PYTKA HUB"})

    local Tab = Window:MakeTab({
        Name = "Player",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    local Section = Tab:AddSection({
        Name = "Movement"
    })
    
    Tab:AddButton({
	Name = "Fly!",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/reversed-coffee/Roblox/main/AEBypassing/CFrameFly.lua'))()
  	end    
})

    Tab:AddSlider({
        Name = "Walkspeed",
        Min = 16,
        Max = 500,
        Default = 16,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "WS",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end    
    })
    
    Tab:AddSlider({
        Name = "Jump Power",
        Min = 50,
        Max = 500,
        Default = 50,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "JP",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end    
    })
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have entered the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have entered the incorrect key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        KeyInput = Value
    end	  
})

Tab:AddButton({
    Name = "Check Key!",
    Callback = function()
        local keyFound = false
        for _, key in ipairs(Keys) do
            if KeyInput == key then
                keyFound = true
                break
            end
        end

        if keyFound then
            MakeScriptHub()
            CorrectKeyNotification()
        else
            IncorrectKeyNotification()
        end
    end
})

OrionLib:Init()
