-- Variables globales
local player = game.Players.LocalPlayer
local savedPositions = {}
local teleporting = false

-- Función para guardar la posición actual del jugador
local function savePosition()
    local currentPosition = player.Character.HumanoidRootPart.Position
    table.insert(savedPositions, currentPosition)
end

-- Función para teletransportar al jugador a las ubicaciones guardadas
local function teleportToSavedPositions()
    if not teleporting then
        teleporting = true
        for i, position in ipairs(savedPositions) do
            wait(2) -- Esperar 400 milisegundos entre cada teletransporte
            player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
        end
        teleporting = false
    end
end

-- Función principal
local function main()
    -- Crear la GUI si no existe
    local gui = player.PlayerGui:FindFirstChild("TeleportGui")
    if not gui then
        gui = Instance.new("ScreenGui")
        gui.Name = "TeleportGui"
        gui.Parent = player.PlayerGui

        local button1 = Instance.new("TextButton")
        button1.Size = UDim2.new(0, 100, 0, 50)
        button1.Position = UDim2.new(0, 10, 0, 10)
        button1.Text = "Guardar posición 1"
        button1.Parent = gui

        local button2 = Instance.new("TextButton")
        button2.Size = UDim2.new(0, 100, 0, 50)
        button2.Position = UDim2.new(0, 10, 0, 70)
        button2.Text = "Guardar posición 2"
        button2.Parent = gui

        local button3 = Instance.new("TextButton")
        button3.Size = UDim2.new(0, 100, 0, 50)
        button3.Position = UDim2.new(0, 10, 0, 130)
        button3.Text = "Guardar posición 3"
        button3.Parent = gui

        local teleportButton = Instance.new("TextButton")
        teleportButton.Size = UDim2.new(0, 100, 0, 50)
        teleportButton.Position = UDim2.new(0, 10, 0, 190)
        teleportButton.Text = "Teletransportar"
        teleportButton.Parent = gui

        -- Eventos de los botones
        button1.MouseButton1Click:Connect(function()
            savePosition()
        end)

        button2.MouseButton1Click:Connect(function()
            savePosition()
        end)

        button3.MouseButton1Click:Connect(function()
            savePosition()
        end)

        teleportButton.MouseButton1Click:Connect(function()
            teleportToSavedPositions()
        end)
    end
end

-- Ejecutar la función principal
main()

-- Crear bucle para el botón "Teletransportar"
local teleportButton = player.PlayerGui.TeleportGui:WaitForChild("TeleportButton")
while true do
    teleportButton.MouseButton1Click:Wait()
    teleportToSavedPositions()
    wait(10)
end
