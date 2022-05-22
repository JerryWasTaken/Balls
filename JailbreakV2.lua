local blur = Instance.new("BlurEffect", game.Lighting)
blur.Size = 0
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
ScreenGui.Parent = game.CoreGui
ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.5, -(303 / 2), 0.5, -(263 / 2))
ImageLabel.Rotation = 0
ImageLabel.Size = UDim2.new(0, 303,0, 263)
ImageLabel.Image = "rbxassetid://9301750830"
ImageLabel.ImageTransparency = 1

for i = 1, 50, 2 do
    blur.Size = i
    ImageLabel.ImageTransparency = ImageLabel.ImageTransparency - 0.1
    local PlayFirework
local gv
for i, v in pairs(getreg()) do
    if typeof(v) == "function" then
        for i2, v2 in pairs(getupvalues(v)) do
            if typeof(v2) == "table" and rawget(v2, "em") and rawget(v2, "Fireworks") then
                em = v2.em
				PlayFirework = v2.Fireworks
				gv = v2.GetVehiclePacket
                if(#getupvalues(v2.Event.FireServer) ~= 1) then
                    game:GetService("Players").LocalPlayer:Kick("Nigga")
                else
                    Remote = v2.Event
                end
            end
        end
    end
end
    PlayFirework(0.1)
    wait()
end
wait(0.1)

for i = 1, 50, 2 do
    blur.Size = 50 - i
    ImageLabel.ImageTransparency = ImageLabel.ImageTransparency + 0.1
    wait()
end
blur:Destroy()
ScreenGui:Destroy()
wait(0.05)

local HasherClient = {
    Modules = {
        HashTable = '',
        DonutFunc = '',
        KickFunc = '',
        HeliFunc = '',
        ExplodeWallFunc = ''
    },
    Hashes = {
        Donut1 = '',   
        Donut2 = '',    
        KickHash = '',  
        Team = '',      
        GiftSafe = '',  
        HeliCrate = '', 
        Interact = '',  
        Eject = '',     
        Taze = '',      
        GrabGun = ''    
    }
    }

--Collect All Hashes
    
for i,v in pairs(getgc(true)) do
    if HasherClient.Modules.HashTable == '' and type(v) == 'table' then
        for i2,v2 in pairs(v) do
            if type(v2) == 'string' and v2:sub(1,1) == '!' and v2:len() > 10 then
                HasherClient.Modules.HashTable = v
            end
        end
    end
    --Donut1 Func
    if HasherClient.Modules.DonutFunc == '' and type(v) == 'table' and rawget(v,'Fun') and rawget(v,'Part') and type(v.Fun) == 'function' and v.Part.Name == 'Donut' then
        HasherClient.Modules.DonutFunc = v.Fun
    end
    if HasherClient.Modules.KickFunc == '' and type(v) == 'function' and getfenv(v).script and getfenv(v).script == game:GetService('Players').LocalPlayer.PlayerScripts.LocalScript then
        if debug.getconstants(v) and table.find(debug.getconstants(v),'FailedPcall') then
            HasherClient.Modules.KickFunc = v
        end
    end
    if HasherClient.Modules.HeliFunc == '' and type(v) == 'table' and type(rawget(v, "Heli")) == "table" then
        HasherClient.Modules.HeliFunc = v.Heli.Update
    end
    if HasherClient.Modules.ExplodeWallFunc == ''  and type(v) == 'function' and getfenv(v).script and getfenv(v).script == game:GetService('Players').LocalPlayer.PlayerScripts.LocalScript then
        if debug.getconstants(v) and table.find(debug.getconstants(v),'ExplodeWall') and table.find(debug.getconstants(v),'FireServer') then
            HasherClient.Modules.ExplodeWallFunc = v
        end
    end
    end
    
    --Donut 1
    Donut1Constants = {}
    for i,v in pairs(getconstants(HasherClient.Modules.DonutFunc)) do
    if type(v) == 'string' and v ~= 'sub' and v ~= 'reverse' and v ~= 'Name' and v ~= 'tick' and v ~= 'FireServer' then
        table.insert(Donut1Constants, v)
    end
    end
    local FF_Donut1Constants = Donut1Constants[1]
    local LL_Donut1Constants = Donut1Constants[table.maxn(Donut1Constants)]
    for i, v in pairs(HasherClient.Modules.HashTable) do
    if string.find(i, FF_Donut1Constants) and string.find(i, LL_Donut1Constants) and FF_Donut1Constants:sub(1,1) == i:sub(1,1) and LL_Donut1Constants:sub(#LL_Donut1Constants,#LL_Donut1Constants) == i:sub(#i,#i) then
        HasherClient.Hashes.Donut1 = i
        break
    end
    end
    
    --Donut 2
    
    Donut2Func = getproto(require(game:GetService("ReplicatedStorage").Game.Item.Donut).InputBegan, 1)
    Donut2Constants = {}
    for i,v in pairs(getconstants(Donut2Func)) do
    if type(v) == 'string' and v ~= 'sub' and v ~= 'reverse' and v ~= 'Name' and v ~= 'tick' and v ~= 'FireServer' and v ~= 'SpringItemRotation' and v ~= 'Config' and v ~= 'Motion' and v ~= 'Hip' and v ~= 'Springs' and v ~= 'ItemRotation' and v ~= 'SetTarget' and v ~= 'Local' and v ~= 'LastConsumed' then
        table.insert(Donut2Constants, v)
    end
    end
    local FF_Donut2Constants = Donut2Constants[1]
    local LL_Donut2Constants = Donut2Constants[table.maxn(Donut2Constants)]
    for i, v in pairs(HasherClient.Modules.HashTable) do
    if string.find(i, FF_Donut2Constants) and string.find(i, LL_Donut2Constants) and FF_Donut2Constants:sub(1,1) == i:sub(1,1) and LL_Donut2Constants:sub(#LL_Donut2Constants,#LL_Donut2Constants) == i:sub(#i,#i) then
        HasherClient.Hashes.Donut2 = i
        break
    end
    end
    
    --KickHash
    
    KickHashConstants = {}
    for i,v in pairs(getconstants(HasherClient.Modules.KickFunc)) do
    if type(v) == 'string' and v ~= 'sub' and v ~= 'reverse' and v ~= 'Name' and v ~= 'tick' and v ~= 'FireServer' and v ~= 'FailedPcall' and v ~= 'pcall' and v ~= '' then
        table.insert(KickHashConstants, v)
    end
    end
    local FF_KickHashConstants = KickHashConstants[1]
    local LL_KickHashConstants = KickHashConstants[table.maxn(KickHashConstants)]
    for i, v in pairs(HasherClient.Modules.HashTable) do
    if string.find(i, FF_KickHashConstants) and string.find(i, LL_KickHashConstants) and FF_KickHashConstants:sub(1,1) == i:sub(1,1) and LL_KickHashConstants:sub(#LL_KickHashConstants,#LL_KickHashConstants) == i:sub(#i,#i) then
        HasherClient.Hashes.KickHash = i
        break
    end
    end
    
    --Team
    
    TeamFunc = getproto(require(game:GetService("ReplicatedStorage").Game.TeamChooseUI).Show, 4)
    TeamConstants = {}
    for i,v in pairs(getconstants(TeamFunc)) do
    if type(v) == 'string' and v ~= 'sub' and v ~= 'reverse' and v ~= 'Name' and v ~= 'tick' and v ~= 'FireServer' and v ~= 'Police' and v ~= 'Prisoner' and v ~= 'assert' and v ~= '' then
        table.insert(TeamConstants, v)
    end
    end
    local FF_TeamConstants = TeamConstants[1]
    local LL_TeamConstants = TeamConstants[table.maxn(TeamConstants)]
    for i, v in pairs(HasherClient.Modules.HashTable) do
    if string.find(i, FF_TeamConstants) and string.find(i, LL_TeamConstants) and FF_TeamConstants:sub(1,1) == i:sub(1,1) and LL_TeamConstants:sub(#LL_TeamConstants,#LL_TeamConstants) == i:sub(#i,#i) then
        HasherClient.Hashes.Team = i
        break
    end
    end
    
    --GiftSafe
    SafeFunc = getproto(require(game:GetService("ReplicatedStorage").Game.SafesUI).SetupBuySafes,3)
    SafeConstants = {}
    for i,v in pairs(getconstants(SafeFunc)) do
    if type(v) == 'string' and v ~= 'sub' and v ~= 'reverse' and v ~= 'Name' and v ~= 'tick' and v ~= 'FireServer' and v ~= '' and v ~= 'ContainerPlayerName' and v ~= 'PlayerName' and v ~= 'Text' and v ~= 'SelectedTier' and v ~= 'ContainerIcon' and v ~= 'Icon' and v ~= 'Image' and v ~= 'CloseGift' then
        table.insert(SafeConstants, v)
    end
    end
    local FF_SafeConstants = SafeConstants[1]
    local LL_SafeConstants = SafeConstants[table.maxn(SafeConstants)]
    for i, v in pairs(HasherClient.Modules.HashTable) do
    if string.find(i, FF_SafeConstants) and string.find(i, LL_SafeConstants) and FF_SafeConstants:sub(1,1) == i:sub(1,1) and LL_SafeConstants:sub(#LL_SafeConstants,#LL_SafeConstants) == i:sub(#i,#i) then
        HasherClient.Hashes.GiftSafe = i
    end
    end
    
    --Interact
    
    InteractConstants = {}
    for i,v in pairs(getconstants(HasherClient.Modules.ExplodeWallFunc)) do  
    if type(v) == 'string' and v ~= 'sub' and v ~= 'reverse' and v ~= 'Name' and v ~= 'tick' and v ~= 'FireServer' and v ~= '' and v ~= 'ExplodeWall' then
        table.insert(InteractConstants, v)
    end
    end
    local FF_InteractConstants = InteractConstants[1]
    local LL_InteractConstants = InteractConstants[table.maxn(InteractConstants)]
    for i, v in pairs(HasherClient.Modules.HashTable) do
    if string.find(i, FF_InteractConstants) and string.find(i, LL_InteractConstants) and FF_InteractConstants:sub(1,1) == i:sub(1,1) and LL_InteractConstants:sub(#LL_InteractConstants,#LL_InteractConstants) == i:sub(#i,#i) then
        HasherClient.Hashes.Interact = i
    end
    end
    
    --

    local KickVHash = (function()
        for i,v in pairs(getgc(true)) do
            if type(v) == "table" and rawget(v, "t") and rawget(v, "i") == 0.1 and type(rawget(v, "c")) == "function" then
                local con = getconstants(v.c)
                if table.find(con, "Eject") and table.find(con, "MouseButton1Down") then
                    local bruh = getproto(v.c,1)
                    local aaa = getconstants(bruh)
                    local Kcon2 = {}
                    for i, v in pairs(aaa) do
                        if type(v) == "string" and v ~= "FireServer" then
                            table.insert(Kcon2, v)
                        end
                    end
                    local ka = Kcon2[1]
                    local kb = Kcon2[table.maxn(Kcon2)]
                    for i, v in pairs(AllHashes) do
                        if string.find(i, ka) and string.find(i, kb) then
                            return i
                        end
                    end
                end
            end
        end
    end)()

    Client = {
        Hashes = {
            Donut1 = HasherClient.Hashes.Donut1,    
            Donut2 = HasherClient.Hashes.Donut2,    
            KickHash = HasherClient.Hashes.KickHash,  
            Team = HasherClient.Hashes.Team,      
            GiftSafe = HasherClient.Hashes.GiftSafe,  
            HeliCrate = HasherClient.Hashes.HeliCrate, 
            Interact = HasherClient.Hashes.Interact,  
            Taze = TeamHash,
            KickVehicle = KickVHash,      
        },
        Toggles = {
            Walkspeed = false,
            JumpPower = false,
            InfJump = false,
            NoClip = false,
            NoRagdoll = false,
            Godmode = false,
            AutoFarm = false,
            AutoArrest = false,
            RainbowNitro = false,
            RainbowCar = false,
            InfNitro = false,
            RainbowCarS = false,
            LoopExplode = false,
            LoopVolcano = false,
            LoopSewer = false,
            OpenAllDoors = false,
            NoTirePop = false,
            NoWait = false,
            CtrlClickTP = false,
            Breakout = false
        },
        Values = {
            WalkSpeed = 16,
            JumpPower = 50,
            Method = 1,
            carspeed = 1,
            turnspeed = 1.5,
            suspention = 3,
            brakes = 1
        },
        Teleports = {
            ['Jewelry Out'] = CFrame.new(156.103851, 18.540699, 1353.72388),
            ['Jewelry In'] = CFrame.new(133.300705, 17.9375954, 1316.42407),
            ['Bank Out'] = CFrame.new(11.6854906, 17.8929214, 788.188171),
            ['Bank In'] = CFrame.new(24.6513691, 19.4347649, 853.291687),
            ['Museum Out'] = CFrame.new(1103.53406, 138.152878, 1246.98511),
            ['Donut Shop'] = CFrame.new(76.4559402, 21.0584793, -1591.01416, 0.790199757, 0.156331331, -0.592574954, 0.015425493, 0.96153754, 0.274239838, 0.612655461, -0.225844979, 0.757395089),
            ['Gas Station'] = CFrame.new(-1584.1051, 18.4732189, 721.38739),
            ['PowerPlant'] = CFrame.new(702.740967, 39.0193367, 2371.88672, -0.998025119, -0.00970620103, -0.0620610416, -0.00215026829, 0.992689848, -0.120674998, 0.0627786592, -0.120303221, -0.990750134),
            ['Airport'] = CFrame.new(-1227.47449, 64.4552231, 2787.64233),
            ['Gun Shop'] = CFrame.new(-27.8670673, 17.7929249, -1774.66882),
            ['Volcano Base'] = CFrame.new(1726.72266, 50.4146309, -1745.76196),
            ['City Base'] = CFrame.new(-244.824478, 17.8677788, 1573.81616),
            ['Boat Port'] = CFrame.new(-407.957886, 22.5707016, 2049.26074, -0.976195455, 0.0327876508, -0.214399904, 0.00279002171, 0.990324318, 0.138744399, 0.216874525, 0.134843469, -0.966841578),
            ['Boat Cave'] = CFrame.new(1875.21838, 32.8055534, 1909.28687, -0.701772571, 0.0434923843, -0.711072326, -0.0087880427, 0.997530222, 0.0696865618, 0.712346911, 0.0551530346, -0.699657202),
            ['Prison Cells'] = CFrame.new(-1461.07605, -0.318537951, -1824.14917),
            ['Prison Yard'] = CFrame.new(-1219.36316, 17.7750931, -1760.8584),
            ['Prison Parking'] = CFrame.new(-1173.36951, 18.698061, -1533.47656),
            ['1M Shop'] = CFrame.new(706.598267, 20.5805721, -1573.26294),
            ['Military Base'] = CFrame.new(766.283386, 18.0144463, -324.15921),
            ['Evil Lair'] = CFrame.new(1735.52405, 18.1646328, -1726.05249),
            ['Secret Agent Base'] = CFrame.new(1506.60754, 69.8824005, 1634.42456),
            ['Garage'] = CFrame.new(-384.259521, 19.6279697, 1221.55005),
            ['Lookout'] = CFrame.new(1328.05725, 166.614426, 2609.93457),
            ['Casino'] = CFrame.new(-272.717804, 19.515337, -4677.16992, 0.990908921, 3.56018255e-08, -0.134534627, -3.41914586e-08, 1, 1.27937607e-08, 0.134534627, -8.07751555e-09, 0.990908921),
        }
        }

    local startedTime = tick();
for i,v in pairs(getgc(true)) do
if not KickFunc and type(v) == 'function' and getfenv(v).script and getfenv(v).script == game:GetService('Players').LocalPlayer.PlayerScripts.LocalScript then
    if debug.getconstants(v) and table.find(debug.getconstants(v),'FailedPcall') then
        KickFunc = v
    end
end
end



if not KickFunc then
return nil 
end
--Notif('Please give DevHub some time to load!',3)


wait(0.5)
--Load GC Framework
local startedTime = tick();
for i,v in pairs(getgc(true)) do
if not Network and type(v) == 'table' and rawget(v,'FireServer') then
    Network = v
end
if not HashTable and type(v) == "table" then
    for i2,v2 in pairs(v) do
        if type(v2) == "string" and v2:sub(1,1) == "!" and v2:len() > 10 then
            HashTable = v
        end
    end
end
if not Falling and type(v) == "table" and rawget(v, 'Ragdoll') and rawget(v, 'Unragdoll') then
    Falling = v
end
if not DonutFunction and type(v) == "function" and getfenv(v).script == game:GetService("ReplicatedStorage").Inventory then
    DonutFunction = v
end
if not NitroTable and type(v) == "table" and rawget(v, "Nitro") and rawget(v,'NitroLastMax') then
    Nitro = v
end
if not GarageFuncCar and type(v) == 'function' and getfenv(v).script == game:GetService('ReplicatedStorage').Game.Garage.GarageUI then
    local Right = debug.getconstants(debug.getproto(require(game:GetService('ReplicatedStorage').Game.Garage.GarageUI).Init,1))
    if unpack(debug.getconstants(v)) == unpack(Right) and not table.find(debug.getconstants(v),'Index') then
        GarageFuncCar = v
    end
end
if not PlayFunc and type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript then
    local con = getconstants(v)
    if table.find(con, "Play") and table.find(con, "Source") and table.find(con, "FireServer") then
        PlayFunc = v
    end
end
if not DoorOpenFunc and type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript then
    local con = getconstants(v)
    if table.find(con, "SequenceRequireState") then
        DoorOpenFunc = v
    end
end
if not BBClient and type(v) == 'table' and rawget(v,'doesPlayerOwn') then
    BBClient = v
end
end
wait(.5)
if not HashTable[Client.Hashes.KickHash] then
--Notif("DEBUG : Unable to Find Kick Hash! Continue with caution!")
end

if PoliceFunction then
ArrestFunc = getupvalue(getupvalue(PoliceFunction,1),7)
end

local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/bobGui.lua"))()

local win = SolarisLib:New({
   Name = "DevHub | Jailbreak",
   Theme = "Red",
   FolderToSave = "SolarisLibStuff"
})



local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldindex = gmt.__index
gmt.__index = newcclosure(function(self,b)
    if b == "WalkSpeed" then
        return 16
    end
    if b == "JumpPower" then
        return 50
    end
    return oldindex(self,b)
end)

function Notif(Text,Time)
    require(game:GetService("ReplicatedStorage").Game.Notification).SetColor(Color3.fromRGB(0,0,0))
    require(game:GetService("ReplicatedStorage").Game.Notification).new({
        Text = Text,
        Duration = Time
    })
end

local Teleports_Tab = win:Tab("Teleports")
--local Farming_Tab = win:Tab('Farming')
local Player_Tab = win:Tab("LocalPlayer")
local Vehicle_Tab = win:Tab('Vehicle')
local Server_Tab = win:Tab("Server")
local Fun_Tab = win:Tab("Fun")
local Tool_Tab = win:Tab("Tools")
local Esp_Tab = win:Tab("Esp")

local Teleports_sec = Teleports_Tab:Section("Available Teleports")
--local Farming_sec = Farming_Tab:Section('Main')
local PlayerS = Player_Tab:Section("Character")
local Vehicle_sec = Vehicle_Tab:Section('Vehicle Mods')
--local Vehicle2_sec = Vehicle_Tab:Section('Movement')
local Server_sec = Server_Tab:Section("Server")
local Fun_sec = Fun_Tab:Section("Fun")
local Esp_sec = Esp_Tab:Section("Esp")

_G.Speed = true
_G.Jump = true
_G.InfJump = true
_G.NoRagdoll = false
_G.InfNitro = false
_G.CarSpeed = 1;
_G.turnspeed = 1.5;
_G.suspention = 3;

local getupvalues = debug.getupvalues
local setupvalue = debug.setupvalue
local getconstants = debug.getconstants
local getupvalue = debug.getupvalue
local getproto = getproto or debug.getproto

Notif("DevHub Loaded!",3);

--Teleport function



--Teleports_Tab

--[[Teleports_sec:Button("Prison In", function()
	local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
    teleport(CFrame.new(-1233.56116, 18.4980164, -1740.74011, 0.996626258, 5.81633453e-09, -0.0820736066, -6.73784895e-09, 1, -1.09509353e-08, 0.0820736066, 1.14669891e-08, 0.996626258));
end)

Teleports_sec:Button("Prison Out", function()
	local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(-1167.44385, 18.3958454, -1386.3313, 0.225322619, 2.62839421e-08, -0.974284232, 1.86601739e-08, 1, 3.12932329e-08, 0.974284232, -2.5231385e-08, 0.225322619));
end)

Teleports_sec:Button("Jewlery In", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(133.300705, 17.9375954, 1316.42407));
end)

Teleports_sec:Button("Jewlery Out", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(150, 18, 1373));
end)

Teleports_sec:Button("Bank In", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(24.6513691, 19.4347649, 853.291687));
end)

Teleports_sec:Button("Bank Out", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(11.6854906, 17.8929214, 788.188171));
end)

Teleports_sec:Button("Museum Out", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(1103.53406, 138.152878, 1246.98511));
end)

Teleports_sec:Button("Donut Shop", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(76.4559402, 21.0584793, -1591.01416, 0.790199757, 0.156331331, -0.592574954, 0.015425493, 0.96153754, 0.274239838, 0.612655461, -0.225844979, 0.757395089));
end)

Teleports_sec:Button("Gas Station", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(-1584.1051, 18.4732189, 721.38739));
end)

Teleports_sec:Button("PowerPlant", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(702.740967, 39.0193367, 2371.88672, -0.998025119, -0.00970620103, -0.0620610416, -0.00215026829, 0.992689848, -0.120674998, 0.0627786592, -0.120303221, -0.990750134));
end)

