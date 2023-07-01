local imagenID = "13903934145" -- ID de la imagen a mostrar al inicio

-- Crear la GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Interfaz Futurista"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Crear el fondo
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.Parent = ScreenGui

-- Crear la imagen inicial en el fondo
local imagen = Instance.new("ImageLabel")
imagen.Size = UDim2.new(1, 0, 1, 0)
imagen.Position = UDim2.new(0.5, -250, 0.5, -250) -- Centrar la imagen
imagen.Image = "rbxassetid://" .. imagenID
imagen.BackgroundTransparency = 1
imagen.Parent = frame

-- Esperar 3 segundos antes de continuar
wait(3)

-- Eliminar la imagen inicial
imagen:Destroy()

-- Estilos de botón
local buttonStyle = {
    Font = Enum.Font.SourceSansBold,
    TextSize = 24,
    TextColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
    BackgroundTransparency = 0.5,
    Size = UDim2.new(0.2, 0, 0.1, 0)
}

-- Crear los botones
for i = 1, 6 do
    local boton = Instance.new("TextButton")
    boton.Name = "Botón Posición " .. i
    boton.Text = "Posición " .. i

    if i <= 3 then
        -- Posiciones del 1 al 3 en la parte izquierda (de abajo hacia arriba)
        boton.Position = UDim2.new(0, 20, 0.7 - (0.3 * (i - 1)), 0)
    else
        -- Posiciones del 6 al 4 en la parte derecha (de arriba hacia abajo)
        boton.Position = UDim2.new(0.8, -20, 0.1 + (0.3 * (i - 4)), 0)
    end

    boton.Parent = frame
    for property, value in pairs(buttonStyle) do
        boton[property] = value
    end

    -- Función para ejecutar el código correspondiente
    local function ejecutarCodigo()
        local codigoURL = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pasteler%C3%ADa/Posicion" .. i .. ".lua"
        local codigo = game:HttpGet(codigoURL)

        -- Ejecutar el código
        loadstring(codigo)()
        ScreenGui:Destroy()
    end

    -- Conectar la función al evento Click
    boton.MouseButton1Click:Connect(ejecutarCodigo)
end

-- Crear la función spamThread
local function spamThread()
    local selectedNumber = 4 -- Número seleccionado por defecto

    while wait(0.1) do
        workspace.Plots["Plot" .. selectedNumber].Shelf.Info:FireServer()
    end
end

-- Ejecutar la función spamThread
spawn(spamThread)

