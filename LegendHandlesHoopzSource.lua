--magnet got me this source but legend pissed me off, magnet here: magnet#0001

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/WetCheezit/Bracket-V2/main/src.lua"))()

-- Window
local Window, MainGUI = Library:CreateWindow("Legend HandlesYT | Hoopz | https://discord.gg/ADzr7kssSE")

-- Tabs
local Tab1 = Window:CreateTab("Main")
local Tab2 = Window:CreateTab("Settings")

local Groupbox1 = Tab1:CreateGroupbox("Main", "Left")
local Groupbox2 = Tab1:CreateGroupbox("Player", "Right")
local Groupbox3 = Tab1:CreateGroupbox("Teleports", "Right")
local Groupbox5 = Tab1:CreateGroupbox("Credits", "Left")

local Groupbox4 = Tab2:CreateGroupbox("Settings", "Left")

local ExampleButton = Groupbox1:CreateButton("Aimbot v1", function()
    local Camera = workspace.CurrentCamera
Holding = false
function findNets()
    for i, v in pairs(workspace:GetDescendants()) do
        if v.Name == "Net" then
            v.Parent = workspace
        end
    end
end
local function findClosestPart(position)
    local closestPart, closestPartMagnitude
    local tmpMagnitude
    for i, v in pairs(workspace:GetChildren()) do
        if v.Name == "Net" then
            if closestPart then
                tmpMagnitude = (position - v.Position).magnitude
                if tmpMagnitude < closestPartMagnitude then
                    closestPart = v
                    closestPartMagnitude = tmpMagnitude
                end
            else
                closestPart = v
                closestPartMagnitude = (position - v.Position).magnitude
            end
        end
    end
    return closestPart
end
findNets()
local UIS = game:GetService('UserInputService')
UIS.InputBegan:connect(function(Input, GPE)
    if not GPE and Input.KeyCode == Enum.KeyCode.X then
        local lookthat = findClosestPart(game.Players.LocalPlayer.Character.Torso.Position)
        Holding = true
        repeat
            wait()
        Camera.CFrame = CFrame.new(Camera.CFrame.p, lookthat.Position + Vector3.new(0, 90, 0)) 
        until Holding == false
    end
end)

UIS.InputEnded:connect(function(Input, GPE)
    if not GPE and Input.KeyCode == Enum.KeyCode.X then
        Holding = false
    end
end)

local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui

CoreGui:SetCore("SendNotification", {
    -- Customizable
    Title = "Have Normal 75 At 85",
    Text = "HOLD X TO LOCK",
    Duration = 2, -- Set the duration to how much you want this to stay
    -- More code in part 2
})("Pressed")
end)