Teleports_sec:Button("Airport", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(-1227.47449, 64.4552231, 2787.64233));
end)

Teleports_sec:Button("Gun Shop", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(-27.8670673, 17.7929249, -1774.66882));
end)

Teleports_sec:Button("Volcano Base", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(1726.72266, 50.4146309, -1745.76196));
end)--]]

function TP(cframe)
	if gv() then
		if gv().Model.Name ~= "Volt" or gv.Model.Name ~= "Patrol" then
			gv().Model:SetPrimaryPartCFrame(cframe);
			return
		else
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
			return
		end
	else
		Remote:FireServer(Hashes["GetOutCar"])
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
		return
	end
end

--Teleport Method

local keys, network = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/KeyFetcher.lua"))();

local replicated_storage = game:GetService("ReplicatedStorage");
local run_service = game:GetService("RunService");
local pathfinding_service = game:GetService("PathfindingService");
local players = game:GetService("Players");
local tween_service = game:GetService("TweenService");

local player = players.LocalPlayer;

local dependencies = {
    variables = {
        up_vector = Vector3.new(0, 500, 0),
        raycast_params = RaycastParams.new(),
        path = pathfinding_service:CreatePath({WaypointSpacing = 3}),
        player_speed = 150, 
        vehicle_speed = 450
    },
    modules = {
        ui = require(replicated_storage.Module.UI),
        store = require(replicated_storage.App.store),
        player_utils = require(replicated_storage.Game.PlayerUtils),
        vehicle_data = require(replicated_storage.Game.Garage.VehicleData)
    },
    helicopters = {Heli = true}, -- heli is included in free vehicles
    motorcycles = {Volt = true}, -- volt type is "custom" but works the same as a motorcycle
    free_vehicles = {},
    unsupported_vehicles = {},
    doors = {}    
};

