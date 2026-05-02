if _G.NeutralSolarFarm then return warn("Already loaded.") end
_G.NeutralSolarFarm = true

if game.PlaceId ~= 85262399427066 then return warn("Invalid game.") end

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 11)

local MainGui = Instance.new("ScreenGui")
MainGui.Name = "Neutral Solar Auto Stealer"
MainGui.Parent = PlayerGui
MainGui.IgnoreGuiInset = true

local FarmFrame = Instance.new("Frame")
FarmFrame.Name = "FarmFrame"
FarmFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
FarmFrame.BackgroundColor3 = Color3.fromRGB(153, 153, 153)
FarmFrame.Parent = MainGui
UICorner:Clone().Parent = FarmFrame
local RatioConstraint = Instance.new("UIAspectRatioConstraint")
RatioConstraint.AspectRatio = 1.859
RatioConstraint.Parent = FarmFrame
local UIDragDetector = Instance.new("UIDragDetector")
UIDragDetector.Parent = FarmFrame

local FarmText = Instance.new("Frame")
FarmText.Name = "FarmText"
FarmText.Size = UDim2.new(1.043, 0, 0.144, 0)
FarmText.Position = UDim2.new(-0.022, 0, -0.074, 0)
FarmText.BackgroundColor3 = Color3.fromRGB(100, 97, 97)
FarmText.Parent = FarmFrame
UICorner:Clone().Parent = FarmText

local FarmLabel = Instance.new("TextLabel")
FarmLabel.Name = "FarmLabel"
FarmLabel.BackgroundTransparency = 1
FarmLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FarmLabel.Text = "Niglet Auto Stealer"
FarmLabel.Parent = FarmText
FarmLabel.Size = UDim2.new(0.329, 0, 1.111, 0)
FarmLabel.Position = UDim2.new(-0.002, 0, 0.033, 0)
FarmLabel.TextScaled = true

local OptionsFrame = Instance.new("Frame")
OptionsFrame.Name = "Options"
OptionsFrame.Size = UDim2.new(0.239, 0, 0.888, 0)
OptionsFrame.Position = UDim2.new(0.014, 0, 0.089, 0)
OptionsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OptionsFrame.Parent = FarmFrame
UICorner:Clone().Parent = OptionsFrame

local PlayerButton = Instance.new("TextButton")
PlayerButton.Name = "PlayerButton"
PlayerButton.Size = UDim2.new(0.906, 0, 0.144, 0)
PlayerButton.Position = UDim2.new(0.043, 0, 0.05, 0)
PlayerButton.BackgroundColor3 = Color3.fromRGB(135, 135, 135)
PlayerButton.Parent = OptionsFrame
PlayerButton.Text = "Player"
PlayerButton.TextScaled = true
UICorner:Clone().Parent = PlayerButton

local StealerButton = Instance.new("TextButton")
StealerButton.Name = "StealerButton"
StealerButton.Size = UDim2.new(0.906, 0, 0.144, 0)
StealerButton.Position = UDim2.new(0.043, 0, 0.252, 0)
StealerButton.BackgroundColor3 = Color3.fromRGB(135, 135, 135)
StealerButton.Parent = OptionsFrame
StealerButton.Text = "Stealer"
StealerButton.TextScaled = true
UICorner:Clone().Parent = StealerButton

local PlayerFrame = Instance.new("Frame")
PlayerFrame.Name = "PlayerFrame"
PlayerFrame.Size = UDim2.new(0.715, 0, 0.888, 0)
PlayerFrame.Position = UDim2.new(0.27, 0, 0.089, 0)
PlayerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerFrame.Parent = FarmFrame
UICorner:Clone().Parent = PlayerFrame
local PlayerLabel = Instance.new("TextLabel")
PlayerLabel.Name = "PlayerLabel"
PlayerLabel.Size = UDim2.new(0.452, 0, 0.147, 0)
PlayerLabel.Position = UDim2.new(0.272, 0, 0.001, 0)
PlayerLabel.TextScaled = true
PlayerLabel.Text = "Player"
PlayerLabel.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
PlayerLabel.BackgroundTransparency = 1
PlayerLabel.Parent = PlayerFrame

local SpeedFrame = Instance.new("Frame")
SpeedFrame.Name = "SpeedFrame"
SpeedFrame.Size = UDim2.new(0.918, 0, 0.18, 0)
SpeedFrame.Position = UDim2.new(0.041, 0, 0.194, 0)
SpeedFrame.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
SpeedFrame.Parent = PlayerFrame
UICorner:Clone().Parent = SpeedFrame

local SpeedTextBox = Instance.new("TextBox")
SpeedTextBox.Name = "SpeedTextBox"
SpeedTextBox.Size = UDim2.new(0.435, 0, 0.82, 0)
SpeedTextBox.Position = UDim2.new(0.49, 0, 0.08, 0)
SpeedTextBox.PlaceholderColor3 = Color3.fromRGB(127, 127, 127)
SpeedTextBox.PlaceholderText = "Set Speed..."
SpeedTextBox.Parent = SpeedFrame
SpeedTextBox.TextScaled = true
SpeedTextBox.Text = ""
UICorner:Clone().Parent = SpeedTextBox

local SpeedLabel = Instance.new("TextLabel")
SpeedLabel.Name = "SpeedLabel"
SpeedLabel.Size = UDim2.new(0.492, 0, 0.82, 0)
SpeedLabel.Position = UDim2.new(0.037, 0, 0.08, 0)
SpeedLabel.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
SpeedLabel.BackgroundTransparency = 1
SpeedLabel.Text = "Speed"
SpeedLabel.TextScaled = true
SpeedLabel.Parent = SpeedFrame

