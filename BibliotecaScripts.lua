-- Opciones personalizadas (nombre del botón y script a ejecutar)

local opciones = {

    {nombre = "Volar", script = function()

        -- Código para ejecutar cuando se selecciona la opción "Volar"

        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Pro69Yes/sussy-Script/main/SecuredFlyGuiv3.lua"))()



            

    end},

    {nombre = "Dex Modificador", script = function()

        -- Código para ejecutar cuando se selecciona la opción "Dex Modificador"

        loadstring(game:HttpGetAsync("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"

        



    end},

    {nombre = "Opción 3", script = function()

        -- Inserta aquí tu propio script para la Opción 3

        print("Ejecutando script de la Opción 3")

    end}

}

-- Crear un objeto ScreenGui

local gui = Instance.new("ScreenGui")

gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Crear un objeto Frame para el menú flotante

local frame = Instance.new("Frame")

frame.Size = UDim2.new(0, 200, 0, 100)

frame.Position = UDim2.new(0.5, -100, 0.5, -50)

frame.BackgroundColor3 = Color3.new(1, 1, 1)

frame.BorderSizePixel = 2

frame.Parent = gui

-- Crear una lista de botones basados en las opciones

local buttonY = 0.2

local buttonHeight = 30

-- Tamaño máximo del contenido para habilitar la barra de desplazamiento

local contenidoHeight = (#opciones * (buttonHeight + 0.1)) - 0.1

local maxFrameHeight = 100

local scrollEnabled = contenidoHeight > maxFrameHeight

-- Crear un objeto ScrollingFrame para contener los botones

local scrollFrame = Instance.new("ScrollingFrame")

scrollFrame.Size = UDim2.new(1, -20, 1, -60)

scrollFrame.Position = UDim2.new(0, 10, 0, 10)

scrollFrame.CanvasSize = UDim2.new(0, 0, 0, contenidoHeight)

scrollFrame.ScrollBarThickness = scrollEnabled and 10 or 0

scrollFrame.Parent = frame

for i, opcion in ipairs(opciones) do

    local button = Instance.new("TextButton")

    button.Size = UDim2.new(1, 0, 0, buttonHeight)

    button.Position = UDim2.new(0, 0, 0, buttonY)

    button.BackgroundColor3 = Color3.new(0, 0.7, 0)

    button.TextColor3 = Color3.new(1, 1, 1)

    button.Text = opcion.nombre

    button.Parent = scrollFrame

    -- Función para ejecutar el script de la opción seleccionada

    local function ejecutarScript()

        opcion.script()

        frame:Destroy()  -- Cerrar el menú flotante

    end

    -- Conectar la función al evento MouseButton1Click del botón

    button.MouseButton1Click:Connect(ejecutarScript)

    buttonY = buttonY + (buttonHeight + 0.1)  -- Espaciado entre botones

end

-- Resto del código...

