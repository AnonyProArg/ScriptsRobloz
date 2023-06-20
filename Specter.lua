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

    local bone = workspace.House.Bone
    if bone and bone:IsA("BasePart") then
        table.insert(waterPositions, bone.Position)
    end

    local rock1 = workspace.House.Rock1
    if rock1 and rock1:IsA("BasePart") then
        table.insert(waterPositions, rock1.Position)
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

local yOffset = 10
local buttonHeight = 30
local buttonSpacing = 5

local function createButton(text, clickFunc)
    local button = Instance.new("TextButton")
    button.Name = "Button"
    button.Text = text
    button.Size = UDim2.new(0, 200, 0, buttonHeight)
    button.Position = UDim2.new(0, 10, 0, yOffset)
    button.Parent = screenGui
    button.MouseButton1Click:Connect(clickFunc)
    yOffset = yOffset + buttonHeight + buttonSpacing
    table.insert(floatingButtons, button) -- Agregar el botón a la tabla de botones flotantes
end

createButton("Ir a la siguiente habitación", gotoNextRoomPosition)
createButton("Ir a la siguiente posición de agua", gotoNextWaterPosition)
createButton("Luz", teleportToFuseBox)
createButton("Guardar ubicación", savePlayerLocation)
createButton("TP a ubicación guardada", teleportToSavedLocation)
createButton("Ir a la Van", teleportToVanSpawn)
createButton("Destruir botones flotantes", destroyFloatingButtons)

getRoomPositions()
getWaterPositions()
