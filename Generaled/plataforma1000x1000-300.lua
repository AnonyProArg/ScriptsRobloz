local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

local platformSize = Vector3.new(1000, 10, 1000) -- Tamaño de la plataforma
local platformPosition = HumanoidRootPart.Position - Vector3.new(0, 40, 0) -- Posición de la plataforma

local platform = Instance.new("Part")
platform.Size = platformSize
platform.Position = platformPosition
platform.BrickColor = BrickColor.new("Medium stone grey") -- Color de la plataforma (puedes cambiarlo)
platform.Anchored = true
platform.CanCollide = true
platform.Parent = workspace

