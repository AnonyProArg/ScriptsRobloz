local buttonGui = Instance.new("ScreenGui")
buttonGui.Name = "ButtonGui"
buttonGui.Parent = game.Players.LocalPlayer.PlayerGui

local part = Instance.new("Part")
part.Name = "ButtonPart"
part.Anchored = true
part.Size = Vector3.new(8, 8, 0.2)

local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local playerLookVector = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector

part.Position = playerPosition + (playerLookVector * 2) -- Ajuste en la posición para que esté frente al jugador a 2 unidades
part.CFrame = CFrame.lookAt(part.Position, playerPosition) -- Hacer que el Part mire hacia el jugador

part.Transparency = 0.5
part.CanCollide = false
part.Parent = game.Workspace

local surfaceGui = Instance.new("SurfaceGui")
surfaceGui.Parent = part

-- Botones
local speedButton = Instance.new("TextButton")
speedButton.Name = "SpeedButton"
speedButton.Size = UDim2.new(0.4, 0, 0.2, 0)
speedButton.Position = UDim2.new(0.05, 0, 0.1, 0)
speedButton.BackgroundColor3 = Color3.new(0, 1, 0)
speedButton.Text = "Speed"
speedButton.Parent = surfaceGui

local espButton = Instance.new("TextButton")
espButton.Name = "ESPButton"
espButton.Size = UDim2.new(0.4, 0, 0.2, 0)
espButton.Position = UDim2.new(0.55, 0, 0.1, 0)
espButton.BackgroundColor3 = Color3.new(0, 0, 1)
espButton.Text = "ESP"
espButton.Parent = surfaceGui

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0.4, 0, 0.2, 0)
closeButton.Position = UDim2.new(0.3, 0, 0.5, 0)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.Text = "Close"
closeButton.Parent = surfaceGui

local espFolder = Instance.new("Folder")
espFolder.Name = "ESPFolder"
espFolder.Parent = game.Workspace -- Agregar el Folder al Workspace para que los cuadros ESP sean visibles

local speedEnabled = false
local CS = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
local connections = {}
local PLESP = false

local function updateESP()
    espFolder:ClearAllChildren()
    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local box = Instance.new("BoxHandleAdornment")
            box.Name = "ESPBox"
            box.Adornee = v.Character.HumanoidRootPart
            box.Size = v.Character.HumanoidRootPart.Size + Vector3.new(0.2, 0.2, 0.2) -- Aumentar el tamaño del cuadro ESP
            box.Color3 = Color3.fromRGB(0, 255, 0)
            box.Transparency = 0.6
            box.ZIndex = 5
            box.AlwaysOnTop = true
            box.Parent = espFolder
        end
    end
end

speedButton.MouseButton1Click:Connect(function()
    speedEnabled = not speedEnabled
    if speedEnabled then
        local moveConnection
        moveConnection = game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 35
            wait()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = CS
        end)
        table.insert(connections, moveConnection)
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = CS
    end
end)

espButton.MouseButton1Click:Connect(function()
    PLESP = not PLESP
    if PLESP then
        updateESP()
    else
        espFolder:ClearAllChildren()
    end
end)

closeButton.MouseButton1Click:Connect(function()
    buttonGui:Destroy()
    part:Destroy()
end)

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        if PLESP then
            updateESP()
        end
    end)
end)

game.Players.PlayerRemoving:Connect(function(player)
    if PLESP then
        updateESP()
    end
end)

part.Parent = game.Workspace -- Mover el Part al Workspace para que aparezca frente al jugador
