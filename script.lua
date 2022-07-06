repeat wait() until game:IsLoaded()

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character if not Character then Character = game.Workspace.Live:WaitForChild(Player) end
local Humanoid = Character.Humanoid or Character:WaitForChild("Humanoid")
local Workspace = game:GetService("Workspace")


if Character:FindFirstChild("Torso") and Character:FindFirstChild("Torso"):FindFirstChild("roblox") then
    Character:FindFirstChild("Torso"):FindFirstChild("roblox"):Destroy()
end

local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(Player.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
    end

-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/notarchs/libraray2/main/library.lua"))()
-- local documentation = https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/documentation.txt
local venyx = library.new("Archs Ken Script V2 C:", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}




--Legit
local Safe = venyx:addPage("Safe", 5012544693)
local SafeSection1 = Safe:addSection("Config - Pushup/Situp")
local SafeSection2 = Safe:addSection("Macros")

SafeSection1:addSlider("Pushup Speed", 5, 0, 100, function(pushupspeed)

    shared.pushupSpeed = pushupspeed
    print(shared.pushupSpeed)

end)

SafeSection1:addSlider("Situp Speed", 7, 0, 100, function(situpspeed)

    shared.situpSpeed = situpspeed
    print(shared.situpSpeed)

end)

SafeSection1:addToggle("Auto Eat Protein", nil, function(autoprotein)

    shared.autoProtein = autoprotein
    if shared.autoProtein and wait() then
        venyx:Notify("Legit Macros", "Auto protein now enabled for macros")
    end
end)

SafeSection1:addDropdown("Vest", {"10KG Vest", "20KG Vest", "40KG Vest", "80KG Vest", "120KG Vest", "300KG Vest"}, function(autovestselection)

    shared.vestSelected = autovestselection

end)

SafeSection1:addToggle("Auto Vest", nil, function(autovest)

    shared.autoVest = autovest

    while shared.autoVest and wait() and shared.vestSelected == "10KG Vest" do
        if not Player.Backpack:FindFirstChild("10KG Vest") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("WeightObject") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("10KG Vest") then
            fireclickdetector(Workspace.Shop["10KG Vest $200"].Head.ClickDetector)
    end
    end

end)

SafeSection2:addDropdown("Training", {"Pushup", "Situp", "Light Weight", "Medium Weight", "Heavy Weight", "Spar Training"}, function(selectedtraining)

    shared.selectedTraining = selectedtraining

end)

SafeSection2:addToggle("Auto Train", nil, function(autotrain)

    shared.autoTrain = autotrain

    while shared.autoTrain and wait() and shared.selectedTraining == "Pushup" do
        if Workspace.Live:WaitForChild(Player.Name).Stamina.Value >= 25 and Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 999999 then
            wait()
            if not Player.Backpack:FindFirstChild("Pushup") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Pushup") then
                fireclickdetector(Workspace.Shop["Pushup $100"].Head.ClickDetector)
                Humanoid:EquipTool(Player.Backpack:WaitForChild("Pushup", 1))
            else
            if Player.Backpack:FindFirstChild("Pushup") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Pushup") then
                Humanoid:EquipTool(Player.Backpack:WaitForChild("Pushup", 1))
            else
            if Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Pushup") and not Player.Character.Status:FindFirstChild("Training") then
                Character:FindFirstChild("Pushup"):Activate()
                wait(shared.pushupSpeed / 10)
            else
            if Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 25 then
                repeat 
                wait() 
                until nil or gethiddenproperty(Player.PlayerGui.HUD.Stamina, "AbsoluteSize").X >= 230
            end  
    end
end
end
end
end
    while shared.autoTrain and wait() and shared.selectedTraining == "Situp" do
        wait()
        if Workspace.Live:WaitForChild(Player.Name).Stamina.Value >= 25 and Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 999999 then
        if not Player.Backpack:FindFirstChild("Situp") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Situp") then
            fireclickdetector(Workspace.Shop["Situp $300"].Head.ClickDetector)
            Humanoid:EquipTool(Player.Backpack:WaitForChild("Situp", 1))
        else
        if Player.Backpack:FindFirstChild("Situp") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Situp") then
            Humanoid:EquipTool(Player.Backpack:WaitForChild("Situp", 1))
        else
        if Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Situp") and not Player.Character.Status:FindFirstChild("Training") then
            Character:FindFirstChild("Situp"):Activate()
            wait(shared.pushupSpeed / 10)
        else
        if Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 25 then
            repeat 
            wait() 
            until nil or gethiddenproperty(Player.PlayerGui.HUD.Stamina, "AbsoluteSize").X >= 230
        end  
end
end
end
end
end
    while shared.autoTrain and wait() and shared.selectedTraining == "Light Weight" do
        if Workspace.Live:WaitForChild(Player.Name).Stamina.Value >= 25 and Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 999999 then
        if not Player.Backpack:FindFirstChild("Gym Membership Card") then
            fireclickdetector(Workspace.Shop["Gym Membership Card $2000"].Head.ClickDetector)
        else
            if Player.Backpack:FindFirstChild("Gym Membership Card") and not Player.Backpack:FindFirstChild("Light Weight") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Light Weight") then
                fireclickdetector(Workspace.Shop["Light Weight $900"].Head.ClickDetector)
        else
            if Player.Backpack:FindFirstChild("Light Weight") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Light Weight") then
            Humanoid:EquipTool(Player.Backpack:WaitForChild("Light Weight", 1))
        else
            if Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Light Weight") and not Player.Character.Status:FindFirstChild("Training") then
                Character:FindFirstChild("Light Weight"):Activate()
                wait()
        else
            if Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 25 then
                repeat
                    wait()
                until nil or gethiddenproperty(Player.PlayerGui.HUD.Stamina, "AbsoluteSize").X >= 250
            end  
        end
        end
        end
    end
    end
    end
    while shared.autoTrain and wait() and shared.selectedTraining == "Medium Weight" do
        if Workspace.Live:WaitForChild(Player.Name).Stamina.Value >= 25 and Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 999999 then
        if not Player.Backpack:FindFirstChild("Gym Membership Card") then
            fireclickdetector(Workspace.Shop["Gym Membership Card $2000"].Head.ClickDetector)
        else
            if Player.Backpack:FindFirstChild("Gym Membership Card") and not Player.Backpack:FindFirstChild("Medium Weight") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Medium Weight") then
                fireclickdetector(Workspace.Shop["Medium Weight $1800"].Head.ClickDetector)
        else
            if Player.Backpack:FindFirstChild("Medium Weight") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Medium Weight") then
            Humanoid:EquipTool(Player.Backpack:WaitForChild("Medium Weight", 1))
        else
            if Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Medium Weight") and not Player.Character.Status:FindFirstChild("Training") then
                Character:FindFirstChild("Medium Weight"):Activate()
                wait()
        else
            if Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 25 then
                repeat
                    wait()
                until nil or gethiddenproperty(Player.PlayerGui.HUD.Stamina, "AbsoluteSize").X >= 250
            end  
        end
        end
        end
    end
    end
    end
    while shared.autoTrain and wait() and shared.selectedTraining == "Heavy Weight" do
        if Workspace.Live:WaitForChild(Player.Name).Stamina.Value >= 25 and Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 999999 then
        if not Player.Backpack:FindFirstChild("Gym Membership Card") then
            fireclickdetector(Workspace.Shop["Gym Membership Card $2000"].Head.ClickDetector)
        else
            if Player.Backpack:FindFirstChild("Gym Membership Card") and not Player.Backpack:FindFirstChild("Heavy Weight") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Heavy Weight") then
                fireclickdetector(Workspace.Shop["Heavy Weight $3000"].Head.ClickDetector)
        else
            if Player.Backpack:FindFirstChild("Heavy Weight") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Heavy Weight") then
            Humanoid:EquipTool(Player.Backpack:WaitForChild("Heavy Weight", 1))
        else
            if Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Heavy Weight") and not Player.Character.Status:FindFirstChild("Training") then
                Character:FindFirstChild("Heavy Weight"):Activate()
                wait()
        else
            if Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 25 then
                repeat
                    wait()
                until nil or gethiddenproperty(Player.PlayerGui.HUD.Stamina, "AbsoluteSize").X >= 250
            end  
        end
        end
        end
    end
    end
    end
    while shared.autoTrain and wait() and shared.selectedTraining == "Spar Training" do
        if Workspace.Live:WaitForChild(Player.Name).Stamina.Value >= 25 and Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 999999 then
            wait(0.1)
            if not Player.Backpack:FindFirstChild("Spar Training") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Right") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Spar Training") and (Workspace.Shop["Spar Training $190"].Head.Position - Player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 30  then
               fireclickdetector(Workspace.Shop["Spar Training $190"].Head.ClickDetector)
            else
            if Player.Backpack:FindFirstChild("Spar Training") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Spar Training") then
                Humanoid:EquipTool(Player.Backpack:WaitForChild("Spar Training", 5))
            else
            if Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Spar Training") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Right") then
                Character:FindFirstChild("Spar Training"):Activate()
                Humanoid:EquipTool(Player.Backpack:WaitForChild("Basic Combat", 1))
            else
            if Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Right") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Basic Combat") then
                Humanoid:EquipTool(Player.Backpack:WaitForChild("Basic Combat", 1))
            else
            if Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Right") and Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Basic Combat") then
                Character:FindFirstChild("Basic Combat"):Activate()
                wait(0.05)
            else
            if Workspace.Live:WaitForChild(Player.Name).Stamina.Value <= 25 then
                repeat
                    wait()
                until nil or gethiddenproperty(Player.PlayerGui.HUD.Stamina, "AbsoluteSize").X >= 250
            end
            end
            end
            end
            end
            end
        end
    end
