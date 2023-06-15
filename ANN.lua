local player = game.Players.LocalPlayer

-- Crear la carpeta Folder si no existe
local folder = game.Workspace:FindFirstChild("Folder")
if not folder then
    folder = Instance.new("Folder")
    folder.Name = "Folder"
    folder.Parent = game.Workspace
end

-- Crear el RankBoard si no existe
local rankBoard = folder:FindFirstChild("RankBoard")
if not rankBoard then
    rankBoard = Instance.new("Part")
    rankBoard.Name = "RankBoard"
    rankBoard.Size = Vector3.new(50, 50, 5)
    rankBoard.Anchored = true
    rankBoard.CanCollide = false
    rankBoard.Transparency = 1
    rankBoard.Parent = folder
end

-- Crear SurfaceGui si no existe
local surfaceGui = rankBoard:FindFirstChild("SurfaceGui")
if not surfaceGui then
    surfaceGui = Instance.new("SurfaceGui")
    surfaceGui.Name = "SurfaceGui"
    surfaceGui.Parent = rankBoard
end

-- Crear ScrollingFrame si no existe
local scrollingFrame = surfaceGui:FindFirstChild("ScrollingFrame")
if not scrollingFrame then
    scrollingFrame = Instance.new("ScrollingFrame")
    scrollingFrame.Name = "ScrollingFrame"
    scrollingFrame.Size = UDim2.new(1, -20, 1, -20)
    scrollingFrame.Position = UDim2.new(0, 10, 0, 10)
    scrollingFrame.BackgroundTransparency = 1
    scrollingFrame.ScrollBarThickness = 10
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    scrollingFrame.Parent = surfaceGui
end

local function createNewLabel(frameParent, text)
    local newFrame = Instance.new("Frame")
    newFrame.Size = UDim2.new(1, 0, 0, 100)
    newFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    newFrame.BorderSizePixel = 0
    newFrame.Name = "Frame"
    newFrame.Parent = frameParent

    local userNameLabel = Instance.new("TextLabel")
    userNameLabel.Size = UDim2.new(1, -20, 1, -20)
    userNameLabel.Position = UDim2.new(0, 10, 0, 10)
    userNameLabel.BackgroundColor3 = Color3.new(0, 0, 0)
    userNameLabel.BackgroundTransparency = 0
    userNameLabel.BorderSizePixel = 0
    userNameLabel.Name = "UserName"
    userNameLabel.Parent = newFrame
    userNameLabel.Text = text
    userNameLabel.TextColor3 = Color3.new(1, 1, 1)
    userNameLabel.TextScaled = false
    userNameLabel.TextWrapped = true
    userNameLabel.TextXAlignment = Enum.TextXAlignment.Center
    userNameLabel.TextYAlignment = Enum.TextYAlignment.Center
    userNameLabel.TextSize = 10

    return newFrame, userNameLabel
end

local fullText = "¡Querida Esposa❤️Ann! Hoy es un día especial, el día en que celebramos tu cumpleaños. Aunque la distancia física nos separa, quiero que sepas que mi amor por ti trasciende las fronteras y atraviesa océanos. Cada día a tu lado es un regalo, y aunque desearía poder estar ahí en persona para celebrar contigo, quiero enviarte mis más cálidas felicitaciones y buenos deseos en este día tan especial. Espero que tu cumpleaños esté lleno de alegría, amor y todas las cosas maravillosas que mereces. Recuerdo con cariño todos los momentos que hemos compartido y todas las experiencias que hemos vivido juntos. Me has enseñado el verdadero significado del amor y la paciencia, y valoro cada instante que hemos pasado juntos, sin importar la distancia. En este día, quiero recordarte lo especial que eres para mí. Tu sonrisa ilumina mi vida y tus palabras me inspiran cada día. Eres mi apoyo incondicional y mi compañera de vida, incluso a pesar de la distancia. Que este nuevo año de vida esté lleno de éxitos, felicidad y amor. Que se cumplan tus sueños y que logres todo aquello que te propongas. Siempre estaré aquí para apoyarte y celebrar tus logros, sin importar la distancia que nos separe. Feliz cumpleaños, mi amor. Te envío un abrazo fuerte y muchos besos a través de estas palabras. Espero que pronto podamos estar juntos para celebrar en persona. Hasta entonces, recuerda que mi amor por ti es más grande que cualquier distancia. Con todo mi amor, Su Esposo"

local segmentLength = 90
local segments = {}

for i = 1, #fullText, segmentLength do
    local segment = fullText:sub(i, i + segmentLength - 1)
    table.insert(segments, segment)
end

-- Mover el RankBoard frente al jugador
rankBoard.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, -5)

-- Eliminar todos los Frames existentes en el ScrollingFrame
for _, frame in ipairs(scrollingFrame:GetChildren()) do
    if frame:IsA("Frame") then
        frame:Destroy()
    end
end

-- Crear y posicionar los nuevos TextLabel
for i, segment in ipairs(segments) do
    local newFrame, userNameLabel = createNewLabel(scrollingFrame, segment)
    newFrame.Size = UDim2.new(1, -20, 0, userNameLabel.TextBounds.Y)
    newFrame.Position = UDim2.new(0, 10, 0, (i - 1) * userNameLabel.TextBounds.Y)
    newFrame.Parent = scrollingFrame
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, i * userNameLabel.TextBounds.Y)
end

-- Mostrar la imagen en la parte trasera del RankBoard
local decal = Instance.new("Decal")
decal.Texture = "rbxassetid://190181879"
decal.Face = Enum.NormalId.Back
decal.Parent = rankBoard

-- Habilitar el arrastre del RankBoard
local mouse = player:GetMouse()
local dragging = false
local startMousePos = nil
local startRankBoardPos = nil

mouse.Button1Down:Connect(function()
    if not dragging then
        startMousePos = mouse.X
        startRankBoardPos = rankBoard.Position
        dragging = true
    end
end)

mouse.Button1Up:Connect(function()
    dragging = false
end)

mouse.Move:Connect(function()
    if dragging then
        local delta = mouse.X - startMousePos
        rankBoard.Position = UDim2.new(
            0, startRankBoardPos.X.Offset + delta,
            0, startRankBoardPos.Y.Offset
        )
    end
end)