local ExampleButton = Groupbox1:CreateButton("Aimbot v2",function()
getgenv().settings = {
Enabled = true,

Distance = 200,

AimbotHowFarUp = 20,

Keybind = Enum.UserInputType.MouseButton3
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kitzoon/Roblox-Scripts/main/Hoopz_Aimbot.lua"))()
local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui

CoreGui:SetCore("SendNotification", {
    -- Customizable
    Title = "MouseButton3/Middle Mouse",
    Text = "Aimbot v2",
    Duration = 2, -- Set the duration to how much you want this to stay
    -- More code in part 2
})
end)


local ExampleButton = Groupbox1:CreateButton("Aimbot v3", function()
    local Camera = workspace.CurrentCamera
Holding = false
function findNets()
    for i, v in pairs(workspace:GetDescendants()) do
        if v.Name == "Net" then
            v.Parent = workspace
        end
    end
end
local function findClosestPart(position)
    local closestPart, closestPartMagnitude
    local tmpMagnitude
    for i, v in pairs(workspace:GetChildren()) do
        if v.Name == "Net" then
            if closestPart then
                tmpMagnitude = (position - v.Position).magnitude
                if tmpMagnitude < closestPartMagnitude then
                    closestPart = v
                    closestPartMagnitude = tmpMagnitude
                end
            else
                closestPart = v
                closestPartMagnitude = (position - v.Position).magnitude
            end
        end
    end
    return closestPart
end
findNets()
local UIS = game:GetService('UserInputService')
UIS.InputBegan:connect(function(Input, GPE)
    if not GPE and Input.KeyCode == Enum.KeyCode.Y then
        local lookthat = findClosestPart(game.Players.LocalPlayer.Character.Torso.Position)
        Holding = true
        repeat
            wait()
        Camera.CFrame = CFrame.new(Camera.CFrame.p, lookthat.Position + Vector3.new(0, 50, 0)) 
        until Holding == false
    end
end)

UIS.InputEnded:connect(function(Input, GPE)
    if not GPE and Input.KeyCode == Enum.KeyCode.Y then
        Holding = false
    end
end)

local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui

CoreGui:SetCore("SendNotification", {
    -- Customizable
    Title = "Have Normal 85 At 85",
    Text = "HOLD Y TO LOCK",
    Duration = 2, -- Set the duration to how much you want this to stay
    -- More code in part 2
})("Pressed")
end)
local ExampleButton = Groupbox1:CreateButton("Auto Guard (Z)",function()
local tr = false
local Mouse = game.Players.LocalPlayer:GetMouse()

game:GetService("UserInputService").InputBegan:Connect(function(key, gpe)
   if key.KeyCode == Enum.KeyCode.Z and not gpe and tr == false then
           tr = true
           for i, v in pairs(game.Players:GetPlayers()) do
               local char = game.Players.LocalPlayer.Character
               if v.Name ~= char.Name and (v.Character.Torso.CFrame.p - char.Torso.CFrame.p).Magnitude < 25 then
                   while tr == true do
                       if v.Character.Torso.Velocity.magnitude > 0.5 and v.Character:FindFirstChild("Basketball") then
                           char.Humanoid:MoveTo(v.Character.Torso.CFrame.p + v.Character.Torso.Velocity.unit * 7)
                       elseif v.Character.Torso.Velocity.magnitude < 0.5 and v.Character:FindFirstChild("Basketball") then
                           char.Humanoid:MoveTo(v.Character.Torso.CFrame.p)
                       elseif not v.Character:FindFirstChild("Basketball") then
                           tr = false
                       end
                        task.wait()
                   end
               end
           end
       elseif key.KeyCode == Enum.KeyCode.Z and not gpe and tr == true then
           tr = false
       end
   end
)
end)

local ExampleSlider = Groupbox1:CreateSlider("Streak Changer", 1, 300, 0, function(value)
game.Players.LocalPlayer.Character.HumanoidRootPart.NameTag.StreakLabel.Visible = true

game.Players.LocalPlayer.Character.HumanoidRootPart.NameTag.StreakLabel.ColorLabel.AmountLabel.Text = (value)

end)

local ExampleButton = Groupbox4:CreateButton("Remove GUI",function()
game.CoreGui["Legend HandlesYT | Hoopz | https://discord.gg/ADzr7kssSE"]:Destroy()
end)

local ExampleButton = Groupbox5:CreateButton("https://discord.gg/ADzr7kssSE",function()
    local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui
	CoreGui:SetCore("SendNotification", {
		-- Customizable
		Title = "Paste To Google",
		Text = "Copied To Clipboard",
		Duration = 7, -- Set the duration to how much you want this to stay
		-- More code in part 2
	})
    setclipboard("https://discord.gg/ADzr7kssSE")
	toclipboard("https://discord.gg/ADzr7kssSE")
end)

local ExampleButton = Groupbox5:CreateButton("Legend HandlesYT#9518",function()
    local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui
	CoreGui:SetCore("SendNotification", {
		-- Customizable
		Title = "Paste To Discord",
		Text = "Copied To Clipboard",
		Duration = 7, -- Set the duration to how much you want this to stay
		-- More code in part 2
	})
    setclipboard("Legend HandlesYT#9518")
	toclipboard("Legend HandlesYT#9518")
end)

local ExampleButton = Groupbox5:CreateButton("v1.2",function()
end)

local ExampleButton = Groupbox5:CreateButton("MORE COMING OUT!",function()
end)

local ExampleButton = Groupbox1:CreateButton("Anti Bypass",function()
local plr = game.Players.LocalPlayer
local remote = game.ReplicatedStorage:WaitForChild("sbEvent")

local old
old = hookfunction(coroutine.wrap, function(f)
   local upval = getupvalues(f)[1]
   if islclosure(f) and upval and typeof(upval) == "Instance" and upval.ClassName == "RemoteEvent" then
       local consts = getconstants(f)
       warn("possible detection call #1:", unpack(consts))
       return wait(9e9)
   end
   return old(f)
end)

local old
old = hookmetamethod(game, "__namecall", function(self, ...)
   local method = getnamecallmethod()
   if self == remote and method == "FireServer" then
       local args = {...}
       if #args > 1 or not game:IsAncestorOf(getcallingscript()) then
           warn("possible detection call #2:", ...)
           if debug.validlevel(4) then
               return wait(9e9)
           else
               return error() --coroutine.wrap used, the only way to abort it from inside is erroring
           end
       end
   elseif self == plr and method == "Kick" then
       return wait(9e9)
   end
   return old(self, ...)
end)
end)


local ExampleButton = Groupbox1:CreateButton("Hitbox/Reach (J)",function()
if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://raw.githubusercontent.com/KikoTheDon/MT-Api-v2/main/__source/mt-api%20v2.lua", true))() end

local plr = game.Players.LocalPlayer
local hook = nil
local enabled = false

plr.Character["Left Arm"]:AddPropertyEmulator("Size") -- fake size
plr.Character["Right Arm"]:AddPropertyEmulator("Size") -- fake size

game:GetService("UserInputService").InputBegan:Connect(function(key, gpe)
    if not enabled and not gpe and key.KeyCode == Enum.KeyCode.J then
        plr.Character["Left Arm"]:AddPropertyEmulator("Size") -- fake size
        plr.Character["Right Arm"]:AddPropertyEmulator("Size") -- fake size
        
        for i,v in pairs(getconnections(plr.Character["Left Arm"]:GetPropertyChangedSignal("Size"))) do
            v.Function = error
            v:Disable() -- disable property changed
        end
        for i,v in pairs(getconnections(plr.Character["Right Arm"]:GetPropertyChangedSignal("Size"))) do
            v.Function = error
            v:Disable() -- disable property changed
        end

        plr.Character["Left Arm"].Size = Vector3.new(20, 3, 1)
        plr.Character["Right Arm"].Size = Vector3.new(20, 3, 1)
        plr.Character["Left Arm"].Massless = true
        plr.Character["Right Arm"].Massless = true
        enabled = true
    elseif enabled and not gpe and key.KeyCode == Enum.KeyCode.J then
        for i,v in pairs(getconnections(plr.Character["Left Arm"]:GetPropertyChangedSignal("Size"))) do
            v.Function = error
            v:Disable() -- disable property changed
        end
        for i,v in pairs(getconnections(plr.Character["Right Arm"]:GetPropertyChangedSignal("Size"))) do
            v.Function = error
            v:Disable() -- disable property changed
        end

        plr.Character["Left Arm"].Size = Vector3.new(1, 2, 1)
        plr.Character["Right Arm"].Size = Vector3.new(1, 2, 1)
        enabled = false
    end
end)
end)

local ExampleButton = Groupbox1:CreateButton("Air Dribble",function()

   local mouse = game.Players.LocalPlayer:GetMouse()
		local parted = false
	
	
		local part = Instance.new("Part",game.Lighting)
		part.Anchored = true
		part.Size = Vector3.new(700,1,700)
		part.Transparency = 0.9
		part.TopSurface = "Smooth"
	
	
	
	
		mouse.KeyDown:connect(function(key)
			if key == "f" then
				game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame()*CFrame.new(0, 10,0))
			end
		end)
		
		local mouse = game.Players.LocalPlayer:GetMouse()
		local parted = false
	
	
		local part = Instance.new("Part",game.Lighting)
		part.Anchored = true
		part.Size = Vector3.new(700,1,700)
		part.Transparency = 0.9
		part.TopSurface = "Smooth"
	
	
	
	
		mouse.KeyDown:connect(function(key)
			if key == "g" then
				game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame()*CFrame.new(0, 10,0))
			end
		end)
	
	local mouse = game.Players.LocalPlayer:GetMouse()
		local parted = false
	
	
		local part = Instance.new("Part",game.Lighting)
		part.Anchored = true
		part.Size = Vector3.new(700,1,700)
		part.Transparency = 0.9
		part.TopSurface = "Smooth"
	
	
	
	
		mouse.KeyDown:connect(function(key)
			if key == "h" then
				game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame()*CFrame.new(0, 10,0))
			end
		end)
