
-- Crear un ScreenGUI
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

-- Crear los botones y asignarles nombres
local buttonCount = 6

for i = 1, buttonCount do
    local companyName = "Company " .. i
    
    local button = Instance.new("TextButton")
    button.Name = companyName
    button.Text = companyName
    button.Position = UDim2.new(0, 10, 0, (i-1) * 30)
    button.Size = UDim2.new(0, 100, 0, 20)
    button.Parent = screenGui
    
    -- Función ejecutada al hacer clic en el botón
    button.MouseButton1Click:Connect(function()
        -- Obtener el directorio de botones
        local directorio = game.Workspace.Tycoon.Tycoons[companyName].Buttons
        
        -- Obtener la posición del pie izquierdo del jugador
        local jugador = game.Players.LocalPlayer
        local character = jugador.Character
        local pieIzquierdo = character:WaitForChild("LeftFoot")
        local nuevaPosicion = pieIzquierdo.Position
        
        -- Actualizar la posición del objeto "Head" para cada botón en el directorio
        for _, boton in pairs(directorio:GetChildren()) do
            local head = boton.Head
            head.Position = nuevaPosicion
        end
        
        -- Destruir el ScreenGui
        screenGui:Destroy()
    end)
end