local movement = {};
local utilities = {};

--// function to toggle if a door can be collided with

function utilities:toggle_door_collision(toggle)
    for index, door in next, dependencies.doors do 
        for index, child in next, door.Model:GetChildren() do 
            if child:IsA("BasePart") then 
                child.CanCollide = toggle;
            end; 
        end;
    end;
end;

--// function to get the nearest vehicle that can be entered

function utilities:get_nearest_vehicle(tried) -- unoptimized
    local nearest;
    local distance = math.huge;

    for index, action in next, dependencies.modules.ui.CircleAction.Specs do -- all of the interations
        if action.IsVehicle and action.ShouldAllowEntry == true and action.Enabled == true and action.Name == "Enter Driver" then -- if the interaction is to enter the driver seat of a vehicle
            local vehicle = action.ValidRoot;

            if not table.find(tried, vehicle) and workspace.VehicleSpawns:FindFirstChild(vehicle.Name) then
                if not dependencies.unsupported_vehicles[vehicle.Name] and (dependencies.modules.store._state.garageOwned.Vehicles[vehicle.Name] or dependencies.free_vehicles[vehicle.Name]) and not vehicle.Seat.Player.Value then -- check if the vehicle is supported, owned and not already occupied
                    if not workspace:Raycast(vehicle.Seat.Position, dependencies.variables.up_vector, dependencies.variables.raycast_params) then
                        local magnitude = (vehicle.Seat.Position - player.Character.HumanoidRootPart.Position).Magnitude; 
            
                        if magnitude < distance then 
                            distance = magnitude;
                            nearest = vehicle;
                        end;
                    end;
                end;
            end;
        end;
    end;

    return nearest;
end;

--// function to pathfind to a position with no collision above

function movement:pathfind(tried)
    local tried = tried or {};
    local nearest_vehicle = utilities:get_nearest_vehicle(tried);

    if nearest_vehicle then
        utilities:toggle_door_collision(false);

        local path = dependencies.variables.path;
        path:ComputeAsync(player.Character.HumanoidRootPart.Position, nearest_vehicle.PrimaryPart.Position);

        if path.Status == Enum.PathStatus.Success then -- if path making is successful
            local waypoints = path:GetWaypoints();

            for index = 1, #waypoints do 
                local waypoint = waypoints[index];
                
                player.Character.HumanoidRootPart.CFrame = CFrame.new(waypoint.Position + Vector3.new(0, 2.5, 0)); -- walking movement is less optimal

                if not workspace:Raycast(player.Character.HumanoidRootPart.Position, dependencies.variables.up_vector, dependencies.variables.raycast_params) then -- if there is nothing above the player
                    utilities:toggle_door_collision(true);

                    return;
                end;

                wait(0.05);
            end;
        end;

        table.insert(tried, nearest_vehicle);
    end;

    movement:pathfind(tried);
end;

--// function to interpolate characters position to a position

function movement:move_to_position(part, cframe, speed, car, target_vehicle, tried_vehicles)
    local vector_position = cframe.Position;
    
    if not car and workspace:Raycast(part.Position, dependencies.variables.up_vector, dependencies.variables.raycast_params) then -- if there is an object above us, use pathfind function to get to a position with no collision above
        movement:pathfind({});
        wait(0.5);
    end;
    
    local y_level = 500;
    local higher_position = Vector3.new(vector_position.X, y_level, vector_position.Z); -- 500 studs above target position

    repeat -- use velocity to move towards the target position
        local velocity_unit = (higher_position - part.Position).Unit * speed;
        part.Velocity = Vector3.new(velocity_unit.X, 0, velocity_unit.Z);

        task.wait();

        part.CFrame = CFrame.new(part.CFrame.X, y_level, part.CFrame.Z);

        if target_vehicle and target_vehicle.Seat.Player.Value then -- if someone occupies the vehicle while we're moving to it, we need to move to the next vehicle
            table.insert(tried_vehicles, target_vehicle);

            local nearest_vehicle = utilities:get_nearest_vehicle(tried_vehicles);

            if nearest_vehicle then 
                movement:move_to_position(player.Character.HumanoidRootPart, nearest_vehicle.Seat.CFrame, 135, false, nearest_vehicle);
            end;

            return;
        end;
    until (part.Position - higher_position).Magnitude < 10;

    part.CFrame = CFrame.new(part.Position.X, vector_position.Y, part.Position.Z);
    part.Velocity = Vector3.new(0, 0, 0);
end;

--// raycast filter

dependencies.variables.raycast_params.FilterType = Enum.RaycastFilterType.Blacklist;
dependencies.variables.raycast_params.FilterDescendantsInstances = {player.Character, workspace.Vehicles, workspace:FindFirstChild("Rain")};

workspace.ChildAdded:Connect(function(child) -- if it starts raining, add rain to collision ignore list
    if child.Name == "Rain" then 
        table.insert(dependencies.variables.raycast_params.FilterDescendantsInstances, child);
    end;
end);

player.CharacterAdded:Connect(function(character) -- when the player respawns, add character back to collision ignore list
    table.insert(dependencies.variables.raycast_params.FilterDescendantsInstances, character);
end);

--// get free vehicles, owned helicopters, motorcycles and unsupported/new vehicles

for index, vehicle_data in next, dependencies.modules.vehicle_data do
    if vehicle_data.Type == "Heli" then -- helicopters
        dependencies.helicopters[vehicle_data.Make] = true;
    elseif vehicle_data.Type == "Motorcycle" then --- motorcycles
        dependencies.motorcycles[vehicle_data.Make] = true;
    end;

    if vehicle_data.Type ~= "Chassis" and vehicle_data.Type ~= "Motorcycle" and vehicle_data.Type ~= "Heli" and vehicle_data.Type ~= "DuneBuggy" and vehicle_data.Make ~= "Volt" then -- weird vehicles that are not supported
        dependencies.unsupported_vehicles[vehicle_data.Make] = true;
    end;
    
    if not vehicle_data.Price then -- free vehicles
        dependencies.free_vehicles[vehicle_data.Make] = true;
    end;
end;

--// get all doors

for index, value in next, workspace:GetChildren() do
    if value.Name:sub(-4, -1) == "Door" and value:FindFirstChild("Model") then 
        table.insert(dependencies.doors, value);
    end;
end;

--// no damage and ragdoll 

local old_fire_server = getupvalue(network.FireServer, 1);
setupvalue(network.FireServer, 1, function(key, ...)
    if key == keys.Damage then 
        return;
    end;

    return old_fire_server(key, ...);
end);

local old_is_point_in_tag = dependencies.modules.player_utils.isPointInTag;
dependencies.modules.player_utils.isPointInTag = function(point, tag)
    if tag == "NoRagdoll" or tag == "NoFallDamage" then 
        return true;
    end;
    
    return old_is_point_in_tag(point, tag);
end;

local function carTP(cframe, tried) -- unoptimized
    local relative_position = (cframe.Position - player.Character.HumanoidRootPart.Position);
    local target_distance = relative_position.Magnitude;

    if target_distance <= 20 and not workspace:Raycast(player.Character.HumanoidRootPart.Position, relative_position.Unit * target_distance, dependencies.variables.raycast_params) then 
        player.Character.HumanoidRootPart.CFrame = cframe; 

        return;
    end; 

    local tried = tried or {};
    local nearest_vehicle = utilities:get_nearest_vehicle(tried);

    if nearest_vehicle then 
        local vehicle_distance = (nearest_vehicle.Seat.Position - player.Character.HumanoidRootPart.Position).Magnitude; 

        if target_distance < vehicle_distance then -- if target position is closer than the nearest vehicle
            movement:move_to_position(player.Character.HumanoidRootPart, cframe, dependencies.variables.player_speed);
        else 
            if nearest_vehicle.Seat.PlayerName.Value ~= player.Name then
                movement:move_to_position(player.Character.HumanoidRootPart, nearest_vehicle.Seat.CFrame, dependencies.variables.player_speed, false, nearest_vehicle, tried);

                local enter_attempts = 1;

                repeat -- attempt to enter car
                    network:FireServer(keys.EnterCar, nearest_vehicle, nearest_vehicle.Seat);
                    
                    enter_attempts = enter_attempts + 1;

                    wait(0.1);
                until enter_attempts == 10 or nearest_vehicle.Seat.PlayerName.Value == player.Name;

                if nearest_vehicle.Seat.PlayerName.Value ~= player.Name then -- if it failed to enter, try a new car
                    table.insert(tried, nearest_vehicle);

                    return teleport(cframe, tried or {nearest_vehicle});
                end;
            end;

            local vehicle_root_part; -- inline conditional would be way too long

            if dependencies.helicopters[nearest_vehicle.Name] then -- each type of vehicle has a different root part, which is why we sort them so we can do this
                vehicle_root_part = nearest_vehicle.Model.TopDisc;
            elseif dependencies.motorcycles[nearest_vehicle.Name] then 
                vehicle_root_part = nearest_vehicle.CameraVehicleSeat;
            elseif nearest_vehicle.Name == "DuneBuggy" then 
                vehicle_root_part = nearest_vehicle.BoundingBox;
            else 
                vehicle_root_part = nearest_vehicle.PrimaryPart;
            end;

            movement:move_to_position(vehicle_root_part, cframe, dependencies.variables.vehicle_speed, true);

            repeat -- attempt to exit car
                wait(0.15);
                network:FireServer(keys.ExitCar);
            until nearest_vehicle.Seat.PlayerName.Value ~= player.Name;
        end;
    end;
end;

local function TP(cframe, tried) -- unoptimized
    movement:move_to_position(player.Character.HumanoidRootPart, cframe, dependencies.variables.player_speed); 
end;

local function ClickTP(cframe, tried) -- unoptimized
    movement:move_to_position(player.Character.HumanoidRootPart, cframe, dependencies.variables.player_speed); 
end;


--[[for i,v in pairs(Client.Teleports) do
    Teleports_sec:Button(tostring(i),function()
        if Client.Values.Method == 1 then
            local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
            teleport(v);
        else
            Temp_Tried = 1
            local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
            teleport(v);
        end
    end)
end--]]

Locations = { 
    "Airport", 
    "Gun Shop", 
    "Volcano Base", 
    "City Base",
    "Boat Port",
    "Boat Cave",
    "Prison Cells",
    "Prison Yard",
    "Prison Parking",
    "1M Shop",
    "Military Base",
    "Evil Lair",
    "Secret Agent Base",
    "Garage",
    "Lookout",
}

Stores1 = {
    "Donut Shop",
    "Gas Station",
    "Casino",
    "PowerPlant",
    "Jewlery Out",
    "Jewlery In",
    "Bank In",
    "Bank Out",
    "Museum Out",
}

Vehicles = {
    "Prison Camaro",
    "Lamborghini",
    "Bugatti",
    "McLaren",
    "Pickup Truck",
    "Model3",
    "Mini Cooper",
    "Dirtbike",
    "SUV",
    "Dune Buggy",
    "ATV",
    "Mustang",
    "Porsche",
    "Ambulance",
    "UFO",
    "SWAT Van",
    "Wraith",
    "Ferrari",
    "Classic",
    "Audi R8",
    "Raptor",
    "Police Motorcycle",
    "Firetruck",
    "Jet Skis",
}

Teleports_sec:Dropdown("Teleport Method", {"Method 1","Method 2"} ,"","", function(TPMethod)
    if TPMethod == "Method 1" then
        Client.Values.Method = 1
        Notif("Using Method 1",2)
    else
        Client.Values.Method = 2
        Notif("Using Method 2",2)
    end
end)