end)

local ExampleButton = Groupbox1:CreateButton("No OOB",function()
game.Workspace.Courts["Court A"].OOB:Destroy()

game.Workspace.Courts["Court B"].OOB:Destroy()

game.Workspace.Courts["Court C"].OOB:Destroy()

game.Workspace.Courts["Court D"].OOB:Destroy()

game.Workspace.Courts["Court E"].OOB:Destroy()

game.Workspace.Courts["Court F"].OOB:Destroy()

game.Workspace.Courts["Court G"].OOB:Destroy()

game.Workspace.Courts["Court H"].OOB:Destroy()

game.Workspace.Courts["Court I"].OOB:Destroy()

game.Workspace.Courts["Court J"].OOB:Destroy()

game.Workspace.Courts["Court K"].OOB:Destroy()
end)



local ExampleButton = Groupbox3:CreateButton("Town Area",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(391.109711, 54.0888519, -381.084381, -0.999807179, -2.02650799e-10, -0.0196368136, -2.10113649e-10, 1, 3.77981091e-10, 0.0196368136, 3.82034154e-10, -0.999807179)
end)

local ExampleButton = Groupbox3:CreateButton("Park Courts",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(390.423157, 36.8928337, -735.981567, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local ExampleButton = Groupbox3:CreateButton("City Area",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3.70396256, 56.3978577, -736.212891, 0.0392514132, -1.44766963e-08, 0.999229372, -8.69840875e-08, 1, 1.79047426e-08, -0.999229372, -8.76198456e-08, 0.0392514132)
end)

local ExampleButton = Groupbox3:CreateButton("Join A Better Mypark Game ;)",function()
game:GetService("TeleportService"):Teleport(7147678922, LocalPlayer)
end)



local ExampleToggle1 = Groupbox2:CreateToggle("Silent Speed", function(state)
   local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
				Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
				Humanoid.WalkSpeed = 16.5
				end)
				Humanoid.WalkSpeed = 16.5
end)

