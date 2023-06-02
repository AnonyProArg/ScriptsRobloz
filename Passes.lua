local gamePassesPath = game.Players.LocalPlayer.GamePasses -- Ruta de la ubicación de los archivos

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

-- Cambiar los valores de "value" a "true" en todos los archivos
iterateAndChangeValue(gamePassesPath)