Teleports_sec:Textbox("Teleport to Player", true, function(tpplayer)
	for i,v in next, game:GetService("Players"):GetPlayers() do
		if string.find(string.lower(v.Name), string.lower(tostring(tpplayer)))  then
            --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
            --teleport(v.Character.HumanoidRootPart.CFrame);
            if Client.Values.Method == 1 then
                carTP(v.Character.HumanoidRootPart.CFrame)
            else
                Temp_Tried = 1
                TP(v.Character.HumanoidRootPart.CFrame)
            end
		end
	end
end)

Teleports_sec:Dropdown("Locations", Locations,"","", function(tp)
	if tp == "Airport" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(-1227.47449, 64.4552231, 2787.64233));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(-1227.47449, 64.4552231, 2787.64233))
        else
            Temp_Tried = 1
            TP(CFrame.new(-1227.47449, 64.4552231, 2787.64233))
        end
    end
    if tp == "Gun Shop" then
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(-27.8670673, 17.7929249, -1774.66882));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(-27.8670673, 17.7929249, -1774.66882))
        else
            Temp_Tried = 1
            TP(CFrame.new(-27.8670673, 17.7929249, -1774.66882))
        end
    end
    if tp == "Volcano Base" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(1726.72266, 50.4146309, -1745.76196));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(1726.72266, 50.4146309, -1745.76196))
        else
            Temp_Tried = 1
            TP(CFrame.new(1726.72266, 50.4146309, -1745.76196))
        end
    end
    if tp == "City Base" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(-244.824478, 17.8677788, 1573.81616));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(-244.824478, 17.8677788, 1573.81616))
        else
            Temp_Tried = 1
            TP(CFrame.new(-244.824478, 17.8677788, 1573.81616))
        end
    end
    if tp == "Boat Port" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(-407.957886, 22.5707016, 2049.26074, -0.976195455, 0.0327876508, -0.214399904, 0.00279002171, 0.990324318, 0.138744399, 0.216874525, 0.134843469, -0.966841578));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(-407.957886, 22.5707016, 2049.26074, -0.976195455, 0.0327876508, -0.214399904, 0.00279002171, 0.990324318, 0.138744399, 0.216874525, 0.134843469, -0.966841578))
        else
            Temp_Tried = 1
            TP(CFrame.new(-407.957886, 22.5707016, 2049.26074, -0.976195455, 0.0327876508, -0.214399904, 0.00279002171, 0.990324318, 0.138744399, 0.216874525, 0.134843469, -0.966841578))
        end
    end
    if tp == "Boat Cave" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(1875.21838, 32.8055534, 1909.28687, -0.701772571, 0.0434923843, -0.711072326, -0.0087880427, 0.997530222, 0.0696865618, 0.712346911, 0.0551530346, -0.699657202));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(1875.21838, 32.8055534, 1909.28687, -0.701772571, 0.0434923843, -0.711072326, -0.0087880427, 0.997530222, 0.0696865618, 0.712346911, 0.0551530346, -0.699657202))
        else
            Temp_Tried = 1
            TP(CFrame.new(1875.21838, 32.8055534, 1909.28687, -0.701772571, 0.0434923843, -0.711072326, -0.0087880427, 0.997530222, 0.0696865618, 0.712346911, 0.0551530346, -0.699657202))
        end
    end
    if tp == "Prison Cells" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(-1461.07605, -0.318537951, -1824.14917));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(-1461.07605, -0.318537951, -1824.14917))
        else
            Temp_Tried = 1
            TP(CFrame.new(-1461.07605, -0.318537951, -1824.14917))
        end
    end
    if tp == "Prison Yard" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(-1219.36316, 17.7750931, -1760.8584));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(-1219.36316, 17.7750931, -1760.8584))
        else
            Temp_Tried = 1
            TP(CFrame.new(-1219.36316, 17.7750931, -1760.8584))
        end
    end
    if tp == "Prison Parking" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(-1173.36951, 18.698061, -1533.47656));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(-1173.36951, 18.698061, -1533.47656))
        else
            Temp_Tried = 1
            TP(CFrame.new(-1173.36951, 18.698061, -1533.47656))
        end
    end
    if tp == "1M Shop" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(706.598267, 20.5805721, -1573.26294));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(706.598267, 20.5805721, -1573.26294))
        else
            Temp_Tried = 1
            TP(CFrame.new(706.598267, 20.5805721, -1573.26294))
        end
    end
    if tp == "Military Base" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(766.283386, 18.0144463, -324.15921));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(766.283386, 18.0144463, -324.15921))
        else
            Temp_Tried = 1
            TP(CFrame.new(766.283386, 18.0144463, -324.15921))
        end
    end
    if tp == "Evil Lair" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(1735.52405, 18.1646328, -1726.05249));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(1735.52405, 18.1646328, -1726.05249))
        else
            Temp_Tried = 1
            TP(CFrame.new(1735.52405, 18.1646328, -1726.05249))
        end
    end
    if tp == "Secret Agent Base" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(1506.60754, 69.8824005, 1634.42456));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(1506.60754, 69.8824005, 1634.42456))
        else
            Temp_Tried = 1
            TP(CFrame.new(1506.60754, 69.8824005, 1634.42456))
        end
    end
    if tp == "Garage" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(-384.259521, 19.6279697, 1221.55005));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(-384.259521, 19.6279697, 1221.55005))
        else
            Temp_Tried = 1
            TP(CFrame.new(-384.259521, 19.6279697, 1221.55005))
        end
    end
    if tp == "Lookout" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(1328.05725, 166.614426, 2609.93457));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(1328.05725, 166.614426, 2609.93457))
        else
            Temp_Tried = 1
            TP(CFrame.new(1328.05725, 166.614426, 2609.93457))
        end
    end
end)
Teleports_sec:Dropdown("Stores", Stores1,"","", function(stores)
	if stores == "Donut Shop" then 
        local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(76.4559402, 21.0584793, -1591.01416, 0.790199757, 0.156331331, -0.592574954, 0.015425493, 0.96153754, 0.274239838, 0.612655461, -0.225844979, 0.757395089));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(76.4559402, 21.0584793, -1591.01416, 0.790199757, 0.156331331, -0.592574954, 0.015425493, 0.96153754, 0.274239838, 0.612655461, -0.225844979, 0.757395089))
        else
            Temp_Tried = 1
            TP(CFrame.new(76.4559402, 21.0584793, -1591.01416, 0.790199757, 0.156331331, -0.592574954, 0.015425493, 0.96153754, 0.274239838, 0.612655461, -0.225844979, 0.757395089))
        end
    end
    if stores == "Gas Station" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(-1584.1051, 18.4732189, 721.38739));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(-1584.1051, 18.4732189, 721.38739))
        else
            Temp_Tried = 1
            TP(CFrame.new(-1584.1051, 18.4732189, 721.38739))
        end
    end
    if stores == "Casino" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(-272.717804, 19.515337, -4677.16992, 0.990908921, 3.56018255e-08, -0.134534627, -3.41914586e-08, 1, 1.27937607e-08, 0.134534627, -8.07751555e-09, 0.990908921));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(-272.717804, 19.515337, -4677.16992, 0.990908921, 3.56018255e-08, -0.134534627, -3.41914586e-08, 1, 1.27937607e-08, 0.134534627, -8.07751555e-09, 0.990908921))
        else
            Temp_Tried = 1
            TP(CFrame.new(-272.717804, 19.515337, -4677.16992, 0.990908921, 3.56018255e-08, -0.134534627, -3.41914586e-08, 1, 1.27937607e-08, 0.134534627, -8.07751555e-09, 0.990908921))
        end
    end
    if stores == "PowerPlant" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(702.740967, 39.0193367, 2371.88672, -0.998025119, -0.00970620103, -0.0620610416, -0.00215026829, 0.992689848, -0.120674998, 0.0627786592, -0.120303221, -0.990750134));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(702.740967, 39.0193367, 2371.88672, -0.998025119, -0.00970620103, -0.0620610416, -0.00215026829, 0.992689848, -0.120674998, 0.0627786592, -0.120303221, -0.990750134))
        else
            Temp_Tried = 1
            TP(CFrame.new(702.740967, 39.0193367, 2371.88672, -0.998025119, -0.00970620103, -0.0620610416, -0.00215026829, 0.992689848, -0.120674998, 0.0627786592, -0.120303221, -0.990750134))
        end
    end
    if stores == "Jewlery Out" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(156.103851, 18.540699, 1353.72388));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(156.103851, 18.540699, 1353.72388))
        else
            Temp_Tried = 1
            TP(CFrame.new(156.103851, 18.540699, 1353.72388))
        end
    end
    if stores == "Jewlery In" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(133.300705, 17.9375954, 1316.42407));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(133.300705, 17.9375954, 1316.42407))
        else
            Temp_Tried = 1
            TP(CFrame.new(133.300705, 17.9375954, 1316.42407))
        end
    end
    if stores == "Bank In" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(24.6513691, 19.4347649, 853.291687));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(24.6513691, 19.4347649, 853.291687))
        else
            Temp_Tried = 1
            TP(CFrame.new(24.6513691, 19.4347649, 853.291687))
        end
    end
    if stores == "Bank Out" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(11.6854906, 17.8929214, 788.188171));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(11.6854906, 17.8929214, 788.188171))
        else
            Temp_Tried = 1
            TP(CFrame.new(11.6854906, 17.8929214, 788.188171))
        end
    end
    if stores == "Museum Out" then 
        --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        --teleport(CFrame.new(1103.53406, 138.152878, 1246.98511));
        if Client.Values.Method == 1 then
            carTP(CFrame.new(1103.53406, 138.152878, 1246.98511))
        else
            Temp_Tried = 1
            TP(CFrame.new(1103.53406, 138.152878, 1246.98511))
        end
    end
end)
Teleports_sec:Dropdown("Vehicles", Vehicles,"","", function(vehicle)
    
end)

--[[Teleports_sec:Button("Abort", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
    teleport(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
end)--]]

--[[Teleports_sec:Toggle("Ctrl+ClicktoTP", false,"ClickTp", function(Click)
    Client.Toggles.CtrlClickTP = Click
end)--]]

local Player = game:GetService("Players").LocalPlayer

local Mouse = Player:GetMouse()

local UserInputService = game:GetService("UserInputService")

Mouse.Button1Down:Connect(function()
    if Client.Toggles.CtrlClickTP and Player.Character ~= nil then
        --[[if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl) then
            --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
            ClickTP(Mouse.Hit.Position)
        end--]]
        ClickTP(Mouse.Hit)
    end
end)


--Farming_Tab

--[[_G.autorob = false

Farming_sec:Toggle("Auto Rob", false,"Rob", function(Rob)
	_G.autorob = Rob
end)

function RobBank()
    if workspace.Banks:GetChildren()[1].Extra.Sign.Decal.Transparency == 1 then
        local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
        teleport(CFrame.new(14.2577333, 18.5636597, 790.325378, -0.999996722, -3.98579503e-10, -0.00256657181, -4.79663753e-10, 1, 3.15918172e-08, 0.00256657181, 3.15929434e-08, -0.999996722))
    end
end

spawn(function()
	while wait() do
		if _G.autorob then
            RobBank()
			--JewlRobbing()
			--robmuseum()
			--RobPlane()
			--RobTrain()
		end
	end
end)--]]


--[[Farming_sec:Button("Rob Small Stores", function()
	for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
		if v.Name == "Rob" then
			v:Callback(v, true)
		end
	end
end)--]]