local ExampleButton2 = Groupbox2:CreateButton("Speed Boost (C)", function()
 local mouse = game.Players.LocalPlayer:GetMouse()
    local parted = false


    local part = Instance.new("Part",game.Lighting)
    part.Anchored = true
    part.Size = Vector3.new(700,1,700)
    part.Transparency = 0.9
    part.TopSurface = "Smooth"

    mouse.KeyDown:connect(function(key)
        if key == "c" then
            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame()*CFrame.new(0, 0, -1))
        end
    end)
end)

local ExampleButton = Groupbox1:CreateButton("Notifies When Admin Joins",function()
local names = {

["admin"] = "Ch1ckenKeny",
["admin"] = "fleeb7",
["admin"] = "Ranural",
["admin"] = "GremDemnified",
["admin"] = "YourKOHN",
["admin"] = "Pi_g3on",
["admin"] = "Earthssignnn",
["admin"] = "Yoshaprism",
["admin"] = "Esquireprism",
["admin"] = "AntIsAStar",
["admin"] = "IIlIIIIIIIIlIIlIl",
["admin"] = "Zenovain",
["admin"] = "SectorJack",
["admin"] = "lordeah",
["admin"] = "cyberprism",
["admin"] = "Lukejdjd",
}

local plr = game:GetService("Players")

plr.PlayerAdded:connect(function(player)

local a = Instance.new("ScreenGui",plr.LocalPlayer.PlayerGui)

if names[player.Name] then
local s = Instance.new("ScreenGui",plr.LocalPlayer.PlayerGui)
local b = Instance.new("TextLabel",s)
b.Position = UDim2.new(0.4,0,0.4,0)
b.Size = UDim2.new(0.3,0,0.2,0)
b.Text = (player.Name.."has entered")
b.TextScaled = true
wait(5)

end


t = Instance.new("TextLabel",a)

t.Position = UDim2.new(0.03,0,0.5,0)
t.Size = UDim2.new(0.1,0,0.05,0)
t.BackgroundTransparency = 0
t.Text = player.Name.." Has joined"
wait(4)
for i,v in pairs(plr.LocalPlayer.PlayerGui:GetChildren()) do
if v.Name == "ScreenGui" then
v:Destroy()
end
end
end)
end)

local ExampleSlider = Groupbox2:CreateSlider("FE INF CASH", 1, 100000, 0, function(v)
game:GetService("Players").LocalPlayer.PlayerGui.HUD.TopFrames.MoneyFrame.MoneyButton.MoneyImage.MoneyLabel.Text = v
end)

local ExampleSlider = Groupbox2:CreateSlider("HipHeight", 0, 10, 0, function(value)
   Float_Height = (value) -- Your float height | 5 is default

local i=1
G=game;
_=wait;
p=G:GetService("Players").LocalPlayer.Character
p:FindFirstChild("Humanoid").HipHeight = Float_Height
for i=1,i do
repeat p:FindFirstChild("Humanoid").HipHeight=Float_Height-n _(t)p:FindFirstChild("Humanoid").HipHeight=Float_Height+n _(t) until
p:FindFirstChild("Humanoid").Health == 0
end
end)


local ExampleButton2 = Groupbox2:CreateToggle("Logo Leaderboard", function()
game:GetService("Players").LocalPlayer.Stats.Youtuber.Value = true
game:GetService("Players").LocalPlayer.Stats.Twitch.Value = true
game:GetService("Players").LocalPlayer.Stats.VIP.Value = true
end)

