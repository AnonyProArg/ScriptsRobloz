-- Obtener el personaje y su Humanoid
local character = game:GetService("Players").LocalPlayer.Character
local humanoid = character:WaitForChild("Humanoid")

-- Función para mover al personaje a una posición
local function walkToPosition(position)
    humanoid:MoveTo(position)
end

-- Bucle infinito para mover al personaje
while true do
    walkToPosition(Vector3.new(806.736, 10.1994, -318.83))
    wait(1)
end