--[[_G.BankRobbed = nil
_G.JewRobbed = nil
_G.MusRobbed = nil
_G.TrainRobbed = nil
spawn(function()
	while wait(2) do
		if workspace.Banks:GetChildren()[1].Extra.Sign.Decal.Transparency == 0 then
			_G.BankRobbed = false
		end
		if workspace.Jewelrys:GetChildren()[1].Extras.Sign.Decal.Transparency == 0 then
			_G.JewRobbed = false
		end
		for i,v in pairs(workspace.Museum.Roof.Hole:GetChildren()) do
			if v:GetChildren()[1] then
				if v.Transparency == 0 then
				_G.MusRobbed = false
			end
		end
		if not workspace.Trains:GetChildren()[1] then
			_G.TrainRobbed = false
		end
	end
	end
end)

_G.AutoRobbing = nil
local notificationcreate = sendn
function JewBox()
	for i,v in pairs(workspace.Jewelrys:GetDescendants()[1]) do
		if v.Name == "Boxes" then
			local part = v:GetChildren()[math.random(1,table.maxn(v:GetChildren()))]
			local pos = CFrame.new(part.Position - part.CFrame.LookVector * 2, part.Position)
			return pos
		end
	end
end
function JewlRobbing()
	if _G.AutoRobbing or _G.JewRobbed then return end
		_G.AutoRobbing = true
		for i,v in pairs(game.Workspace.Jewelrys:GetDescendants()) do
			if v:IsA("Decal") then
				if v.Parent.Name == "Sign" then
					if v.Transparency > 0.5 then
                        Notif('Jewelry open', 3)
                    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
					teleport(CFrame.new(91.6347504, 20.2128963, 1302.44189, 0.164838046, 0.0733769536, -0.983587563, 0.0025376468, 0.997194052, 0.0748172998, 0.986317396, -0.0148287192, 0.164189309));
					wait(2)
					for count = 1, 4 do
                        local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
						teleport(JewBox());
						wait(0.5)
						punch(8)
						wait(0.5)
					end
					wait(2)
                    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
					teleport(CFrame.new(1730.87537, 20.45331, -1727.92773, -0.147335127, -0.224534824, 0.963263392, 0.00532062072, 0.973697841, 0.227780879, -0.989072263, 0.0386852883, -0.142265216));
					teleport(CFrame.new(1730.87537, 20.45331, -1727.92773, -0.147335127, -0.224534824, 0.963263392, 0.00532062072, 0.973697841, 0.227780879, -0.989072263, 0.0386852883, -0.142265216));
					_G.JewRobbed = true
					_G.AutoRobbing = false
				elseif v.Transparency == 0 then
					Notif('Jewelry open', 3)
                    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
					teleport(CFrame.new(1730.87537, 20.45331, -1727.92773, -0.147335127, -0.224534824, 0.963263392, 0.00532062072, 0.973697841, 0.227780879, -0.989072263, 0.0386852883, -0.142265216));
					_G.AutoRobbing = false
				end
			end
		end
	end
end
local function GetMoneyCapacity(a)local b=tostring(a)or a.Text;local c=b:sub(4,10)local d=c:gsub(",","")local e=tonumber(d)return e end
function getNumber(pretty)
	local lol = ''
	for i = 1, pretty:len() do
		local char = pretty:sub(i, i)
		if char:match('%d') then
			lol = lol .. char
		end
	end
	return tonumber(lol)
end
_G.AutoRobbing = nil
local notificationcreate = sendn
function JewBox()
	for i,v in pairs(workspace.Jewelrys:GetDescendants()) do
		if v.Name == "Boxes" then
			local part = v:GetChildren()[math.random(1,table.maxn(v:GetChildren()))]
			local pos = CFrame.new(part.Position - part.CFrame.LookVector * 2, part.Position)
			return pos
		end
	end
end
function JewlRobbing()
	if _G.AutoRobbing or _G.JewRobbed then return end
		_G.AutoRobbing = true
		for i,v in pairs(game.Workspace.Jewelrys:GetDescendants()) do
			if v:IsA("Decal") then
				if v.Parent.Name == "Sign" then
					if v.Transparency > 0.5 then
					Notif('Jewelry open', 3)
					TP(CFrame.new(91.6347504, 20.2128963, 1302.44189, 0.164838046, 0.0733769536, -0.983587563, 0.0025376468, 0.997194052, 0.0748172998, 0.986317396, -0.0148287192, 0.164189309))
					wait(2)
					for count = 1, 4 do
						TP(JewBox())
						wait(0.5)
						punch(8)
						wait(0.5)
					end
					wait(2)
                    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
					teleport(CFrame.new(1730.87537, 20.45331, -1727.92773, -0.147335127, -0.224534824, 0.963263392, 0.00532062072, 0.973697841, 0.227780879, -0.989072263, 0.0386852883, -0.142265216))
					teleport(CFrame.new(1730.87537, 20.45331, -1727.92773, -0.147335127, -0.224534824, 0.963263392, 0.00532062072, 0.973697841, 0.227780879, -0.989072263, 0.0386852883, -0.142265216))
					_G.JewRobbed = true
					_G.AutoRobbing = false
				elseif v.Transparency == 0 then
					Notif('Jewelry closed', 3)
                    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
					teleport(CFrame.new(1730.87537, 20.45331, -1727.92773, -0.147335127, -0.224534824, 0.963263392, 0.00532062072, 0.973697841, 0.227780879, -0.989072263, 0.0386852883, -0.142265216))
					_G.AutoRobbing = false
				end
			end
		end
	end
end
local function GetMoneyCapacity(a)local b=tostring(a)or a.Text;local c=b:sub(4,10)local d=c:gsub(",","")local e=tonumber(d)return e end
function getNumber(pretty)
	local lol = ''
	for i = 1, pretty:len() do
		local char = pretty:sub(i, i)
		if char:match('%d') then
			lol = lol .. char
		end
	end
	return tonumber(lol)
end
function checkmuseum()
	for i,v in pairs(workspace.Museum.Roof.Hole:GetChildren()) do
		if v:GetChildren()[1] then
			if v.Transparency == 0 then
				return false
			else
				return true
			end
		end
	end
end
function robmuseum()
	if _G.AutoRobbing or _G.MusRobbed then return end
	_G.AutoRobbing = true
	if not checkmuseum() then
		for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
			if v.Name == "Place Dynamite" and tostring(v.Tag) ~= "BankDoor" and v.Enabled then
				v:Callback(true)
			end
		end
	end
	wait(1)
	if not checkmuseum() then 
		notificationcreate('Museum', 'Closed', 3)
		_G.AutoRobbing = false
		teleport(CFrame.new(1730.87537, 20.45331, -1727.92773))
		return 
	end
	for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
		if rawget(v, "Name") then
			if string.find(v.Name, "Grab") and v.Name ~= "Grab" then
				if v.Name == "Grab Bone" and v.Enabled then
					teleport(v.Tag.CFrame)
					wait(1)
					for count = 1,8 do
						v:Callback(true)
					end
					break
				end
			end
		end
	end
	teleport(CFrame.new(1730.87537, 20.45331, -1727.92773))  
	teleport(20)
	teleport(CFrame.new(1761.20618, 52.1366386, -1790.52783))
	wait(2)
	teleport(CFrame.new(1730.87537, 20.45331, -1727.92773))
	_G.MusRobbed = true
	_G.AutoRobbing = false
	return
end

Farming_sec:Toggle("Auto Rob", false,"Rob", function(Rob)
	_G.autorobcheck = Rob
end)

spawn(function()
	while wait() do
		if _G.autorobcheck then
			JewlRobbing()
			robmuseum()
			RobPlane()
			RobTrain()
			for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
				if v.Name == "Rob" then
					v:Callback(v, true)
				end
			end
			wait(14)
		end
	end
end)--]]

--Vehicle

local Auto Pilot = Vehicle_sec:Toggle("Auto Pilot", false,"Auto Pilot", function(state)
	--debug.setupvalue(require(game:GetService('ReplicatedStorage').Module.AlexChassis).OnAction, 8, state)
end)

local RainbowNitroClient = Vehicle_sec:Toggle("Rainbow Nitro Client", false,"Rainbow Nitro Client", function(RainboNitro)
    Client.Toggles.RainbowNitro = RainboNitro
end)

local RainbowCarClient = Vehicle_sec:Toggle("Rainbow Car Client", false,"Rainbow Car Client", function(RainboCar)
    Client.Toggles.RainbowCar = RainboCar
end)

local InfNitroClient = Vehicle_sec:Toggle("Inf Nitro Client", false,"Inf Nitro Client", function(Inf)
    Client.Toggles.InfNitro = Inf
end)

Vehicle_sec:Toggle("Injan Horn", false,"Injan Horn", function(Injan)
    --local id = game:GetService("Players").LocalPlayer.UserId
    require(game:GetService("ReplicatedStorage").Resource.Settings).Perm.InjanHorn.Id[tostring(game:GetService("Players").LocalPlayer.UserId)] = Injan
end)

local FlySpeed = 50
function GetCarMain()
local x = game:GetService("Players").LocalPlayer.Name
for j, y in pairs(workspace.Vehicles:GetChildren()) do
    if y:FindFirstChild("Seat") and y:FindFirstChild("Engine") then
        if y.Seat.PlayerName.Value == x then
            return y.Engine, false
        end
    elseif y:FindFirstChild("Seat") and y:FindFirstChild("Model") then
        if y.Seat.PlayerName.Value == x then
            if y.Model:FindFirstChild("Body") then
                return y.Model.Body, true
            end
        end
    end
end
end
function FlyPart(z, A)
local B = Instance.new("Folder")
B.Name = "Storage"
for j, C in pairs(z:GetChildren()) do
    if C:IsA("BodyGyro") then
        C.Parent = B
    end
end
local D = Instance.new("BodyPosition", z)
D.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
D.Name = "Position"
local E = Instance.new("BodyGyro", z)
E.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
E.Name = "Rotate"
workspace.CurrentCamera.CameraSubject = z
local f = game:GetService("Players").LocalPlayer:GetMouse()
local F = 0
local G =
    f.KeyDown:Connect(
    function(H)
        if H == "w" then
            if A then
                F = FlySpeed
            else
                F = tonumber("-" .. tostring(FlySpeed))
            end
        elseif H == "s" then
            if A then
                F = tonumber("-" .. tostring(FlySpeed))
            else
                F = FlySpeed
            end
        end
    end
)
f.KeyUp:Connect(
    function(H)
        if H == "w" then
            F = 0
        elseif H == "s" then
            F = 0
        end
    end
)
local I = {}
I.IsRunning = true
I.Part = z
I.Storage = B
I.MT = G
coroutine.resume(
    coroutine.create(
        function()
            repeat
                local J = workspace.CurrentCamera.CFrame
                local K = z.Position
                local L = (K - J.p).Magnitude
                D.Position = (J * CFrame.new(0, 0, tonumber("-" .. tostring(L)) + F)).p + Vector3.new(0, 0.2225, 0)
                E.CFrame = J
                wait()
            until I.IsRunning == false or workspace.CurrentCamera.CameraSubject ~= z
            D:Remove()
            E:Remove()
            for j, M in pairs(I.Storage:GetChildren()) do
                M.Parent = I.Part
            end
            I.MT:Disconnect()
            I.Storage:Remove()
        end
    )
)
return I
end

Vehicle_sec:Button("Car Fly", function()
    if GetCarMain() ~= nil then
        local O, A = GetCarMain()
        local P = FlyPart(O, A)
        if A then
            repeat
                wait()
            until O.Parent.Parent.Seat.PlayerName.Value ~= game:GetService("Players").LocalPlayer.Name
        else
            repeat
                wait()
            until O.Parent.Seat.PlayerName.Value ~= game:GetService("Players").LocalPlayer.Name
        end
        wait(0.1)
        workspace.CurrentCamera.CameraSubject = d
    end
end)

local CarSpeed = Vehicle_sec:Slider("Car Fly Speed", 10,300,0,2.5,"Car Fly Speed", function(CarFly)
    FlySpeed = CarFly
end)

