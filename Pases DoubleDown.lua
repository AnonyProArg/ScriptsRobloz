-- Obtén el objeto "Players" y el jugador local
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Función recursiva para cambiar los valores a "true" en los archivos
local function changeValues(obj)
    for _, child in ipairs(obj:GetChildren()) do
        -- Verifica si el hijo es una carpeta llamada "Gamepasses"
        if child:IsA("Folder") and child.Name == "Gamepasses" then
            -- Recorre los hijos de la carpeta "Gamepasses"
            for _, file in ipairs(child:GetChildren()) do
                -- Cambia el valor a "true" si es un archivo
                if file:IsA("Instance") then
                    file.Value = true
                end
            end
        end
        
        -- Llama a la función recursivamente si es una carpeta
        if child:IsA("Folder") then
            changeValues(child)
        end
    end
end

-- Llama a la función para cambiar los valores a "true" en los archivos de la carpeta "Gamepasses"
changeValues(player)
