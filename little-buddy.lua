--Little Buddy
--Copyright Samuel Lord. All rights reserved.
loadstring(game:HttpGet("https://raw.githubusercontent.com/sparksammy/hatmove-lib/main/move-hats.lua", true))()
local hatname = "RobloxVisor2019" --2019 visor
local hat = game.Players.LocalPlayer.Character[hatname]
makemovers(hat.Handle,CFrame.new(6,.9,0),game.Players.LocalPlayer.Character["UpperTorso"],false,false,true)
wait(.5)
local hatname = "MeshPartAccessory" --RoBox
local hat = game.Players.LocalPlayer.Character[hatname]
makemovers(hat.Handle,CFrame.new(6,.4,0),game.Players.LocalPlayer.Character["UpperTorso"],false,false,false)
wait(.5)
local hatname = "MediHood" --Medieval hood of Mystery
local hat = game.Players.LocalPlayer.Character[hatname]
makemovers(hat.Handle,CFrame.new(6,-.1,0),game.Players.LocalPlayer.Character["UpperTorso"],false,false,false)
