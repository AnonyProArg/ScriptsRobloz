-- Crear la ScreenGUI
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
workspace.CurrentCamera.CameraType = Enum.CameraType.Fixed

-- Crear una tabla con los nombres de las compañías
local companies = {
    "Company 1",
    "Company 2",
    "Company 3",
    "Company 4",
    "Company 5",
    "Company 6"
}

-- Variables para definir el diseño de los cuadros
local labelWidth = 120
local labelHeight = 20
local spacing = 5
local centerX = gui.AbsoluteSize.X / 2
local centerY = gui.AbsoluteSize.Y / 2

-- Crear objetos Label para cada compañía y mostrar el valor de Owner.Value
for i, companyName in ipairs(companies) do
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0, labelWidth, 0, labelHeight)
    label.Position = UDim2.new(0.5, -labelWidth / 2, 0.5, -labelHeight / 2 + (labelHeight + spacing) * (i - 1))
    label.AnchorPoint = Vector2.new(0.5, 0.5)
    label.FontSize = Enum.FontSize.Size14
    label.TextColor3 = Color3.new(1, 1, 1)
    label.BackgroundTransparency = 0.5
    label.BackgroundColor3 = Color3.new(0, 0, 0)
    label.Text = companyName
    label.Parent = gui

    local ownerObject = game.Workspace.Tycoon.Tycoons[companyName].Owner
    local value = ownerObject.Value
    local valueString = tostring(value)

    local valueLabel = Instance.new("TextLabel")
    valueLabel.Size = UDim2.new(0, labelWidth, 0, labelHeight)
    valueLabel.Position = UDim2.new(0.5, labelWidth / 2 + spacing, 0.5, -labelHeight / 2 + (labelHeight + spacing) * (i - 1))
    valueLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    valueLabel.FontSize = Enum.FontSize.Size14
    valueLabel.TextColor3 = Color3.new(1, 1, 1)
    valueLabel.BackgroundTransparency = 0.5
    valueLabel.BackgroundColor3 = Color3.new(0, 0, 0)
    valueLabel.Text = valueString
    valueLabel.Parent = gui

    -- Desvanecer y eliminar los cuadros después de 10 segundos
    wait(1)
    label:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1, true)
    valueLabel:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1, true)
    wait(1)
    label:Destroy()
    valueLabel:Destroy()
end

-- Obtener el jugador y su posición
local jugador = game.Players.LocalPlayer
local posicion = jugador.Character.HumanoidRootPart.Position

-- Calcular la posición central de la plataforma
local mitadX = math.floor(posicion.X)
local mitadZ = math.floor(posicion.Z)
local mitadY = math.floor(posicion.Y) +1 -- Ajusta la altura de la plataforma a la altura del jugador + 1

-- Crear la plataforma en la posición central
local plataforma = Instance.new("Part")
plataforma.Size = Vector3.new(10, 3, 10)
plataforma.Position = Vector3.new(mitadX, mitadY, mitadZ)
plataforma.BrickColor = BrickColor.new("Bright blue") -- Cambia el color de la plataforma si lo deseas
plataforma.Anchored = true -- Asegura la plataforma en su posición
plataforma.Parent = workspace

-- Imprimir la posición de la plataforma en la consola
print("Plataforma generada en la posición: ", plataforma.Position)

-- Obtener el personaje del jugador local
local player = game.Players.LocalPlayer
local character = player.Character

-- Verificar si el personaje y su Humanoid existen
if character and character:FindFirstChild("Humanoid") then
    local humanoid = character.Humanoid

    while true do
        -- Cambiar el valor de Sit
        humanoid.Sit = not humanoid.Sit

        -- Esperar 2 segundos antes de cambiar nuevamente
        wait(5)
    end
end
