local expectedGameID = "6205205961"
local newGameID = "6413499953"
local currentGameID = tostring(game.PlaceId)

local stopExecution = false

local function createUI()
    -- Mostrar mensaje UI
    local messageUI = Instance.new("ScreenGui")
    local frame = Instance.new("Frame")
    local textLabel = Instance.new("TextLabel")
    local stopButton = Instance.new("TextButton")

    messageUI.Name = "MessageUI"
    messageUI.Parent = game.Players.LocalPlayer.PlayerGui

    frame.Name = "Frame"
    frame.Parent = messageUI
    frame.BackgroundTransparency = 1
    frame.Size = UDim2.new(1, 0, 1, 0)

    textLabel.Name = "MessageLabel"
    textLabel.Parent = frame
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.Text = "ONE CREATORX"
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextScaled = true
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextStrokeTransparency = 0.75

    stopButton.Name = "StopButton"
    stopButton.Parent = frame
    stopButton.BackgroundTransparency = 1
    stopButton.Size = UDim2.new(0.4, 0, 0.1, 0)
    stopButton.Position = UDim2.new(0.5, 0, 0.85, 0)
    stopButton.AnchorPoint = Vector2.new(0.5, 0.5)
    stopButton.Font = Enum.Font.SourceSansBold
    stopButton.Text = "Detener ejecución"
    stopButton.TextColor3 = Color3.new(1, 0, 0)
    stopButton.TextScaled = true

    -- Detener la ejecución al presionar el botón "StopButton"
    stopButton.MouseButton1Click:Connect(function()
        stopExecution = true
        stopButton:Destroy()
    end)
end

if currentGameID == expectedGameID then
    createUI()

    local countdown = 5

    local countdownText = Instance.new("TextLabel")
    countdownText.Name = "CountdownText"
    countdownText.Parent = game.Players.LocalPlayer.PlayerGui.MessageUI.Frame
    countdownText.Size = UDim2.new(0.2, 0, 0.1, 0)
    countdownText.Position = UDim2.new(0.5, 0, 0.9, 0)
    countdownText.AnchorPoint = Vector2.new(0.5, 0.5)
    countdownText.BackgroundTransparency = 1
    countdownText.Font = Enum.Font.SourceSansBold
    countdownText.Text = tostring(countdown)
    countdownText.TextColor3 = Color3.new(1, 1, 1)
    countdownText.TextScaled = true

    while countdown > 0 and not stopExecution do
        wait(1)
        countdown = countdown - 1
        countdownText.Text = tostring(countdown)
    end

    countdownText:Destroy()

    if not stopExecution then
        local coinPosition = game.Workspace.Folder.Coin.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(coinPosition)

        wait(1)

        local teleportPosition = CFrame.new(114.3, 64, -52.4)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = teleportPosition
    end
elseif currentGameID == newGameID then
    createUI()

    local countdown = 5

    local countdownText = Instance.new("TextLabel")
    countdownText.Name = "CountdownText"
    countdownText.Parent = game.Players.LocalPlayer.PlayerGui.MessageUI.Frame
    countdownText.Size = UDim2.new(0.2, 0, 0.1, 0)
    countdownText.Position = UDim2.new(0.5, 0, 0.9, 0)
    countdownText.AnchorPoint = Vector2.new(0.5, 0.5)
    countdownText.BackgroundTransparency = 1
    countdownText.Font = Enum.Font.SourceSansBold
    countdownText.Text = tostring(countdown)
    countdownText.TextColor3 = Color3.new(1, 1, 1)
    countdownText.TextScaled = true

    while countdown > 0 and not stopExecution do
        wait(1)
        countdown = countdown - 1
        countdownText.Text = tostring(countdown)
    end

    countdownText:Destroy()

    if not stopExecution then
        local teleportPosition = CFrame.new(-1710.28, 130.8, 246.499)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = teleportPosition
    end
else
    local coinPosition = game.Workspace.Folder.Coin.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(coinPosition)

    wait(1)

    local teleportPosition = game.Workspace.Folder.Teleporter.Tele.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
end

