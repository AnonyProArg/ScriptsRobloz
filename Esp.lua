-- Crear ScreenGui
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui

-- Crear Frame
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Position = UDim2.new(0.5, -100, 0.2, -100)
frame.Size = UDim2.new(0, 200, 0, 150)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 0.5
frame.Parent = gui

-- Crear botones
local speedButton = Instance.new("TextButton")
speedButton.Name = "SpeedButton"
speedButton.Position = UDim2.new(0, 10, 0, 10)
speedButton.Size = UDim2.new(0, 180, 0, 40)
speedButton.BackgroundColor3 = Color3.new(0, 1, 0)
speedButton.Text = "Speed"
speedButton.Parent = frame

local espButton = Instance.new("TextButton")
espButton.Name = "ESPButton"
espButton.Position = UDim2.new(0, 10, 0, 60)
espButton.Size = UDim2.new(0, 180, 0, 40)
espButton.BackgroundColor3 = Color3.new(0, 0, 1)
espButton.Text = "Enable Player ESP"
espButton.Parent = frame

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Position = UDim2.new(0, 10, 0, 110)
closeButton.Size = UDim2.new(0, 180, 0, 30)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.Text = "Close Script"
closeButton.Parent = frame

-- Funcionalidad de los botones
local speedEnabled = false
local H = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
local CS = H.WalkSpeed -- Guardar la velocidad original del jugador
local PLESP = false
local espFolder = Instance.new("Folder")
espFolder.Name = "ESP"
espFolder.Parent = game.CoreGui

function updateESP()
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
        moveConnection = H:GetPropertyChangedSignal("MoveDirection"):Connect(function()
            H.WalkSpeed = 35
            wait()
            H.WalkSpeed = CS
        end)
        table.insert(connections, moveConnection)
    else
        H.WalkSpeed = CS
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
    gui:Destroy()
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

