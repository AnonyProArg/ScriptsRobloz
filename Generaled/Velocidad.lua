local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local userInputService = game:GetService("UserInputService")

local function ShowTextBox()
    -- Crear una instancia de la clase TextBox
    local textBox = Instance.new("TextBox")
    textBox.Size = UDim2.new(0, 200, 0, 30) -- Establecer el tamaño del cuadro de texto
    textBox.Position = UDim2.new(0.5, -100, 0.5, -15) -- Establecer la posición del cuadro de texto
    textBox.AnchorPoint = Vector2.new(0.5, 0.5) -- Establecer el punto de anclaje en el centro
    textBox.FontSize = Enum.FontSize.Size14 -- Establecer el tamaño de fuente
    textBox.ClearTextOnFocus = true -- Borrar el texto cuando se hace clic en el cuadro de texto
    textBox.PlaceholderText = "Ingresa un valor" -- Establecer el texto de marcador de posición
    textBox.Parent = Player.PlayerGui

    -- Función para cambiar la velocidad del personaje
    local function changeSpeed()
        local value = tonumber(textBox.Text)
        if value then
            Humanoid.WalkSpeed = value
        end
        textBox:Destroy()
    end

    -- Enfocar el cuadro de texto
    userInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
    userInputService.MouseIconEnabled = false
    textBox:CaptureFocus()
    userInputService.MouseIconEnabled = true
    userInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None

    -- Conectar el evento FocusLost para cambiar la velocidad
    textBox.FocusLost:Connect(changeSpeed)
end

-- Llamar a la función ShowTextBox() para iniciar la captura de entrada del usuario
ShowTextBox()