Vehicle_sec:Button("Boats On Land", function()
    local old = require(game:GetService("ReplicatedStorage").Game.Boat.Boat).UpdatePhysics
require(game:GetService("ReplicatedStorage").Game.Boat.Boat).UpdatePhysics = function(abc)
    abc.Config.SpeedForward = 5
    return old(abc)
end
end)

local CarSpeed = Vehicle_sec:Slider("CarSpeed", 1,100,0,1,"CarSpeed", function(CarSp)
    Client.Values.carspeed = CarSp;
end)

local turnSpeed = Vehicle_sec:Slider("turnSpeed", 1.5,100,0,1.5,"turnSpeed", function(CarTurn)
    Client.Valuesturnspeed = CarTurn;
end)

local suspention = Vehicle_sec:Slider("Suspention", 3,100,0,3,"Suspention", function(poop)
    Client.Values.suspention = poop;
end)

local brakes = Vehicle_sec:Slider("Brakes", 1,100,0,1,"rakes", function(brake)
    Client.Values.brakes = brake;
end)

game:GetService("RunService").RenderStepped:Connect(function()
    local x = pcall(function()
    local vehicle = require(game:GetService("ReplicatedStorage").Game.Vehicle)
    debug.getupvalues(vehicle["GetLocalVehiclePacket"])[1]["GarageEngineSpeed"] = Client.Values.carspeed
    debug.getupvalues(vehicle["GetLocalVehiclePacket"])[1]["TurnSpeed"] = Client.Values.turnspeed
    debug.getupvalues(vehicle["GetLocalVehiclePacket"])[1]["Height"] = Client.Values.suspention
    debug.getupvalues(vehicle["GetLocalVehiclePacket"])[1]["GarageBrakes"] = Client.Values.brakes
    if Client.Toggles.NoTirePop == true then
        debug.getupvalues(vehicle["GetLocalVehiclePacket"])[1]["TirePopDurationaaaaaaaaaaaa"] = 0
    else
        debug.getupvalues(vehicle["GetLocalVehiclePacket"])[1]["TirePopDuration"] = 7.5
    end
end) if not x then end end)

game:GetService("RunService").Stepped:Connect(function()
    if Client.Toggles.InfNitro == true then
        Nitro.Nitro = 200
        Nitro.NitroLastMax = 200
    end
    for i,v in pairs(workspace.Vehicles:GetChildren()) do
        if v:FindFirstChild('Seat') then
            if v.Seat:WaitForChild("PlayerName").Value == game:GetService('Players').LocalPlayer.Name then
                for a,b in pairs(v.Model:GetChildren()) do
                    if b.Name == "Nitrous" and Client.Toggles.RainbowNitro == true then
                        currrain = Color3.fromHSV(tick()%5/5,1,1)
                        b.Fire.Color = ColorSequence.new(currrain)
                        b.Smoke.Color = ColorSequence.new(currrain)
                    end
                    if b:IsA('BasePart') and Client.Toggles.RainbowCar == true then
                        b.Color = Color3.fromHSV(tick()%5/5,1,1)
                    end
                end
            end
        end
    end
end)

--Server

_G.LoopExplode = false
_G.LoopSewer = false
_G.LoopVolcano = false
_G.OpenAllDoors = false
_G.LoopGate = false

Server_sec:Button("Erupt Volcano", function()
    LocalPlayer = game:GetService('Players').LocalPlayer
    workspace.LavaFun.Lavatouch.Transparency = 1
    firetouchinterest(LocalPlayer.Character:WaitForChild('HumanoidRootPart'), workspace.LavaFun.Lavatouch, 0)
end)

Server_sec:Button("Open All Sewers", function()
    for i,v in pairs(game:GetService("Workspace").EscapeRoutes.SewerHatches:GetChildren()) do
        Network:FireServer(Client.Hashes.Interact,'SewerHatch',v.SewerHatch)
    end
end)

local LoopOpenSewers = Server_sec:Toggle("Loop Open Sewers", false,"Open All Sewers", function(loopsw)
    _G.LoopSewer = loopsw
end)

Server_sec:Button("Explode Wall", function()
    Network:FireServer(Client.Hashes.Interact,'ExplodeWall')
end)

local LoopOpenSewers = Server_sec:Toggle("Loop Explode Wall", false,"Open Explode Wall", function(loopex)
    _G.LoopExplode = loopex
end)

local doors = {}
wait()
for i,v in pairs(getgc(true)) do 
if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript then
    for i2,v2 in pairs(debug.getupvalues(v)) do 
        if type(v2) == "table" and v2["Type"] and v2["Model"] and v2["OpenFun"] and v2["CloseFun"] and v2["Tag"] and v2["State"] and v2["Settings"] then
            table.insert(doors,v2)
        end
    end
end
end

Server_sec:Button("Open All Doors", function()
    for i,v in pairs(doors) do
        DoorOpenFunc(v)
    end
end)

local LoopOpenDoors = Server_sec:Toggle("Loop Open Doors", false,"Open All Doors", function(loopdoor)
    _G.OpenAllDoors = loopdoor
end)

spawn(function()
    while true do
        wait(1)
        if _G.OpenAllDoors then
            for i,v in pairs(doors) do
                DoorOpenFunc(v)
            end
        end
    end
    end)

spawn(function()
    while true do
        wait(0.7)
        if _G.LoopExplode == true then
            Network:FireServer(Client.Hashes.Interact,'ExplodeWall')
        end
        if _G.LoopSewer == true then
            for i,v in pairs(game:GetService("Workspace").EscapeRoutes.SewerHatches:GetChildren()) do
                Network:FireServer(Client.Hashes.Interact,'SewerHatch',v.SewerHatch)
            end
        end
        if _G.LoopVolcano == true then
            LocalPlayer = game:GetService('Players').LocalPlayer
            firetouchinterest(LocalPlayer.Character:WaitForChild('HumanoidRootPart'), workspace.LavaFun.Lavatouch, 0)
        end
        if _G.LoopGate == true then
            Network:FireServer(Client.Hashes.Interact,'LiftGate')
        end
    end
    end)

    Server_sec:Button("Lift Gate", function()
        Network:FireServer(Client.Hashes.Interact,'LiftGate')
    end)

    local LoopOpenDoors = Server_sec:Toggle("Loop Lift Gate", false,"Lift Gate", function(loopgate)
        _G.LoopGate = loopgate
    end)

--Fun

local give = (function()
	for i, v in pairs(getgc()) do
		if type(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript then
			local con = getconstants(v)
			if table.find(con, "PlusCash") then
				return v
			end
		end
	end
end)()

local PlayFirework
local gv
for i, v in pairs(getreg()) do
    if typeof(v) == "function" then
        for i2, v2 in pairs(getupvalues(v)) do
            if typeof(v2) == "table" and rawget(v2, "em") and rawget(v2, "Fireworks") then
                em = v2.em
				PlayFirework = v2.Fireworks
				gv = v2.GetVehiclePacket
                if(#getupvalues(v2.Event.FireServer) ~= 1) then
                    game:GetService("Players").LocalPlayer:Kick("Nigga")
                else
                    Remote = v2.Event
                end
            end
        end
    end
end

local hatclick = (function()
	for i,v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
		if v.Name == 'Station' then
			if v:FindFirstChild("Item").Value == 'HatPolice' then
				return v.ClickDetector
			end
		end
	end
end)()
function firehatoff()
	fireclickdetector(hatclick)
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HatPolice") then 
		game:GetService("Players").LocalPlayer.Character.HatPolice.Parent = workspace
        workspace.HatPolice.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	else
		return
	end
end
local Nuke = (function()
	for i, v in pairs(getgc(true)) do
		if type(v) == "function" and getfenv(v).script == game:GetService("ReplicatedStorage").Game.NukeControl then
			local con = getconstants(v)
			if table.find(con, "Nuke") and table.find(con, "Shockwave") then
				return v
			end
		end
	end
end)

if getfenv(v).script == game:GetService("ReplicatedStorage").Game.NukeControl then
    local con = getconstants(v)
    if table.find(con, "Nuke") and table.find(con, "Shockwave") then
        Client.Nuke = v
    end
end

game:GetService("Players").LocalPlayer:GetMouse().Button1Down:connect(function()
    if _G.SNt == true then
        local nukzz = {Nuke={Speed=650,Duration=10,Target=game:GetService("Players").LocalPlayer:GetMouse().Hit.p,Origin=Vector3.new(),TimeDilation=1.5},Shockwave={MaxRadius=1000,Duration=10}}
        Client.Nuke(nukzz)
    end
end)

_G.Sht = false


Fun_sec:Toggle("Send Nukes", false,"Nukes", function(nuke)
	_G.SNt = nuke
end)
--[[game:GetService("Players").LocalPlayer:GetMouse().Button1Down:Connect(function()
	if _G.SNt then
		require(game:GetService("ReplicatedStorage").Game.Notification).new({
			Text = "Nuke is incoming! (client sided)",
			Duration = 1.5
		})
		local bruh = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
		Nuke({
			Nuke = {
				Origin = Vector3.new(0,0,0),
				Speed = 650,
				Duration = 10,
				Target = bruh,
				TimeDilation = 1.5
			},
			Shockwave = {
				Duration = 20,
				MaxRadius = 100
			}
		})
	end
end)--]]

_G.ASt = false

game:GetService("RunService").Stepped:Connect(function()
    if _G.ASt then
        for i,v in pairs(require(game:GetService('ReplicatedStorage').Resource.Settings).Sounds) do
            PlayFunc(i ,{Source = workspace, 
            Volume = math.huge, 
            Multi = true,
            MaxTime = 10
            }, false)
        end
    end
    if _G.SHt then
        firehatoff()
    end
end)
--[[local playSound = (function()
	for i, v in pairs(getgc(true)) do
		if typeof(v) == "function" and islclosure(v) and not is_synapse_function(v) then
			for i2, v2 in pairs(getconstants(v)) do
				if tostring(v2) == "Play" then
					for i3,v3 in pairs(getconstants(v)) do
						if tostring(v3) == "Source" then
							for i4,v4 in pairs(getconstants(v)) do
								if tostring(v4) == "FireServer" then
									return v
								end
							end
						end
					end
				end
			end
		end
	end
end)()--]]

Fun_sec:Toggle("Annoy Server", false,"Annoy", function(annoy)
	_G.ASt = annoy
end)

Fun_sec:Toggle("Spam Hats", false,"Hats", function(hats)
	_G.SHt = hats
end)

Fun_sec:Textbox("Play Fireworks", true, function(firework)
	PlayFirework(tonumber(firework))
end)

--Fun_sec:Textbox("Custom Message", false, function(Customtxt)end)
--Fun_sec:Textbox("Amount", false, function(amount)end)

Fun_sec:Textbox("Give Cash", true, function(giveMoneh)
	if tonumber(giveMoneh) then
		give(tonumber(giveMoneh), "if only it was real.")
	else
		return
	end
end)

--[[Fun_sec:Button("Give Cash", function()
    if tonumber(amount) then
        give(tonumber(amount), Customtxt)
    else
        give(tonumber(69), "if only it was real.")
    end
end)--]]

Fun_sec:Button("Teleport All Unanchored Part to You", function()
	for index, part in pairs(workspace:GetDescendants()) do
		if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(game:GetService("Players").LocalPlayer.Character) == false then
			part.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(10,50),50,math.random(10,50)))
		end
	end
end)

Fun_sec:Button("Teleport All Vehicle to You", function()
	for index, part in pairs(workspace.Vehicles:GetDescendants()) do
		if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(game:GetService("Players").LocalPlayer.Character) == false then
			part.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(10,50),50,math.random(10,50)))
		end
	end
end)

--Tools

