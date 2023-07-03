-- Crear una biblioteca de interfaz optimizada con opciones adicionales

local function CrearInterfaz()
    -- Configuración de la interfaz
    local pantalla = Instance.new("ScreenGui")
    local marco = Instance.new("Frame")
    local titulo = Instance.new("TextLabel")
    local botonCerrar = Instance.new("TextButton")
    local botonMinimizar = Instance.new("TextButton")
    local botonMaximizar = Instance.new("TextButton")
    local draggable = Instance.new("Frame")

    -- Configuración del marco
    marco.Name = "Marco"
    marco.BackgroundColor3 = Color3.new(0, 0, 0)
    marco.BackgroundTransparency = 0.5
    marco.Size = UDim2.new(0, 200, 0, 200)
    marco.Position = UDim2.new(0.5, -100, 0.5, -100)
    marco.BorderSizePixel = 0

    -- Configuración del título
    titulo.Name = "Título"
    titulo.BackgroundColor3 = Color3.new(1, 1, 1)
    titulo.BackgroundTransparency = 1
    titulo.Size = UDim2.new(1, 0, 0, 30)
    titulo.Position = UDim2.new(0, 0, 0, 0)
    titulo.Font = Enum.Font.SourceSansBold
    titulo.Text = "Interfaz de Créditos"
    titulo.TextColor3 = Color3.new(1, 1, 1)
    titulo.TextSize = 18
    titulo.Parent = marco

    -- Configuración del botón de cerrar
    botonCerrar.Name = "BotonCerrar"
    botonCerrar.BackgroundColor3 = Color3.new(0, 0, 0)
    botonCerrar.BackgroundTransparency = 0.5
    botonCerrar.Size = UDim2.new(0, 20, 0, 20)
    botonCerrar.Position = UDim2.new(1, -25, 0, 5)
    botonCerrar.Font = Enum.Font.SourceSans
    botonCerrar.Text = "X"
    botonCerrar.TextColor3 = Color3.new(1, 1, 1)
    botonCerrar.TextSize = 16
    botonCerrar.Parent = marco

    -- Configuración del botón de minimizar
    botonMinimizar.Name = "BotonMinimizar"
    botonMinimizar.BackgroundColor3 = Color3.new(0, 0, 0)
    botonMinimizar.BackgroundTransparency = 0.5
    botonMinimizar.Size = UDim2.new(0, 20, 0, 20)
    botonMinimizar.Position = UDim2.new(1, -50, 0, 5)
    botonMinimizar.Font = Enum.Font.SourceSans
    botonMinimizar.Text = "-"
    botonMinimizar.TextColor3 = Color3.new(1, 1, 1)
    botonMinimizar.TextSize = 16
    botonMinimizar.Parent = marco

    -- Configuración del botón de maximizar
    botonMaximizar.Name = "BotonMaximizar"
    botonMaximizar.BackgroundColor3 = Color3.new(0, 0, 0)
    botonMaximizar.BackgroundTransparency = 0.5
    botonMaximizar.Size = UDim2.new(0, 20, 0, 20)
    botonMaximizar.Position = UDim2.new(1, -75, 0, 5)
    botonMaximizar.Font = Enum.Font.SourceSans
    botonMaximizar.Text = "+"
    botonMaximizar.TextColor3 = Color3.new(1, 1, 1)
    botonMaximizar.TextSize = 16
    botonMaximizar.Parent = marco

    -- Configuración de la capacidad de mover la ventana
    draggable.Name = "Draggable"
    draggable.Active = true
    draggable.BackgroundColor3 = Color3.new(0, 0, 0)
    draggable.BackgroundTransparency = 0.5
    draggable.Position = UDim2.new(0, 0, 0, 0)
    draggable.Size = UDim2.new(1, 0, 0, 30)
    draggable.Parent = marco

    -- Agregar funcionalidad para mover la ventana
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        marco.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    draggable.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = marco.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    draggable.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    -- Asegurarse de que la interfaz sea visible
    pantalla.Name = "InterfazOneCreatorX"
    pantalla.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    return marco
end

-- Devolver la función que crea la interfaz
return CrearInterfaz