local IPPButton = Instance.new("TextButton")
IPPButton.Name = "IPP"
IPPButton.Size = UDim2.new(0.918, 0, 0.18, 0)
IPPButton.Position = UDim2.new(0.041, 0, 0.41, 0)
IPPButton.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
IPPButton.TextScaled = true
IPPButton.Text = "Instant Proximity Prompts"
IPPButton.Parent = PlayerFrame
UICorner:Clone().Parent = IPPButton

local StealerFrame = Instance.new("Frame")
StealerFrame.Visible = false
StealerFrame.Name = "StealerFrame"
StealerFrame.Size = UDim2.new(0.715, 0, 0.888, 0)
StealerFrame.Position = UDim2.new(0.27, 0, 0.089, 0)
StealerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StealerFrame.Parent = FarmFrame
UICorner:Clone().Parent = StealerFrame
local StealerLabel = Instance.new("TextLabel")
StealerLabel.Name = "StealerLabel"
StealerLabel.Size = UDim2.new(0.452, 0, 0.147, 0)
StealerLabel.Position = UDim2.new(0.272, 0, 0.001, 0)
StealerLabel.TextScaled = true
StealerLabel.Text = "Stealer"
StealerLabel.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
StealerLabel.BackgroundTransparency = 1
StealerLabel.Parent = StealerFrame

local ASAButton = Instance.new("TextButton")
ASAButton.Name = "AutoStealAllButton"
ASAButton.Size = UDim2.new(0.918, 0, 0.18, 0)
ASAButton.Position = UDim2.new(0.041, 0, 0.194, 0)
ASAButton.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
ASAButton.Text = ""
ASAButton.Parent = StealerFrame
UICorner:Clone().Parent = ASAButton

local ASAButtonLabel = Instance.new("TextLabel")
ASAButtonLabel.Name = "AutoStealAllButtonLabel"
ASAButtonLabel.Size = UDim2.new(0.492, 0, 0.82, 0)
ASAButtonLabel.Position = UDim2.new(0.037, 0, 0.08, 0)
ASAButtonLabel.TextScaled = true
ASAButtonLabel.Text = "Auto Steal All"
ASAButtonLabel.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
ASAButtonLabel.BackgroundTransparency = 1
ASAButtonLabel.Parent = ASAButton

local OnOffText = Instance.new("TextLabel")
OnOffText.Name = "On/Off Text"
OnOffText.Size = UDim2.new(0.492, 0, 0.82, 0)
OnOffText.Position = UDim2.new(0.529, 0, 0.08, 0)
OnOffText.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
OnOffText.BackgroundTransparency = 1
OnOffText.Parent = ASAButton
OnOffText.Text = "OFF"
OnOffText.TextScaled = true

PlayerButton.Activated:Connect(function()
PlayerFrame.Visible = true
StealerFrame.Visible = false
end)

StealerButton.Activated:Connect(function()
PlayerFrame.Visible = false
StealerFrame.Visible = true
end)

SpeedTextBox.FocusLost:Connect(function()
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local Humanoid = Character:WaitForChild("Humanoid")
    Humanoid.WalkSpeed = tonumber(SpeedTextBox.Text)
end)

IPPButton.Activated:Connect(function()
    game.DescendantAdded:Connect(function(OBJ)
        if OBJ and OBJ:IsA("ProximityPrompt") then
            OBJ.HoldDuration = 0
        end
    end)

    for _, Prompt in game:GetDescendants() do
        if Prompt and Prompt:IsA("ProximityPrompt") then
            Prompt.HoldDuration = 0
        end
    end
end)

local function StealBattery(Battery, Hitbox, Prompt)

    local Character = Player.Character or Player.CharacterAdded:Wait()
    local Plots = game:GetService("Workspace").Plots:GetChildren()
    local Plot

    for _, PPlot in Plots do
        if PPlot:GetAttribute("OwnerUsername") == Player.Name then
            Plot = PPlot
            print("Plot set to " .. PPlot.Name .. ".")
        end
    end
    Character:PivotTo(Hitbox.CFrame)
    task.wait(0.4)
    fireproximityprompt(Prompt)
    task.wait(0.2)
    Character:PivotTo(Plot.Floor.CFrame * CFrame.new(17, 5, 0))
end

local AutoStealAll = false

ASAButton.Activated:Connect(function()
    AutoStealAll = not AutoStealAll

    if AutoStealAll == true then
        OnOffText.Text = "ON"
    else
        OnOffText.Text = "OFF"
    end
end)

while task.wait() do
    if not AutoStealAll then
        continue
    end

    local PlotFolders = game:GetService("Workspace").Plots:GetChildren()

    for _, Plot in ipairs(PlotFolders) do
        for _, PBattery in ipairs(Plot:GetChildren()) do

            if PBattery
            and PBattery:IsA("Model")
            and PBattery.Name:sub(-7) == "Battery" then

                local Owner = Plot:GetAttribute("OwnerUsername")
                if not Owner or Owner == Player.Name then
                    continue
                end

                local Hitbox = PBattery:FindFirstChild("Hitbox")
                if not Hitbox then
                    continue
                end

                local Prompt = Hitbox:FindFirstChild("ProximityPrompt")
                if not Prompt or not Prompt.Enabled then
                    continue
                end

                print("Found battery to steal: " .. PBattery.Name)
                StealBattery(PBattery, Hitbox, Prompt)
                print("Trying to steal battery...")
                task.wait(0.6)
            end

            task.wait()
        end
    end
end
