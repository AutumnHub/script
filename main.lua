if not game:IsLoaded() then 
    repeat game.Loaded:Wait()
    until game:IsLoaded() 
end
repeat wait(1)
    pcall(function()
        if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible == true then
                if _G.Team == "Marines" then
                    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
                        v.Function()
                    end
                else
                    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
                        v.Function()
                    end
                end
            end
        end
    end)
until game.Players.localPlayer.Neutral == false
if _G.Fast_Delay == nil then
	_G.Fast_Delay = 0.1
end
spawn(function()
    while true do wait()
        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
            if not _G.TP_Ser and _G.Rejoin then
                if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                    wait(50)
                end
            end
        end)
    end
end)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AutumnHub/Ui/main/Update%20Ui", true))()
library:CreateWatermark("Autumn Hub Status : 🟢")
local CenterHubNo1 = library:CreateWindow("AutumnHub",Enum.KeyCode.RightControl)
local Tab = CenterHubNo1:CreateTab("General")
local Sector1 = Tab:CreateSector("Main","left")
Sector1:AddLabel("Auto Farm")
Sector1:AddToggle("Start",false,function(t)
   print(t)
end)
Sector1:AddDropdown("Select Melee",{"Combat","Superhuman","Godhuman"},"None",false,function(t)
    print(t)
end)
local Dropdownxd = Sector1:AddToggle("Auto Farm Mastery Melee",false,function(t)
    print(t)
 end)
Sector1:AddDropdown("Select Fruit",{"Dark-Dark","Ice-Ice"},"None",false,function(t)
    print(t)
end)
local Dropdownxd = Sector1:AddToggle("Auto Farm Mastery Fruit",false,function(t)
    print(t)
 end)
Sector1:AddDropdown("Select Gun",{"Soul-Guitar","Kabucha"},"None",false,function(t)
    print(t)
end)
local Dropdown2xd = Sector1:AddToggle("Auto Farm Mastery Gun",false,function(t)
   print(t)
end)
Dropdownxd:AddDropdown({"None","IDK","odl2"},"None",false,function(t)
    print(t)
end)
local Sector2 = Tab:CreateSector("Auto Select Weapon","Right")
 tablexd = {"CDK","Darkblade"}
local dropdoxwn = Sector2:AddDropdown("Select Weapon",tablexd,"None",false,function(t)
    print(t)
end)
Sector2:AddButton("Refresh Weapon",function()
    table.clear(tablexd)
    for i,v in pairs(tablexd) do
    dropdoxwn:Add(v)
    end
end)
local Sector3 = Tab:CreateSector("Bright Ui","Right")
Sector3:AddSlider("Slider",20,50,100,1,function(x)
    print(x)
end)
local Tab2 = CenterHubNo1:CreateTab("Stat")
Tab2:CreateConfigSystem()
local Tab3 = CenterHubNo1:CreateTab("Raid")
Tab3:CreateConfigSystem()
local Tab4 = CenterHubNo1:CreateTab("Buy")
Tab4:CreateConfigSystem()
local Tab5 = CenterHubNo1:CreateTab("Misc")
Tab5:CreateConfigSystem()
local Tab6 = CenterHubNo1:CreateTab("Config")
Tab6:CreateConfigSystem()