end)








-- risky
local Risky = venyx:addPage("Risky", 5012544693)
local RiskySection1 = Risky:addSection("Exploits")
local RiskySection2 = Risky:addSection("Farms")

RiskySection1:addSlider("Walkspeed", 24, 0, 300, function(walkspeeed)
shared.walkSpeed = walkspeeed
end)

RiskySection1:addDropdown("Walkspeed Mode", {"Body Velocity", "Regular"}, function(walkspeedmode)
shared.walkspeedMode = walkspeedmode
end)

RiskySection1:addToggle("Walkspeed Toggle", nil, function(walkspeed)
shared.walkSpeedToggle = walkspeed

while shared.walkSpeedToggle and wait() and shared.walkspeedMode == "Regular" do
Humanoid.WalkSpeed = shared.walkSpeed
end
while shared.walkSpeedToggle and wait() and shared.walkspeedMode == "Body Velocity" do
    Player.Character:WaitForChild("HumanoidRootPart").CFrame = Player.Character:WaitForChild("HumanoidRootPart").CFrame + Player.Character:WaitForChild("Humanoid").MoveDirection * shared.walkSpeed / 100
end
end)

RiskySection1:addToggle("Auto Punch (Toggle)", nil, function(punchtoggle)
shared.punchToggle = punchtoggle

if shared.punchToggle and wait() then
venyx:Notify("Slow Down!", "Auto Punch is a risky feature, be careful.")
end

while shared.punchToggle and wait(0.17) do
    game:GetService("Players").LocalPlayer.Backpack.zoom.boom.accion:FireServer(true, 1)
end
end)

