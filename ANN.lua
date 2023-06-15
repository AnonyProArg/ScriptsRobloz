local player = game.Players.LocalPlayer
local part = game.Workspace.Folder.RankBoard
local framePath = game.Workspace.Folder.RankBoard.SurfaceGui.ScrollingFrame

-- Mover el Part frente al jugador
part.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, -5)

-- Eliminar todos los Frames existentes
for _, frame in ipairs(framePath:GetChildren()) do
    if frame:IsA("Frame") then
        frame:Destroy()
    end
end

local textLabel = game.Workspace.Folder.RankBoard.SurfaceGui.TextLabel
textLabel.Text = "TOP SUSCRIPTORES"
textLabel.TextColor3 = Color3.new(1, 0, 0)
textLabel.TextScaled = false
textLabel.TextSize = 38

local function createNewLabel(frameParent, text)
    local newFrame = Instance.new("Frame")
    newFrame.Size = UDim2.new(1, 0, 0, 100)
    newFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    newFrame.BorderSizePixel = 0
    newFrame.Name = "Frame"
    newFrame.Parent = frameParent

    local userNameLabel = Instance.new("TextLabel")
    userNameLabel.Size = UDim2.new(1, 0, 1, 0)
    userNameLabel.BackgroundColor3 = Color3.new(0, 0, 0)
    userNameLabel.BackgroundTransparency = 0
    userNameLabel.BorderSizePixel = 0
    userNameLabel.Name = "UserName"
    userNameLabel.Parent = newFrame
    userNameLabel.Text = text
    userNameLabel.TextColor3 = Color3.new(1, 1, 1)
    userNameLabel.TextScaled = false
    userNameLabel.TextWrapped = true
    userNameLabel.TextXAlignment = Enum.TextXAlignment.Left
    userNameLabel.TextYAlignment = Enum.TextYAlignment.Top
    userNameLabel.TextSize = 20

    return newFrame
end

local fullText = "¡Querida Esposa❤️Ann! Hoy es un día especial, el día en que celebramos tu cumpleaños. Aunque la distancia física nos separa, quiero que sepas que mi amor por ti trasciende las fronteras y atraviesa océanos. Cada día a tu lado es un regalo, y aunque desearía poder estar ahí en persona para celebrar contigo, quiero enviarte mis más cálidas felicitaciones y buenos deseos en este día tan especial. Espero que tu cumpleaños esté lleno de alegría, amor y todas las cosas maravillosas que mereces. Recuerdo con cariño todos los momentos que hemos compartido y todas las experiencias que hemos vivido juntos. Me has enseñado el verdadero significado del amor y la paciencia, y valoro cada instante que hemos pasado juntos, sin importar la distancia. En este día, quiero recordarte lo especial que eres para mí. Tu sonrisa ilumina mi vida y tus palabras me inspiran cada día. Eres mi apoyo incondicional y mi compañera de vida, incluso a pesar de la distancia. Que este nuevo año de vida esté lleno de éxitos, felicidad y amor. Que se cumplan tus sueños y que logres todo aquello que te propongas. Siempre estaré aquí para apoyarte y celebrar tus logros, sin importar la distancia que nos separe. Feliz cumpleaños, mi amor. Te envío un abrazo fuerte y muchos besos a través de estas palabras. Espero que pronto podamos estar juntos para celebrar en persona. Hasta entonces, recuerda que mi amor por ti es más grande que cualquier distancia. Con todo mi amor, Su Esposo"

local segmentLength = 200
local segments = {}

for i = 1, #fullText, segmentLength do
    local segment = fullText:sub(i, i + segmentLength - 1)
    table.insert(segments, segment)
end

for i, segment in ipairs(segments) do
    local newFrame = createNewLabel(framePath, segment)
    newFrame.Position = UDim2.new(0, 0, 0, (i - 1) * 100)
    framePath.CanvasSize = UDim2.new(0, 0, 0, i * 100)
end
