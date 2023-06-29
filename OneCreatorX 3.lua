
-- Obtener el nombre del jugador
local playerName = game.Players.LocalPlayer.Name

-- Crear una nueva ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyScreenGUI"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

-- Crear el cuadro de script
local frame = Instance.new("Frame")
frame.Name = "ScriptBox"
frame.Size = UDim2.new(0.9, 0, 0.9, 0)
frame.Position = UDim2.new(0.05, 0, 0.05, 0)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Parent = screenGui

-- Crear el texto "OneCreatorX" en el fondo del cuadro
local backgroundText = Instance.new("TextLabel")
backgroundText.Name = "BackgroundText"
backgroundText.Size = UDim2.new(1, 0, 1, 0)
backgroundText.Position = UDim2.new(0, 0, 0, 0)
backgroundText.BackgroundTransparency = 1
backgroundText.Text = "OneCreatorX"
backgroundText.TextColor3 = Color3.new(1, 1, 1)
backgroundText.Font = Enum.Font.SourceSansBold
backgroundText.TextSize = 48
backgroundText.Parent = frame

-- Crear el botón de minimizar
local minimizeButton = Instance.new("TextButton")
minimizeButton.Name = "MinimizeButton"
minimizeButton.Size = UDim2.new(0, 50, 0, 50)
minimizeButton.Position = UDim2.new(1, -50, 0, 0)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.BackgroundColor3 = Color3.new(0, 0, 0)
minimizeButton.BorderSizePixel = 0
minimizeButton.Font = Enum.Font.SourceSans
minimizeButton.TextSize = 24
minimizeButton.Parent = frame

-- Función para alternar la visibilidad de la interfaz
local function toggleInterface()
    if frame.Visible then
        frame.Visible = false
        minimizeButton.Text = "+"
    else
        frame.Visible = true
        minimizeButton.Text = "-"
    end
end

-- Evento de clic del botón de minimizar
minimizeButton.MouseButton1Click:Connect(toggleInterface)

-- Crear el botón de maximizar
local maximizeButton = Instance.new("TextButton")
maximizeButton.Name = "MaximizeButton"
maximizeButton.Size = UDim2.new(0, 50, 0, 50)
maximizeButton.Position = UDim2.new(1, -100, 0, 0)
maximizeButton.Text = "^"
maximizeButton.TextColor3 = Color3.new(1, 1, 1)
maximizeButton.BackgroundColor3 = Color3.new(0, 0, 0)
maximizeButton.BorderSizePixel = 0
maximizeButton.Font = Enum.Font.SourceSans
maximizeButton.TextSize = 24
maximizeButton.Draggable = true
maximizeButton.Parent = frame

-- Evento de clic del botón de maximizar
maximizeButton.MouseButton1Click:Connect(toggleInterface)

-- Obtener la lista de archivos desde el archivo de enlaces
local linkURL = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Links.lua"
local response = game:HttpGetAsync(linkURL)
local linkList = {}

for name, url

 in string.gmatch(response, "([^:\n]+):([^:\n]+)") do
    linkList[name] = url
end

-- Variables para el desplazamiento y la búsqueda
local scrollPosition = 0
local searchInput = ""

-- Función para generar los botones en función del desplazamiento y la búsqueda
local function generateButtons()
    -- Limpiar los botones existentes
    for _, button in ipairs(frame:GetChildren()) do
        if button:IsA("TextButton") then
            button:Destroy()
        end
    end

    -- Filtrar la lista de archivos en función de la búsqueda
    local filteredList = {}
    for name, url in pairs(linkList) do
        if name:lower():find(searchInput:lower()) then
            table.insert(filteredList, { name = name, url = url })
        end
    end

    -- Generar botones para cada archivo en el cuadro de script
    local buttonCount = 0
    local maxButtons = math.floor(frame.AbsoluteSize.Y / 60) -- Cantidad máxima de botones visibles en la interfaz
    for i = 1 + scrollPosition, #filteredList do
        local linkData = filteredList[i]
        local name = linkData.name
        local url = linkData.url

        -- Crear el botón
        local button = Instance.new("TextButton")
        button.Name = name
        button.Size = UDim2.new(0.9, 0, 0, 50)
        button.Position = UDim2.new(0.05, 0, 0, buttonCount * 60)
        button.Text = name
        button.TextColor3 = Color3.new(1, 1, 1)
        button.BackgroundColor3 = Color3.new(0, 0, 0)
        button.BorderSizePixel = 0
        button.Font = Enum.Font.SourceSans
        button.TextSize = 20
        button.Parent = frame

        -- Evento de clic del botón
        button.MouseButton1Click:Connect(function()
            print("Se ha hecho clic en el botón " .. name)
            -- Ejecutar el código asociado al archivo
            local scriptCode = "loadstring(game:HttpGet('" .. url .. "'))()"
            loadstring(scriptCode)()
            toggleInterface() -- Minimizar la interfaz después de ejecutar el script
        end)

        buttonCount = buttonCount + 1

        -- Salir del bucle si se alcanza la cantidad máxima de botones visibles
        if buttonCount >= maxButtons then
            break
        end
    end
end

-- Función para actualizar la posición de desplazamiento
local function updateScrollPosition(delta)
    scrollPosition = math.max(0, scrollPosition + delta)
    generateButtons()
end

-- Evento de rueda del mouse para desplazarse hacia arriba o hacia abajo
frame.MouseWheelForward:Connect(function()
    updateScrollPosition(-1)
end)

frame.MouseWheelBackward:Connect(function()
    updateScrollPosition(1)
end)

-- Función para actualizar la búsqueda y generar los botones correspondientes
local function updateSearch(input)
    searchInput = input
    generateButtons()
end

-- Crear la barra de búsqueda
local searchBox = Instance.new("TextBox")
searchBox.Name = "SearchBox"
searchBox.Size = UDim2.new(0.9, 0, 0, 30)
searchBox.Position = UDim2.new(0.05, 0, 0.95

, -30)
searchBox.Text = ""
searchBox.TextColor3 = Color3.new(0, 0, 0)
searchBox.BackgroundColor3 = Color3.new(1, 1, 1)
searchBox.BorderSizePixel = 0
searchBox.Font = Enum.Font.SourceSans
searchBox.TextSize = 18
searchBox.PlaceholderText = "Search"
searchBox.Parent = frame

-- Evento de cambio de texto en la barra de búsqueda
searchBox.Changed:Connect(function(property)
    if property == "Text" then
        updateSearch(searchBox.Text)
    end
end)

-- Generar los botones iniciales
generateButtons()