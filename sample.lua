loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/hatmove-lib/main/move-hats.lua", true))()
local hatname = "" --Replace with hat name thats in explorer
local hat = game.Players.LocalPlayer.Character[hatname]
makemovers(hat.Handle,CFrame.new(6,0,0),game.Players.LocalPlayer.Character["Torso"],false,false)
