-- Obtener todos los jugadores en el servidor
local players = game:GetService("Players"):GetPlayers()

-- Crear una UI para mostrar la lista de jugadores y los botones adicionales
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 400)
Frame.Position = UDim2.new(0, 50, 0, 50)
Frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Función para teletransportar al jugador local
local function teleportPlayer(player)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
end

-- Mostrar la lista de jugadores en la UI
for i, player in ipairs(players) do
    local button = Instance.new("TextButton")
    button.Text = player.Name
    button.Size = UDim2.new(0, 180, 0, 30)
    button.Position = UDim2.new(0, 10, 0, 10 + (i-1) * 40)
    button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
    button.BorderSizePixel = 0
    button.Parent = Frame

    -- Asignar la función de teletransporte al hacer clic en el botón
    button.MouseButton1Click:Connect(function()
        teleportPlayer(player)
    end)
end

-- Crear el botón para cerrar el menú
local closeButton = Instance.new("TextButton")
closeButton.Text = "Cerrar"
closeButton.Size = UDim2.new(0, 180, 0, 30)
closeButton.Position = UDim2.new(0, 10, 1, -120)
closeButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
closeButton.BorderSizePixel = 0
closeButton.Parent = Frame

-- Función para cerrar el menú
local function closeMenu()
    ScreenGui:Destroy()
end

-- Asignar la función de cierre al hacer clic en el botón de cerrar
closeButton.MouseButton1Click:Connect(closeMenu)

-- Crear el botón para subir el brillo
local increaseButton = Instance.new("TextButton")
increaseButton.Text = "Subir Brillo"
increaseButton.Size = UDim2.new(0, 180, 0, 30)
increaseButton.Position = UDim2.new(0, 10, 1, -80)
increaseButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
increaseButton.BorderSizePixel = 0
increaseButton.Parent = Frame

-- Función para subir el brillo del juego
local function increaseBrightness()
    game.Lighting.Brightness = game.Lighting.Brightness + 20
end

-- Asignar la función de aumento de brillo al hacer clic en el botón de subir
increaseButton.MouseButton1Click:Connect(increaseBrightness)

-- Crear el botón para bajar el brillo
local decreaseButton = Instance.new("TextButton")
decreaseButton.Text = "Bajar Brillo"
decreaseButton.Size = UDim2.new(0, 180, 0, 30)
decreaseButton.Position = UDim2.new(0, 10, 1, -40)
decreaseButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
decreaseButton.BorderSizePixel = 0
decreaseButton.Parent = Frame

-- Función para bajar el brillo del juego
local function decreaseBrightness()
    game.Lighting.Brightness = game.Lighting.Brightness - 20
end

-- Asignar la función de disminución de brillo al hacer clic en el botón de bajar
decreaseButton.MouseButton1Click:Connect(decreaseBrightness)

