-- Crear una pantalla GUI flotante

local gui = Instance.new("ScreenGui")

gui.Parent = game.Players.LocalPlayer.PlayerGui

-- Crear un marco flotante

local frame = Instance.new("Frame")

frame.Position = UDim2.new(0.5, -75, 0.5, -50)

frame.Size = UDim2.new(0, 150, 0, 100)

frame.BackgroundTransparency = 0.5

frame.BackgroundColor3 = Color3.new(0, 0, 0)

frame.Parent = gui

-- Crear un botón "Passes"

local button = Instance.new("TextButton")

button.Position = UDim2.new(0.5, -50, 0.5, -25)

button.Size = UDim2.new(0, 100, 0, 50)

button.Text = "Passes"

button.Parent = frame

-- Función para cambiar los valores a "true" y ocultar el botón

local function changePasses()

    local gamePasses = game.Players.LocalPlayer.GamePasses:GetChildren()

    for i = 1, #gamePasses do

        if gamePasses[i]:IsA("BoolValue") then

            gamePasses[i].Value = true

        end

    end

    -- Ocultar el botón al hacer clic en él

    button.Visible = false
    frame.Visible = false

end

-- Conectar la función al evento de clic del botón

button.MouseButton1Click:Connect(changePasses)