RiskySection1:addToggle("Auto Dropkick (Toggle)", nil, function(dropkicktoggle)
shared.dropkickToggle = dropkicktoggle

if shared.dropkickToggle and wait() then
venyx:Notify("Slow Down!", "Auto Dropkick is a risky feature, be careful.")
end

while shared.dropkickToggle and wait(0.17) do
        Player.Backpack.zoom.boom.accion:FireServer(true, "DropKick")
end
end)

RiskySection2:addToggle("Auto Dura", nil, function(autoduras)
shared.autoDura = autoduras
end)

RiskySection2:addDropdown("Roadwork Mode", {"Above", "Under"}, function(roadworkmode)
shared.roadworkMode = roadworkmode
end)

RiskySection2:addToggle("Auto Roadwork", nil, function(autoroadwork)
shared.autoRoadwork = autoroadwork

while shared.autoRoadwork and wait() and shared.roadworkMode == "Above" do
    print("not working rn")
end
end)

RiskySection2:addToggle("Auto Spar", nil, function(sparrisky)
shared.sparRisky = sparrisky

while shared.sparRisky and wait() do
    if Player.Character.Stamina.Value <= 10 then
        Humanoid:Destroy()
        end
    wait(0.1)
    if
        not Player.Backpack:FindFirstChild("Spar Training") and shared.sparRisky and
            not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Right") and
            not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Spar Training")
     then
        fireclickdetector(Workspace.Shop["Spar Training $190"].Head.ClickDetector)
        Player.Backpack:WaitForChild("Spar Training", 5)
        Humanoid:EquipTool(Player.Backpack:FindFirstChild("Spar Training"))
        Character:FindFirstChild("Spar Training"):Activate()
    elseif Player.Backpack:FindFirstChild("Spar Training") and not Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Right") then
        Humanoid:EquipTool(Player.Backpack:FindFirstChild("Spar Training"))
        Character:FindFirstChild("Spar Training"):Activate()
    elseif Workspace.Live:WaitForChild(Player.Name):FindFirstChild("Right") then
        wait(0.16)
        Player.Backpack.zoom.boom.accion:FireServer(true, 1)
    end
end
end)

