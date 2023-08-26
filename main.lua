local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("AutumnHub", "Synapse")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Misc")
Name = ''
x = 0
Section:NewButton("Time x1", "x1", function()
while wait (0.0025) do
local args = {
    [1] = "x2 Speed"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("x2Event"):FireServer(unpack(args))
end
end)

Section:NewButton("Time x2", "x1", function()
        while wait (0.0025) do
            local args = {
            [1] = "x1 Speed"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("x2Event"):FireServer(unpack(args))
        end
end)

Section:NewToggle("Feed", "Use Shielder and play on Event Metal Rush", function()
while wait (0.0001) do
game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("FeedAll"):InvokeServer()
end
end)

Section:NewToggle("Auto Skip", "Use Shielder and play on Event Metal Rush", function()
while wait (0.001) do
game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("SkipEvent"):FireServer()
end
end)


Section:NewToggle("Auto buy meat", "Use Shielder and play on Event Metal Rush", function()
while wait (10) do   
    local args = {
    [1] = 250
}
game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("BuyMeat"):InvokeServer(unpack(args))
end
end)



local Tab = Window:NewTab("Auto farm money")
local Section = Tab:NewSection("FULL PLAY")


Section:NewToggle("Auto Place", "", function(Name)

local args = {
    [1] = "Shielder",
    [2] = CFrame.new(-629.9291381835938, 15.79393196105957, 439.5883483886719, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("SpawnUnit"):InvokeServer(unpack(args))

end)

Section:NewToggle("Auto upgrade", "", function(Name)
while wait(0.1) do
local args = {
    [1] = workspace:WaitForChild("Units"):WaitForChild("Shielder")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("UpgradeUnit"):InvokeServer(unpack(args))
end
end)

local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Ui")

Section:NewButton("Fps boost(Run on wave Boss)", "", function()

a = 0
repeat
   loadstring(game:HttpGet("https://pastebin.com/raw/qQcUwNgB"))()
   a = a + 1
until( a > 5 )

end)

Section:NewButton("Unlock fps", "", function()

setfpscap(100)

end)

Section:NewButton("Anti afk", "", function()
loadstring(game:HttpGet("https://pastebin.com/raw/Btt5A3CC"))()
end)

Section:NewKeybind("", "", Enum.KeyCode.LeftControl, function()
	Library:ToggleUI()
end)
