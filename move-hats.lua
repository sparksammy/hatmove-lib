if not game.workspace:FindFirstChild("miscparts191001101010") then
print("--------------------------------------")
print("               HatMover")
print("")
print("This script allows you to move your hats")
print("--------------------------------------")
print("")
print("--------------------------------------")
print("This scripts was made By TheInvisible_")
print("Modded by Sparksammy to work better...")
print("     ...and have more functions.")
print("--------------------------------------")
local function align(p,at1,at2,boolers)
local obj1 = game:GetObjects("rbxassetid://5760223514")
for i,v in pairs(obj1) do
v.Parent = p
v.RigidityEnabled = boolers
v.Attachment0 = at1
v.Attachment1 = at2
end
local obj2 = game:GetObjects("rbxassetid://5760225829")
for i,v in pairs(obj2) do
v.Parent = p
v.RigidityEnabled = boolers
v.Attachment0 = at1
v.Attachment1 = at2
end
end



local folder = Instance.new("Folder",workspace)
folder.Name = "miscparts191001101010"



getgenv().makemovers = function(hhandle,pos,ppp1,boolerss,collide,remmesh)
local boolv
if boolerss == nil or boolerss == "" then
boolv = false
else
boolv = boolerss
end
if hhandle ~= nil then
local part11 = ppp1
local physProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
hhandle.CustomPhysicalProperties = physProperties
local RunService = game:GetService("RunService")
local part = Instance.new("Part",folder)
part.Transparency = 1
part.CanCollide = false
part.Name = "Random Generated part"
local Attach1 = Instance.new("Attachment",part)
local Attach2 = Instance.new("Attachment",hhandle)
align(part,Attach2,Attach1,boolv)
if remmesh == true then
          hhandle:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
else
          print("remove mesh not specified/had non-true value, skip remove mesh.")
end
hhandle:BreakJoints()
local ok = Instance.new("Motor6D",part)
ok.Part0 = part
ok.Part1 = part11
ok.C0 = pos
hhandle.CanCollide = collide
hhandle.Parent.Name = "ActiveMoverHat"
local bruh do
bruh = game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
part:Destroy()
ok:Destroy()
bruh:Disconnect()
end)
end
else
print("Hat not existing Aborting")
end
end
end