local Teleports = venyx:addPage("Teleports", 5012544693)
local TeleportSection1 = Teleports:addSection("Config")
local TeleportSection2 = Teleports:addSection("Locations")

TeleportSection1:addSlider("Tween Speed", 2, 2, 5, function(tweenspeed)
    shared.tweenSpeed = tweenspeed
end)

TeleportSection2:addDropdown("Location", {"Fruitboz Heads or Tails!", "Simon's Gym", "Bank", "Hospital", "Jose's Restaurant", "Gym", "Jack's Pharmacy", "KNC", "En's Cafe", "Kebab King", "Stats R Us", "Jova Juice", "Poppa Tatoes", "Kengan Arena", "Gravity Chamber", "Sailors Ring", "The Docks", "AHHHH! Pizza", "Roby Grill", "Jake's Corner ™"}, function(teleportselect)
    shared.teleportSelect = teleportselect  
end)

TeleportSection2:addButton("Teleport To Location", function()

    local Area = CFrame.new(Workspace.Areas[shared.teleportSelect].Position)

    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(shared.tweenSpeed)

    if Player.Character and
    Player.Character:FindFirstChild('HumanoidRootPart') then

    function destroy_ken_shit_antiexploit()
        local a = tween_s:Create(Player.Character.HumanoidRootPart,tweeninfo,{CFrame = Area})
        a:Play()
    end
    end

    destroy_ken_shit_antiexploit(Area)
end)

local ESP = venyx:addPage("ESP", 5012544693)
local ESPSection = ESP:addSection("Config")
local ESPSection2 = ESP:addSection("ESP")

ESPSection:addColorPicker("HP Colour (Select Before Toggling)", Color3.fromRGB(0,255,0), function(esphealthcolour)
shared.healthColour = esphealthcolour
end)