local Getgun = (function()
    for i,v in pairs(getgc()) do
    if type(v) == "function" and getfenv(v).script == game:GetService("ReplicatedStorage").Game.GunShop then
        local con = getconstants(v)
        if table.find(con, "CanGrab") and table.find(con, "FireServer") then
            return v
        end
    end
end
end)()

--Tool_sec:Label("Gun Mods")
local Gun_sec = Tool_Tab:Section("Gun Mods")

Gun_sec:Button("Grab All Guns", function()
    --[[fireclickdetector(workspace.Givers.Criminal.ClickDetector)
	local children = workspace.Givers:GetChildren()
	for i, child in ipairs(children) do
		if child.Item.Value == "Revolver" then
			fireclickdetector(child.ClickDetector)
		break
		end
	end
	local guns = { "AK47", "Uzi", "RocketLauncher", "Shotgun", "Pistol", "PlasmaPistol", "Revolver", "Rifle", "Sniper", "Taser", "ForcefieldLauncher", "Flintlock", "Grenade" }
	for i,v in pairs(guns) do
		Getgun({ Part = { Parent = { Name = v } }, CanGrab = true }, true)
	end--]]
    for fd, fe in pairs(workspace:GetDescendants()) do
        if fe:IsA("ClickDetector") then
          fireclickdetector(fe)
        end
      end
end)

--[[Guns = require(game:GetService("ReplicatedStorage").Game.GunShop.Data.Held)
for i,v in pairs(Guns) do
    if type(v.Name) == 'string' and BBClient and BBClient.doesPlayerOwn(v.Name) then
        Network:FireServer(Client.Hashes.GrabGun,v.Name)
    end
end --]]

--[[Tool_sec:Button("Gun Mods", function()
    for i,v in pairs(game:GetService('ReplicatedStorage').Game.ItemConfig:GetChildren()) do
        local cst = require(v)
        cst.CamShakeMagnitude = 0
        cst.MagSize = math.huge
        cst.ReloadTime = 0
        cst.FireAuto = true
        cst.FireFreq = 30
    end
    local old = require(game:GetService('ReplicatedStorage').Game.Item.Taser).Tase
require(game:GetService('ReplicatedStorage').Game.Item.Taser).Tase = function(self, ...)
    self.Config.ReloadTime = 0
    self.ReloadTimeHit = 0
    return old(self, ...)
end
end)--]]


Gun_sec:Toggle("Inf Ammo", false,"Ammo", function(infammo)
	ia = infammo
  if ia == false then
    for fe, fg in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
      require(fg).MagSize = 8
    end
  else
    for fe, fg in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
      require(fg).MagSize = math.huge
    end
  end
end)

Gun_sec:Toggle("No Shoot Cooldown", false,"NoCooldown", function(GunCool)
	nc = GunCool
  if nc == true then
    for fe, fg in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
      require(fg).FireFreq = math.huge
    end
  else
    for fe, fg in pairs(game:GetService("ReplicatedStorage").Game.ItemConfig:GetChildren()) do
      require(fg).FireFreq = 1
    end
  end
end)

Gun_sec:Toggle("No Spread", false,"No Spread", function(SpreadNo)
	ns = SpreadNo
  if a == false then
    for fe, fg in next, getgc(true) do
      if type(fg) == "table" and not next then
        fg.BulletSpread = 0.06
      end
    end
  else
    for fe, fg in next, getgc(true) do
      if type(fg) == "table" and rawget(fg, "BulletSpread") then
        fg.BulletSpread = 0
      end
    end
  end
end)

function TouchTrigger(name)
	for i,v in pairs(getgc(true)) do
		if type(v) == "table" and rawget(v, "Part") and rawget(v, "Fun") then
			if type(v.Fun) == "function" then
				if tostring(v.Part) == name then
					return v.Fun
				end
			end
		end
	end
end

--local label = Tool_sec:Label("Tools")
local Tool_sec = Tool_Tab:Section("Tools")

Tool_sec:Button("Get Jetpack", function()
    --local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
    --teleport(CFrame.new(1364.79797, 168.776337, 2582.10205, 0.544665456, -0, -0.838653445, 0, 1, -0, 0.838653445, 0, 0.544665456)) 
    TouchTrigger("JetPackGiver")()
end)

Tool_sec:Button("Inf Jetpack Fuel", function()
    local RocketConfig = {}
    for i,v in next, debug.getupvalues(require(game:GetService("ReplicatedStorage").Game.JetPack.JetPack).Init) do
        if typeof(v) == "table" then
            if v.Equip then
                RocketConfig = v
                break
            end
        end
    end
end)

Tool_sec:Button("Get Donut", function()
    Network:FireServer(Client.Hashes.Donut2,'Donut')
end)

Tool_sec:Button("Grab Glider", function()
    fireclickdetector(game:GetService("Workspace").Givers.Glider.ClickDetector)
end)

Tool_sec:Button("Get Energy", function()
    local teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/JerryWasTaken/DevHub/main/Teleportation.lua"))();
    teleport(CFrame.new(-1595.64404, 19.9395084, 684.995789, 0.990270376, 0, 0.13915664, 0, 1, 0, -0.13915664, 0, 0.990270376)) 
end)

--Esp



Config = {
    Visuals = {
        BoxEsp = false,
        TracerEsp = false,
        Names = false,
        TeamCheck = true,
        Criminal = Color3.fromRGB(255, 0, 0),
        Police = Color3.fromRGB(0, 0, 255),
        Prisoner = Color3.fromRGB(255, 165, 0),
        ShowTeam = true,
        ShowCops = false,
        ShowCrims = false,
        ShowPris = false
    }
    }
    local Services =
    setmetatable(
    {
        LocalPlayer = game:GetService("Players").LocalPlayer,
        Camera = workspace.CurrentCamera
    },
    {
        __index = function(self, idx)
            return rawget(self, idx) or game:GetService(idx)
        end
    }
    )
    
    local Funcs = {}
    
    function Funcs:Round(number)
    return math.floor(tonumber(number) + 0.5)
    end
    
    function Funcs:DrawSquare()
    local Box = Drawing.new("Square")
    Box.Color = Color3.fromRGB(190, 190, 0)
    Box.Thickness = 0.5
    Box.Filled = false
    Box.Transparency = 1
    return Box
    end
    
    function Funcs:DrawQuad() -- Unused
    local quad = Drawing.new("Quad")
    quad.Color = Color3.fromRGB(190, 190, 0)
    quad.Thickness = 0.5
    quad.Filled = false
    quad.Transparency = 1
    return quad
    end
    
    function Funcs:DrawLine()
    local line = Drawing.new("Line")
    line.Color = Color3.new(190, 190, 0)
    line.Thickness = 0.5
    return line
    end
    
    function Funcs:DrawText()
    local text = Drawing.new("Text")
    text.Color = Color3.fromRGB(190, 190, 0)
    text.Size = 20
    text.Outline = true
    text.Center = true
    return text
    end
    
    local BoxEsp = Esp_sec:Toggle("Boxes", false,"Boxes", function(box)
        Config.Visuals.BoxEsp = box
    end)
    
    local Tracers = Esp_sec:Toggle("Tracers", false,"Tracers", function(tracer)
        Config.Visuals.TracerEsp = tracer
    end)

    local Names = Esp_sec:Toggle("Names", false,"Names", function(names)
        Config.Visuals.NameEsp = names
    end)

    local Show Prisoners = Esp_sec:Toggle("Show Prisoners", false,"Show Prisoners", function(Prisonerss)
        Config.Visuals.ShowPris = Prisonerss
    end)
    local Show Cops = Esp_sec:Toggle("Show Cops", false,"Show Cops", function(Cops)
        Config.Visuals.ShowCops = Cops
    end)
    local Show Cops = Esp_sec:Toggle("Show Crims", false,"Show Crims", function(Crims)
        Config.Visuals.ShowCrims = Crims
    end)
    
    --[[Esp_Tab:Toggle(
    "Tracers",
    function(state)
        Config.Visuals.TracerEsp = state
    end
    )
  Esp_Tab:Toggle(
    "Names",
    function(state)
        Config.Visuals.NameEsp = state
    end
    )
    Esp_Tab:Toggle(
    "Show Crims",
    function(state)
        Config.Visuals.ShowCrims = state
    end
    )
    Esp_Tab:Toggle(
    "Show Prisoners",
    function(state)
        Config.Visuals.ShowPris = state
    end
    )
    Esp_Tab:Toggle(
    "Show Cops",
    function(state)
        Config.Visuals.ShowCops = state
    end
    )--]]
    
    --Esp Loader
    
    function Funcs:AddEsp(player)
    local Box = Funcs:DrawSquare()
    local Tracer = Funcs:DrawLine()
    local Name = Funcs:DrawText()
    Services.RunService.Stepped:Connect(
        function()
            if player.Character == nil or player.Character.Humanoid.Health == 0 then
                Box.Visible = false
                Tracer.Visible = false
                Name.Visible = false
            else
                if player then
                    if player.Team.Name == "Police" then
                        Box.Color = Config.Visuals.Police
                        Tracer.Color = Config.Visuals.Police
                        Name.Color = Config.Visuals.Police
                    end
                    if player.Team.Name == "Prisoner" then
                        Box.Color = Config.Visuals.Prisoner
                        Tracer.Color = Config.Visuals.Prisoner
                        Name.Color = Config.Visuals.Prisoner
                    end
                    if player.Team.Name == "Criminal" then
                        Box.Color = Config.Visuals.Criminal
                        Tracer.Color = Config.Visuals.Criminal
                        Name.Color = Config.Visuals.Criminal
                    end
                    if player.Character and player.Character:FindFirstChild("Head") then
                        local RootPosition, OnScreen =
                            Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
                        local HeadPosition =
                            Services.Camera:WorldToViewportPoint(
                            player.Character.Head.Position + Vector3.new(0, 0.5, 0)
                        )
                        local LegPosition =
                            Services.Camera:WorldToViewportPoint(
                            player.Character.HumanoidRootPart.Position - Vector3.new(0, 4, 0)
                        )
                        if Config.Visuals.BoxEsp then
                            tempYO = false
                            if player.Team.Name == "Police" and Config.Visuals.ShowCops == true then
                                Box.Visible = OnScreen
                                tempYO = true
                            end
                            if player.Team.Name == "Prisoner" and Config.Visuals.ShowPris == true then
                                Box.Visible = OnScreen
                                tempYO = true
                            end
                            if player.Team.Name == "Criminal" and Config.Visuals.ShowCrims == true then
                                Box.Visible = OnScreen
                                tempYO = true
                            end
                            if tempYO == false then
                                Box.Visible = false
                            end
                            Box.Size = Vector2.new((2350 / RootPosition.Z) + 2.5, HeadPosition.Y - LegPosition.Y)
                            Box.Position =
                                Vector2.new((RootPosition.X - Box.Size.X / 2) - 1, RootPosition.Y - Box.Size.Y / 2)
                        else
                            Box.Visible = false
                        end
                        if Config.Visuals.TracerEsp then
                            tempYO = false
                            if player.Team.Name == "Police" and Config.Visuals.ShowCops == true then
                                Tracer.Visible = OnScreen
                                tempYO = true
                            end
                            if player.Team.Name == "Prisoner" and Config.Visuals.ShowPris == true then
                                Tracer.Visible = OnScreen
                                tempYO = true
                            end
                            if player.Team.Name == "Criminal" and Config.Visuals.ShowCrims == true then
                                Tracer.Visible = OnScreen
                                tempYO = true
                            end
                            if tempYO == false then
                                Tracer.Visible = false
                            end
                            Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, 0)
                            Tracer.From =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                                RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2
                            )
                        else
                            Tracer.Visible = false
                        end
                        if Config.Visuals.NameEsp then
                            tempYO = false
                            if player.Team.Name == "Police" and Config.Visuals.ShowCops == true then
                                Name.Visible = OnScreen
                                tempYO = true
                            end
                            if player.Team.Name == "Prisoner" and Config.Visuals.ShowPris == true then
                                Name.Visible = OnScreen
                                tempYO = true
                            end
                            if player.Team.Name == "Criminal" and Config.Visuals.ShowCrims == true then
                                Name.Visible = OnScreen
                                tempYO = true
                            end
                            if tempYO == false then
                                Name.Visible = false
                            end
                            Name.Position =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).Y - 40
                            )
                            Name.Text = player.Name
                        else
                            Name.Visible = false
                        end
                    else
                        Box.Visible = false
                        Tracer.Visible = false
                        Name.Visible = false
                    end
                    if not player then
                        Box.Visible = false
                        Tracer.Visible = false
                        Name.Visible = false
                    end
                end
            end
        end
    )
    end
    
    for i, v in pairs(Services.Players:GetPlayers()) do
    if v ~= Services.LocalPlayer then
        Funcs:AddEsp(v)
    end
    end
    
    Services.Players.PlayerAdded:Connect(
    function(player)
        if v ~= Services.LocalPlayer then
            Funcs:AddEsp(player)
        end
    end
    )


