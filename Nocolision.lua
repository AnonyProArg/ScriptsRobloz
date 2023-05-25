local player = game.Players.LocalPlayer

local playerGui = player:WaitForChild("PlayerGui")

-- Función para quitar la colisión del jugador con todos los objetos excepto el suelo

local function disableCollisionExceptFloor()

    -- Obtener todas las partes del jugador

    local parts = player.Character:GetDescendants()

    -- Recorrer todas las partes del jugador y quitar la colisión, excepto el suelo

    for _, part in ipairs(parts) do

        if part:IsA("BasePart") and part ~= workspace.Terrain then

            part.CanCollide = false

        end

    end

end

-- Función para restaurar la colisión del jugador con todos los objetos

local function enableCollisionWithAll()

    -- Obtener todas las partes del jugador

    local parts = player.Character:GetDescendants()

    -- Restaurar la colisión del jugador con todas las partes

    for _, part in ipairs(parts) do

        if part:IsA("BasePart") then

            part.CanCollide = true

        end

    end

end

-- Crear el menú flotante

local floatingMenu = Instance.new("ScreenGui")

floatingMenu.Name = "FloatingMenu"

floatingMenu.Parent = playerGui

-- Crear un frame para contener los botones

local menuFrame = Instance.new("Frame")

menuFrame.Name = "MenuFrame"

menuFrame.Size = UDim2.new(0, 200, 0, 150)

menuFrame.Position = UDim2.new(1, -210, 0, 10)

menuFrame.BackgroundTransparency = 0.5

menuFrame.BackgroundColor3 = Color3.new(0, 0, 0)

menuFrame.Parent = floatingMenu

-- Crear un botón para quitar la colisión excepto el suelo

local disableCollisionButton = Instance.new("TextButton")

disableCollisionButton.Name = "DisableCollisionButton"

disableCollisionButton.Text = "Quitar Colisión (Excepto Suelo)"

disableCollisionButton.Size = UDim2.new(0, 180, 0, 50)

disableCollisionButton.Position = UDim2.new(0.5, -90, 0, 20)

disableCollisionButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)

disableCollisionButton.TextColor3 = Color3.new(1, 1, 1)

disableCollisionButton.Parent = menuFrame

-- Conectar la función de quitar colisión excepto el suelo al evento Activated del botón

disableCollisionButton.Activated:Connect(disableCollisionExceptFloor)

-- Crear un botón para restaurar la colisión del jugador con todos los objetos

local enableCollisionButton = Instance.new("TextButton")

enableCollisionButton.Name = "EnableCollisionButton"

enableCollisionButton.Text = "Restaurar Colisión"

enableCollisionButton.Size = UDim2.new(0, 180, 0, 50)

enableCollisionButton.Position = UDim2.new(0.5, -90, 0, 80)

enableCollisionButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)

enableCollisionButton.TextColor3 = Color3.new(1, 1, 1)

enableCollisionButton.Parent = menuFrame

-- Conectar la función de restaurar colisión al evento Activated del botón

enableCollisionButton.Activated:Connect(enableCollisionWithAll)

-- Crear un botón para cerrar el menú y restablecer los ajustes del jugador

local closeButton = Instance.new("TextButton")

closeButton.Name = "CloseButton"

closeButton.Text = "Cerrar Menú"

closeButton.Size = UDim2.new(0, 180, 0, 50)

closeButton.Position = UDim2.new(0.5, -90, 0, 140)

closeButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)

closeButton.TextColor3 = Color3.new(1, 1, 1)

closeButton.Parent = menuFrame

-- Conectar la función de cerrar el menú y restablecer los ajustes al evento Activated del botón

closeButton.Activated:Connect(function()

    -- Restablecer la colisión del jugador con todos los objetos

    enableCollisionWithAll()



    -- Eliminar el menú flotante

    floatingMenu:Destroy()

end)