ESPSection2:addToggle("Enable ESP", nil, function(enableesp)
    shared.nameEsp = enableesp
    local c = workspace.CurrentCamera
    local ps = game:GetService("Players")
    local lp = ps.LocalPlayer
    local rs = game:GetService("RunService")

    local function esp(p,cr)
        local h = cr:WaitForChild("Humanoid")
        local hrp = cr:WaitForChild("HumanoidRootPart")

        local text = Drawing.new("Text")
        text.Visible = shared.nameEsp
        text.Center = true
        text.Outline = true
        text.Font = Drawing.Fonts.Monospace
        text.Color = Color3.fromRGB(255,255,255)
        text.Size = 15

        local c1
        local c2
        local c3

        local function dc()
            text.Visible = false
            text:Remove()
            if c1 then
                c1:Disconnect()
                c1 = nil
            end
            if c2 then
                c2:Disconnect()
                c2 = nil
            end
            if c3 then
                c3:Disconnect()
                c3 = nil
            end
        end

        c2 = cr.AncestryChanged:Connect(function(_,parent)
            if not parent then
                dc()
            end
        end)

        c3 = h.HealthChanged:Connect(function(v)
            if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                dc()
            end
        end) 

        c1 = rs.RenderStepped:Connect(function()
            local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
            if hrp_onscreen then
                text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y)
                text.Text = p.leaderstats.FirstName.Value.. " ".. p.leaderstats.ClanName.Value.. " (".. p.name.. ") "
                text.Visible = shared.nameEsp
            if p.Name == "dhacf121" then
                text.Color = Color3.fromRGB(255, 120, 253)
            else if p.Name == "bhc012" or p.Name == "KazuMikazuchi" or p.Name == "Flappyboy99" or p.Name == "ep_q" or p.Name == "SpookieMum" or p.Name == "MechanicalChaser" or p.Name == "vuive52678" or p.Name == "HellyMcTelly" or p.Name == "LittleChris09890" then
                text.Color = Color3.fromRGB(255, 0, 0)
            else if p.Character:FindFirstChild("Torso") and not p.Character:FindFirstChild("Torso"):FindFirstChild("roblox") then
                text.Color = Color3.fromRGB(0, 64, 255)
            end
        end
        end
            else
                text.Visible = false
            end
        end)
    end

    local function p_added(p)
        if p.Character then
            esp(p,p.Character)
        end
        p.CharacterAdded:Connect(function(cr)
            esp(p,cr)
        end)
    end

    for i,p in next, ps:GetPlayers() do
        if p ~= lp then
            p_added(p)
        end
    end

    ps.PlayerAdded:Connect(p_added)

end)

ESPSection2:addToggle("Enable Health ESP", nil, function(enablehealthesp)
    shared.healthEsp = enablehealthesp
    local c = workspace.CurrentCamera
    local ps = game:GetService("Players")
    local lp = ps.LocalPlayer
    local rs = game:GetService("RunService")

    local function esphealth(p,cr)
        local h = cr:WaitForChild("Humanoid")
        local hrp = cr:WaitForChild("HumanoidRootPart")

        local texthealth = Drawing.new("Text")
        texthealth.Visible = shared.healthEsp
        texthealth.Center = true
        texthealth.Outline = true
        texthealth.Font = Drawing.Fonts.Monospace
        texthealth.Color = shared.healthColour
        texthealth.Size = 15

        local c1
        local c2
        local c3

        local function dc()
            texthealth.Visible = false
            texthealth:Remove()
            if c1 then
                c1:Disconnect()
                c1 = nil
            end
            if c2 then
                c2:Disconnect()
                c2 = nil
            end
            if c3 then
                c3:Disconnect()
                c3 = nil
            end
        end

        c2 = cr.AncestryChanged:Connect(function(_,parent)
            if not parent then
                dc()
            end
        end)

        c3 = h.HealthChanged:Connect(function(v)
            if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                dc()
            end
        end) 

        c1 = rs.RenderStepped:Connect(function()
            local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
            if hrp_onscreen then
                local healthpercentage = (p.Character.Humanoid.Health / p.Character.Humanoid.MaxHealth) * 100 + 0.5
                local health1 = (p.Character.Humanoid.Health) + 0.5
                local health2 = (p.Character.Humanoid.MaxHealth) + 0.5
                texthealth.Position = Vector2.new(hrp_pos.X, hrp_pos.Y + 10)
                texthealth.Text = math.floor(health1).. " / ".. math.floor(health2).. " (".. math.floor(healthpercentage).. "%)"
                texthealth.Visible = shared.healthEsp
            else
                texthealth.Visible = false
            end
        end)
    end

    local function p_added(p)
        if p.Character then
            esphealth(p,p.Character)
        end
        p.CharacterAdded:Connect(function(cr)
            esphealth(p,cr)
        end)
    end

    for i,p in next, ps:GetPlayers() do
        if p ~= lp then
            p_added(p)
        end
    end

    ps.PlayerAdded:Connect(p_added)
end)