local ExampleButton2 = Groupbox2:CreateToggle("GET ALL LOGOS (OP)", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.StaffLabel.Visible = true
   
    game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.TwitchLabel.Visible = true
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.YoutubeLabel.Visible = true
end)

local ExampleButton2 = Groupbox2:CreateToggle("GET MOD LOGO", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.StaffLabel.Visible = true
   
      game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.TwitchLabel.Visible = false

   game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.YoutubeLabel.Visible = false

end)

local ExampleButton2 = Groupbox2:CreateToggle("GET TWITCH LOGO", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.TwitchLabel.Visible = true
   
      game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.YoutubeLabel.Visible = false
      
         game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.StaffLabel.Visible = false
end)

local ExampleButton2 = Groupbox2:CreateToggle("GET YOUTUBE LOGO", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.YoutubeLabel.Visible = true
   
         game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.StaffLabel.Visible = false
            
      game.Players.LocalPlayer.Character.HumanoidRootPart.CreatorTag.TwitchLabel.Visible = false
end)

local ExampleButton = Groupbox2:CreateButton("Special Set",function()
game:GetService("Players").LocalPlayer.Equipping.Dunk.Value = "Dunk_Reverse360BTB2H_Special"
game:GetService("Players").LocalPlayer.Equipping.Dunk2.Value = "Dunk_LostAndFound_Special"
game:GetService("Players").LocalPlayer.Equipping.Dunk3.Value = "Dunk_Inverter_Special"
end)

local ExampleButton = Groupbox2:CreateButton("Special Set 2",function()
game:GetService("Players").LocalPlayer.Equipping.Dunk.Value = "Dunk_FakeBTB_Special"
game:GetService("Players").LocalPlayer.Equipping.Dunk2.Value = "Dunk_BTLReverse2H_Special"
game:GetService("Players").LocalPlayer.Equipping.Dunk3.Value = "Dunk_360Windmill_Special"
end)

local ExampleButton = Groupbox2:CreateButton("Legend Set",function()
game:GetService("Players").LocalPlayer.Equipping.Dunk.Value = "Dunk_360MailMan_L"
game:GetService("Players").LocalPlayer.Equipping.Dunk2.Value = "Dunk_MJ_L"
game:GetService("Players").LocalPlayer.Equipping.Dunk3.Value = "Dunk_1HClutchReverse_L"
end)

local ExampleButton = Groupbox2:CreateButton("Epic Set",function()
game:GetService("Players").LocalPlayer.Equipping.Dunk.Value = "Dunk_CuffCradle_E"
game:GetService("Players").LocalPlayer.Equipping.Dunk2.Value = "Dunk_VinceCarter360_E"
game:GetService("Players").LocalPlayer.Equipping.Dunk3.Value = "Dunk_Reverse360BTB_E"
end)

local ExampleButton = Groupbox2:CreateButton("360 Set",function()
game:GetService("Players").LocalPlayer.Equipping.Dunk.Value = "Dunk_360Pump_E"
game:GetService("Players").LocalPlayer.Equipping.Dunk2.Value = "Dunk_360_R"
game:GetService("Players").LocalPlayer.Equipping.Dunk3.Value = "Dunk_360BTL_R"
end)

local ExampleButton = Groupbox2:CreateButton("MJ Set",function()
game:GetService("Players").LocalPlayer.Equipping.Dunk.Value = "Dunk_MJ_L"
game:GetService("Players").LocalPlayer.Equipping.Dunk2.Value = "Dunk_MJ_L"
game:GetService("Players").LocalPlayer.Equipping.Dunk3.Value = "Dunk_MJ_L"
end)

local ExampleButton = Groupbox1:CreateButton("CRASH/LAG SERVER (OP/FUNNY)",function()
--// made my reestart
--// fixed by daddy ewo
while wait(0.6) do --// don't change it's the best
game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
local function getmaxvalue(val)
local mainvalueifonetable = 499999
if type(val) ~= "number" then
return nil
end
local calculateperfectval = (mainvalueifonetable/(val+2))
return calculateperfectval
end
local function bomb(tableincrease, tries)
local maintable = {}
local spammedtable = {}
table.insert(spammedtable, {})
z = spammedtable[1]
for i = 1, tableincrease do
local tableins = {}
table.insert(z, tableins)
z = tableins
end
local calculatemax = getmaxvalue(tableincrease)
local maximum
if calculatemax then
maximum = calculatemax
else
maximum = 999999
end
for i = 1, maximum do
table.insert(maintable, spammedtable)
end
for i = 1, tries do
game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
end
end
bomb(250, 2) --// change values if client crashes
end
end)
