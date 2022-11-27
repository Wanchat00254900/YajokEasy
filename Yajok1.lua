local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
 
local win = DiscordLib:Window("System Hub | Yajok City")
 
local serv = win:Server("Main", "rbxassetid://11247127403")
 
local tgls = serv:Channel("Auto Farm")
local tp = serv:Channel("Teleport")
 
tgls:Toggle("Auto Vegetable",false, function(bool)
_G.Vegetable = bool
game.Players.LocalPlayer.ITEM.Check.Value = true
wait(0.2)
while _G.Vegetable do wait(5.9)
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "Vegetable" and v.Transparency == 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-1,0)
wait(0.2)
game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
task.wait(5.05)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"E",false,game)
task.wait(0.5)
end
end
end
end)

tp:Button("Hospital", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(435.64, 44.758, 252.18)
end)

tp:Button("Police Station", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(123.834, 40.395, 1439.277)
end)

tp:Button("Lebel", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2038.675, 47.217, 3403.504)
end)

tp:Button("Crafting Table", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2038.675, 47.217, 3403.504)
end)

tp:Button("Spawn", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(415.309, 39.961, 43.53)
end)



        spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.Vegetable then
            end
        end)
       end)
        end)
    ----gge----