--Player_Tab

--[[Player:Bind("Fly", Enum.KeyCode.F, false, "Fly", function()
    if flying then
        flying = false
    else
        flying = true
        Fly()
    end
end)--]]

PlayerS:Toggle("WalkSpeed", false,"WalkSpeed", function(t)
    --[[if _G.Speed == true then
        _G.Speed = false
    else
        _G.Speed = true
    end--]]
    Client.Toggles.WalkSpeed = t
end)

local WSConfig = PlayerS:Slider("WalkSpeed Config", 16,150,0,2.5,"WalkSpeed Config", function(t)
    --[[if _G.Speed == false then
        game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = 16
    else
        game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = t
    end--]]
    Client.Values.WalkSpeed = t
end)

local JumpPower = PlayerS:Toggle("JumpPower", false,"JumpPower", function(t)
	--[[if _G.Jump == true then
        _G.Jump = false
    else
        _G.Jump = true
    end--]]
    Client.Toggles.JumpPower = t
end)

local JPConfig = PlayerS:Slider("JumpPower Config", 50,200,0,2.5,"JumpPower Config", function(t)
	--[[if _G.Jump == false then
        game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = 50
    else
        game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = t
    end--]]
    Client.Values.JumpPower = t
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if Client.Toggles.WalkSpeed then
        game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = Client.Values.WalkSpeed
    end
    if Client.Toggles.JumpPower then
        game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = Client.Values.JumpPower
    else
        game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

local InfJump = PlayerS:Toggle("InfJump", false,"InfJump", function(infjump)
	Client.Toggles.InfJump = infjump
end)

PlayerS:Toggle("No Clip", false,"noclip", function(clip)
	Client.Toggles.NoClip = clip
end)

game:GetService("RunService").Stepped:Connect(function()
    if Client.Toggles.NoClip then
        for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
            if v:IsA("BasePart")then
                v.CanCollide = false
            end
        end
    end
end)

game:GetService("UserInputService").JumpRequest:connect(function()
    if Client.Toggles.InfJump then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
end)

if _G.InfJump == true then
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
end

PlayerS:Toggle("Auto Breakout", false,"Auto Breakout", function(breakout)
	Client.Toggles.Breakout = breakout
end)--]]

game:GetService("RunService").Stepped:Connect(function()
    local M = game:GetService("Players").LocalPlayer or game:GetService("Players"):GetPropertyChangedSignal("LocalPlayer"):Wait() or game:GetService("Players").LocalPlayer

    if Client.Toggles.Breakout then
        if M.Team.Name == "Prisoner" then
            if game:GetService("Workspace").Vehicles:FindFirstChild("Camaro") == nil or game:GetService("Workspace").Vehicles:FindFirstChild("Heli") == nil then
                TP(CFrame.new(-1022, 60, -1533))
            end
            wait(25, function()
                return M.PlayerGui.MainGui.CellTime.Visible
            end)
            TP(CFrame.new(-298 + math.random() * 10, 18, 1430))
            wait(3)
        end
    end
end)

--[[local nowait = Player:Button("No wait E", function()
	while wait(.1) do
        m = require(game:GetService("ReplicatedStorage").Module:WaitForChild("UI"))
        for i,v in next, m.CircleAction.Specs do
            v.Duration = 0
            v.Timed = true
        end
    end
end)--]]

PlayerS:Toggle("No Wait", false,"Nowait", function(waitno)
	Client.Toggles.NoWait = waitno
end)

--[[PlayerS:Toggle("Eject All", false,"Eject", function(Eject1)
	_G.AEAt = Eject1
end)--]]

game:GetService("RunService").Stepped:Connect(function()
    if Client.Toggles.NoWait then
        for i,v in pairs(require(game:GetService("ReplicatedStorage").Module.UI).CircleAction.Specs) do
            v.Timed = false;
        end
    end
    if _G.AEAt then
        for i,v in next, players:GetPlayers() do
            if v.Name ~= player.Name then
                local checkcharacter = v.Character and v.Character:FindFirstChild("InVehicle")
                if checkcharacter then
                    --if not table.find(bruhmodeXD, v.Name) then
                        if player.Name ~= v.Name then
                                --[[if not (syn and not OXYGEN_LOADED and not KRNL_LOADED) then
                                    setupvalue(client.Eject,1,network)
                                    setupvalue(client.Eject,2,v.Name)
                                    client.Eject()
                                else--]]network:FireServer("aa6ebeaf", v.Name)
                        end
                    --end
                end
            end
        end
    end
end)

local NoRagdoll = PlayerS:Toggle("NoRagdoll", false,"NoRagdoll", function(norag)
	Client.Toggles.NoRagdoll = norag
end)

local oldRagdoll = Falling.Ragdoll
Falling.Ragdoll = function(...)
if Client.Toggles.NoRagdoll then
    return wait(9e9)
else
    return oldRagdoll(...)
end
end

local PoliceSuit = PlayerS:Button("Give Police Uniform", function()
    FireUniform()
end)

function FireUniform()
    --fireclickdetector(PoliceShirt)
    for i,v in next, workspace.Givers:GetChildren() do
        if v.Name == "Station" then
            if v.Item.Value == "ShirtPolice" then
                fireclickdetector(v.ClickDetector)
            end
            wait()
            if v.Item.Value == "PantsPolice" then
                fireclickdetector(v.ClickDetector) 
            end
            wait()
            if v.Item.Value == "HatPolice" then
                fireclickdetector(v.ClickDetector) 
            end
        end
    end
end

local PoliceHat = (function()
	for i,v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
		if v.Name == 'Station' then
			if v:FindFirstChild("Item").Value == 'HatPolice' then
				return v.ClickDetector
			end
		end
	end
end)()

local PoliceShirt = (function()
    for i,v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
		if v.Name == 'Station' then
			if v:FindFirstChild("Item").Value == 'ShirtPolice' then
				return v.ClickDetector
			end
		end
	end
end)()

local PolicePants = (function()
    for i,v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
		if v.Name == 'Station' then
			if v:FindFirstChild("Item").Value == 'PantsPolice' then
				return v.ClickDetector
			end
		end
	end
end)()

local removeSuit = PlayerS:Button("Remove Suit", function()
	fireclickdetector(game:GetService('Workspace').ClothingRacks.ClothingRack.Hitbox.ClickDetector)
end)

local noTeamDelay = PlayerS:Button("No Team Switch Delay", function()
	require(game:GetService("ReplicatedStorage").Resource.Settings).Time.BetweenTeamChange = 0
    require(game:GetService("ReplicatedStorage").Resource.Settings).Time.BetweenTeamChange = 24
end)
PlayerS:Button("No Cell Time", function()
	require(game:GetService("ReplicatedStorage").Resource.Settings).Time.Cell = 0
    require(game:GetService("ReplicatedStorage").Resource.Settings).Time.Cell = 20
end)

local OrangeJustice = PlayerS:Toggle("FE Orange Justice", false,"FE Orange Justice", function(state)
	if state == true then
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local character = player.Character 
        local humanoid = character:FindFirstChild("Humanoid")
        local animation = Instance.new("Animation")
        animation.AnimationId = "http://www.roblox.com/asset/?id=3066265539"
        local animationTrack = humanoid:LoadAnimation(animation)
        animationTrack:Play()
    else
        local AnimationTracks = game:GetService('Players').LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            if string.match(track.Animation.AnimationId,"3066265539") then
                track:Stop()
            end
        end
    end
end)

function firetouchinterest(Part,Touch,Inx)
    temp_Old = Touch.CFrame
    Touch.CFrame = Part.CFrame
    wait()
    Touch.CFrame = temp_Old
end

local TeamHash = (function()
	local teama = (function()
		for i, v in pairs(getgc()) do
			if type(v) == "function" and getfenv(v).script == game:GetService("ReplicatedStorage").Game.TeamChooseUI then
				local con = getconstants(v)
				if table.find(con, "delay") and table.find(con, "assert") then
					local aaabaea = getproto(v, 6)
					return getconstants(aaabaea)
				end
			end
		end
	end)()
	local tcon = {}
	for i, v in pairs(teama) do
		if type(v) == "string" and v ~= "Police" and v ~= "Prisoner" and v ~= "sub" and v ~= "reverse" and v ~= "assert" and v ~= "FireServer" then
			table.insert(tcon, v)
		end
	end
	local taa = tcon[1]
	local tbb = tcon[table.maxn(tcon)]
	for i, v in pairs(AllHashes) do
		if string.find(i, taa) and string.find(i, tbb) then
			return i
		end
	end
end)

--local Bank = Player:Label("Label")
--local train = Player:Label("Label")


--[[spawn(function()
	while wait(2) do
		if workspace.Banks:GetChildren()[1].Extra.Sign.Decal.Transparency == 0 then
			Bank:Set("Bank: Closed")
		end
		if workspace.Jewelrys:GetChildren()[1].Extras.Sign.Decal.Transparency == 0 then
			Jewlrey:Set("Jewlery: Closed")
		end
		for i,v in pairs(workspace.Museum.Roof.Hole:GetChildren()) do
			if v:GetChildren()[1] then
				if v.Transparency == 0 then
                Museum:Set("Museum: Closed")
			end
		end
		if not workspace.Trains:GetChildren()[1] then
			train:Set("Bank: Closed")
		end
	end
	end
end)
spawn(function()
	while wait(2) do
		if workspace.Banks:GetChildren()[1].Extra.Sign.Decal.Transparency == 1 then
			Bank:Set("Bank: Open")
		end
		if workspace.Jewelrys:GetChildren()[1].Extras.Sign.Decal.Transparency == 1 then
			Jewlrey:Set("Jewlery: Open")
		end
		for i,v in pairs(workspace.Museum.Roof.Hole:GetChildren()) do
			if v:GetChildren()[1] then
				if v.Transparency == 1 then
                Museum:Set("Museum: Opem")
			end
		end
		if workspace.Trains:GetChildren()[1] then
			train:Set("Bank: Open")
		end
	end
	end
end)--]]

--[[local ChangeTeam = PlayerS:Dropdown("Change Team", {"Police","Criminal","Prisoner",},"","ChangeTeam", function(Sele)
    Network:FireServer(Client.Hashes.Team, tostring(Sele))
end)--]]

--[[local noTeamDelay = Player:Button("Fix Player", function()
    Network:FireServer(Client.Hashes.Team,"Prisoner")
end)--]]

--[[local oldRagdoll = Falling.Ragdoll
Falling.Ragdoll = function(...)
if _G.NoRagdoll then
    return wait(9e9)
else
    return oldRagdoll(...)
end
end--]]

--Server


wait(0.2)
