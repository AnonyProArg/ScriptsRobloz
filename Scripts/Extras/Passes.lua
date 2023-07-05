local gamePassesPath = game.Players.LocalPlayer.GamePasses

local function changeValueToTrue(object)
    if object:IsA("ValueBase") then
        object.Value = true
    end
end

local function iterateAndChangeValue(folder)
    for _, child in ipairs(folder:GetChildren()) do
        changeValueToTrue(child)
        if child:IsA("Folder") then
            iterateAndChangeValue(child)
        end
    end
end

-- Cambiar los valores de "Value" a "true" en todos los archivos
if gamePassesPath:IsA("Folder") then
    iterateAndChangeValue(gamePassesPath)
else
    warn("gamePassesPath no es una carpeta válida")
end
