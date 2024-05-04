local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SuperHub", HidePremium = false, SaveConfig = true, ConfigFolder = "SuperHubLT2"})
--[[
Name = SuperHub - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = Super - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
local Tab = Window:MakeTab({
	Name = "Local",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--[[
Name = sw23235e - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
	Name = "Speed"
})
--[[
Name = 23234w - The name of the section.
]]
Tab:AddSlider({
    Name = "Speed",
    Min = 16,
    Max = 6000,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "speed",
    Callback = function(Value)
        getgenv().WalkSpeedValue = Value; --Enter your speed amount here
        local Player = game:service'Players'.LocalPlayer;
        Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
            Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
        end)
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
        print(Value)
    end
})
--[[
Name = speedvv1> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maxium value of the slider.
Increment = <number> - How much the slider will change value when dragging.
Default = <number> - The default value of the slider.
ValueName = <string> - The text after the value number.
Callback = <function> - The function of the slider.
]]
local Section = Tab:AddSection({
	Name = "Jump Power"
})
--[[
Name = <string> - The name of the section.
]]

Tab:AddSlider({
    Name = "JumpPower",
    Min = 3,
    Min = 50,
    Max = 6000,
    Default = 3,
    Default = 50,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "JumpPower",
    Callback = function(Value)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
    end
})
--[[
Name = speedvv2> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maxium value of the slider.
Increment = <number> - How much the slider will change value when dragging.
Default = <number> - The default value of the slider.
ValueName = <string> - The text after the value number.
Callback = <function> - The function of the slider.
]]

local Tab = Window:MakeTab({
	Name = "Dupe",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Axe Dupe"
})
Tab:AddLabel("Dupes above 9 axes dont work!")
Tab:AddLabel("Reset after each dupe above 9 or you wont get more!")
Tab:AddButton({
    Name = "Dupe Slot 1!",
    Callback = function()
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
	local location = CFrame.new(43, -319, -484)
	local humanoid = game.Players.LocalPlayer.Character.Humanoid
	humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	wait(0.2)
	pl.CFrame = location
        wait(2)

        local args = {
            [1] = 1,
            [2] = game:GetService("Players").LocalPlayer
        }

        game:GetService("ReplicatedStorage"):WaitForChild("LoadSaveRequests"):WaitForChild("RequestLoad"):InvokeServer(unpack(args))
        print("button pressed")
	wait(62)
    end
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local Tab = Window:MakeTab({
	Name = "ESP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--[[
Name = sw23235e - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "ESP",
	Callback = function()
          loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
      		print("button pressed")
  	end    
})
--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
OrionLib:Init()
