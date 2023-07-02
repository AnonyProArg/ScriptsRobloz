local platformSize = Vector3.new(1000, 10, 1000) -- Tamaño de la plataforma

-- Obtener el jugador local
local player = game.Players.LocalPlayer

-- Esperar a que el personaje del jugador esté disponible
local character = player.Character or player.CharacterAdded:Wait()

-- Esperar a que el punto de inicio del personaje esté disponible
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Calcular la posición de la plataforma debajo del jugador
local platformPosition = humanoidRootPart.Position - Vector3.new(0, 40, 0)

-- Crear la plataforma
local platform = Instance.new("Part")
platform.Size = platformSize
platform.Position = platformPosition
platform.BrickColor = BrickColor.new("Medium stone grey") -- Color de la plataforma (puedes cambiarlo)
platform.Anchored = true
platform.CanCollide = true
platform.Parent = workspace