local Items = venyx:addPage("Items", 5012544693)
local ItemsSection = Items:addSection("Item - Select")
local ItemsSection2 = Items:addSection("Item - Utility")

ItemsSection:addDropdown("Items", {"Spar Training $190", "40KG Vest $800", "Burrito $27", "Taco $21", "Hotdog $14", "Fried Chicken $22", "Water $18", "Enchilada $32", "Bandage $130", "Breathing Mask $700", "Roadwork Training $130", "Pushup $100", "20KG Vest $400", "10KG Vest $200", "80KG Vest $1600", "Bank Card $275", "Durability Training $130", "Shadow Training $130", "Gym Membership Card $2000", "Jerk Chicken $70", "Ting Soda $30", "Fries $15", "Shishkebab $15", "Ken Ken Special $30", "Situp $300", "Chicken Wing $10", "Pepperoni Slice $15", "Cheesy Bread $30", "Tangerine Tingle $55", "Purple Passione $55", "Green Machine $55", "Stat Check Up $700", "300KG Vest $10000", "Light Weight $900", "Medium Weight $1800", "Heavy Weight $3000", "Self Punch $130", "Poppa Chips $10", "Poppa Fries $15", "Loaded Potato $25", "120KG Vest $3000"}, function(itemselect)
shared.itemSelected = itemselect
end)

ItemsSection:addButton("Buy Item", function(buystuff)
fireclickdetector(Workspace.Shop[shared.itemSelected].Head.ClickDetector)
end)

ItemsSection2:addButton("Auto buy and use bandage", function(baubandage)
fireclickdetector(Workspace.Shop["Bandage $130"].Head.ClickDetector)
wait(0.1)
Humanoid:EquipTool(Player.Backpack:FindFirstChild("Bandage"))
wait(0.1)
Character:FindFirstChild("Bandage"):Activate()
end)

local Security = venyx:addPage("Security", 5012544693)
local SecuritySection = Security:addSection("Anti-Ban")

SecuritySection:addToggle("Mod Detector", nil, function(moddetector)
shared.modDetector = moddetector

if shared.modDetector and wait() then
local notifySound = Instance.new("Sound")
notifySound.Parent = game.StarterGui
notifySound.SoundId = "rbxassetid://338457679"
 
local Mods = {
["centuriontb"] = true,
["Excalidus"] = true,
["ShiroTokiyama"] = true,
["MechanicalChaser"] = true,
["VanishingDragone"] = true,
["SpookieMum"] = true,
["HellyMcTelly"] = true,
["Grvachi"] = true
}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if Mods[v.Name] then
        warn("Mod " .. v.Name)
        notifySound:Play()
        venyx:Notify("Mod Detector", "Mod " .. v.Name .. "Is in your server!")
    end
end
game.Players.PlayerAdded:Connect(function(plr)
    if Mods[plr.Name] then
        warn("Mod " .. v.Name)
        notifySound:Play()
        venyx:Notify("Mod Detector", "Mod " .. v.Name .. "Has Joined your server!")
    end
end)

end
end)

-- Settings
local Settings = venyx:addPage("Settings", 5012544693)
local SettingsSection = Settings:addSection("Settings")
local SettingsSection2 = Settings:addSection("General Config")

SettingsSection:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
venyx:toggle()
end, function()
end)
SettingsSection:addSlider("Volume",2, 0, 10, function(volume)
shared.gameVolume = volume
UserSettings():GetService("UserGameSettings").MasterVolume = shared.gameVolume / 10
end)
--[[SettingsSection:addColorPicker("ColorPicker", Color3.fromRGB(0, 255, 74))
SettingsSection:addSlider("Slider", 0, -100, 100, function(value)
end)
SettingsSection:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3})
SettingsSection:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
end)
SettingsSection:addButton("Button")
SettingsSection:addButton("Button", function(lol)
venyx:Notify("Test", "Testtt", function(fr)

if fr == true then
    print("true")
else if fr == false then
    print("false")
end
end
end)
end)--]]
    

-- second page
--[[local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end--]]

-- load
venyx:SelectPage(venyx.pages[1], true)
