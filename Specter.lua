local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local roomPositions = {}
local waterPositions = {}
local savedPosition = nil
local floatingButtons = {} -- Tabla para almacenar los botones flotantes

local function getRoomPositions()
    local roomsFolder = workspace.House.Rooms
    for _, room in ipairs(roomsFolder:GetDescendants()) do
        if room.Name == "Hitbox" then
            table.insert(roomPositions, room.Position)
        end
    end
end

local function getWaterPositions()
    local watersFolder = workspace.House.Waters
    for _, water in ipairs(watersFolder:GetDescendants()) do
        if water:IsA("BasePart") then
            table.insert(waterPositions, water.Position)
        end
    end
end

local currentRoomIndex = 1
local currentWaterIndex = 1

local function gotoNextRoomPosition()
    if currentRoomIndex <= #roomPositions then
        LocalPlayer.Character:MoveTo(roomPositions[currentRoomIndex])
        currentRoomIndex = currentRoomIndex + 1
    end
end

local function gotoNextWaterPosition()
    if currentWaterIndex <= #waterPositions then
        LocalPlayer.Character:MoveTo(waterPositions[currentWaterIndex])
        currentWaterIndex = currentWaterIndex + 1
    end
end

local function teleportToFuseBox()
    local fuseBox = workspace.House:FindFirstChild("FuseBox")
    if fuseBox then
        LocalPlayer.Character:MoveTo(fuseBox.Position)
    end
end

local function savePlayerLocation()
    savedPosition = LocalPlayer.Character.HumanoidRootPart.Position
    tpSavedButton.Text = "TP a la habitación guardada"
    tpSavedButton.MouseButton1Click:Connect(teleportToSavedLocation)
end

local function teleportToSavedLocation()
    if savedPosition then
        LocalPlayer.Character:MoveTo(savedPosition)
    end
end

local function teleportToVanSpawn()
    local vanSpawn = workspace.Van:FindFirstChild("Spawn")
    if vanSpawn then
        LocalPlayer.Character:MoveTo(vanSpawn.Position)
    end
end

local function destroyFloatingButtons()
    for _, button in ipairs(floatingButtons) do
        button:Destroy()
    end
    floatingButtons = {} -- Limpiar la tabla de botones flotantes
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ButtonGui"
screenGui.Parent = PlayerGui

local roomButton = Instance.new("TextButton")
roomButton.Name = "RoomButton"
roomButton.Text = "Ir a la siguiente habitación"
roomButton.Size = UDim2.new(0, 200, 0, 50)
roomButton.Position = UDim2.new(0, 10, 0, 10)
roomButton.Parent = screenGui
roomButton.MouseButton1Click:Connect(gotoNextRoomPosition)
table.insert(floatingButtons, roomButton) -- Agregar el botón a la tabla de botones flotantes

local waterButton = Instance.new("TextButton")
waterButton.Name = "WaterButton"
waterButton.Text = "Ir a la siguiente posición de agua"
waterButton.Size = UDim2.new(0, 200, 0, 50)
waterButton.Position = UDim2.new(0, 10, 0, 70)
waterButton.Parent = screenGui
waterButton.MouseButton1Click:Connect(gotoNextWaterPosition)
table.insert(floatingButtons, waterButton) -- Agregar el botón a la tabla de botones flotantes

local tpButton = Instance.new("TextButton")
tpButton.Name = "TPButton"
tpButton.Text = "Luz"
tpButton.Size = UDim2.new(0, 200, 0, 50)
tpButton.Position = UDim2.new(0, 10, 0, 130)
tpButton.Parent = screenGui
tpButton.MouseButton1Click:Connect(teleportToFuseBox)
table.insert(floatingButtons, tpButton) -- Agregar el botón a la tabla de botones flotantes

local tpSavedButton = Instance.new("TextButton")
tpSavedButton.Name = "TPSavedButton"
tpSavedButton.Text = "Guardar ubicación"
tpSavedButton.Size = UDim2.new(0, 200, 0, 50)
tpSavedButton.Position = UDim2.new(0, 10, 0, 190)
tpSavedButton.Parent = screenGui
tpSavedButton.MouseButton1Click:Connect(savePlayerLocation)
table.insert(floatingButtons, tpSavedButton) -- Agregar el botón a la tabla de botones flotantes

local tpSavedLocationButton = Instance.new("TextButton")
tpSavedLocationButton.Name = "TPSavedLocationButton"
tpSavedLocationButton.Text = "TP a ubicación guardada"
tpSavedLocationButton.Size = UDim2.new(0, 200, 0, 50)
tpSavedLocationButton.Position = UDim2.new(0, 10, 0, 250)
tpSavedLocationButton.Parent = screenGui
tpSavedLocationButton.MouseButton1Click:Connect(teleportToSavedLocation)
table.insert(floatingButtons, tpSavedLocationButton) -- Agregar el botón a la tabla de botones flotantes

local vanButton = Instance.new("TextButton")
vanButton.Name = "VanButton"
vanButton.Text = "Ir a la Van"
vanButton.Size = UDim2.new(0, 200, 0, 50)
vanButton.Position = UDim2.new(0, 10, 0, 310)
vanButton.Parent = screenGui
vanButton.MouseButton1Click:Connect(teleportToVanSpawn)
table.insert(floatingButtons, vanButton) -- Agregar el botón a la tabla de botones flotantes

local destroyButtonsButton = Instance.new("TextButton")
destroyButtonsButton.Name = "DestroyButtonsButton"
destroyButtonsButton.Text = "Destruir botones flotantes"
destroyButtonsButton.Size = UDim2.new(0, 200, 0, 50)
destroyButtonsButton.Position = UDim2.new(0, 10, 0, 370)
destroyButtonsButton.Parent = screenGui
destroyButtonsButton.MouseButton1Click:Connect(destroyFloatingButtons)
table.insert(floatingButtons, destroyButtonsButton) -- Agregar el botón a la tabla de botones flotantes

getRoomPositions()
getWaterPositions()

