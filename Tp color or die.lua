-- Variables
local buttonCount = 0
local buttonMaxCount = 28

-- Ubicaciones de teletransporte
local teleportLocations = {
    Vector3.new(193.882, 4.07671, 30.1795), 
   Vector3.new(228.881, 4.07671, 18.9601),
    Vector3.new(140.023, 4.07671, 53.099),
    Vector3.new(820.435, 70.3849, -623.497), 
    Vector3.new(251.444, 4.07671, 40.6302),  
    Vector3.new(196.197, 4.07671, -35.2439), 
     Vector3.new(276.308, 4.07671, 41.9424), 
    Vector3.new(202.892, 4.07671, -34.4711), 
    Vector3.new(710.956, 152.94, 376.643), 
    Vector3.new(327.356, 4.07671, 71.0467),  
    Vector3.new(323.364, 4.07671, 88.3661), 
    Vector3.new(358.874, 4.07671, 102.336),
    Vector3.new(829.807, 70.3849, -594.815),  
    Vector3.new(868.133, 70.3817, -597.438), 
    Vector3.new(319.931, 4.07671, 92.3539),   
    Vector3.new(320.05, 4.07671, 113.817),  
    Vector3.new(289.211, 4.07671, -106.877), 
    Vector3.new(252.462, 4.07671, -126.309), 
    Vector3.new(191.792, 4.07671, -57.2546),  
    Vector3.new(852.039, 43.3114, -71.2249), 
    Vector3.new(191.432, 4.07671, -71.2241),     
    Vector3.new(212.098, 4.07642, -131.225),  
    Vector3.new(176.92, 29.0767, -107.791), 
    Vector3.new(243.696, 29.0258, -65.276), 
    Vector3.new(247.567, 29.0258, -24.2008),  
}

-- Crear GUI
local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui
local gui = Instance.new("ScreenGui")
gui.Name = "TeleportGui"
gui.Parent = playerGui

-- Crear botón TP
local button = Instance.new("TextButton")
button.Name = "TPButton"
button.Text = "TP"
button.Size = UDim2.new(0, 100, 0, 50)
button.Position = UDim2.new(0.5, -50, 0.5, -25)
button.Parent = gui

-- Función de teletransporte
local function teleportToLocation(location)
    player.Character:MoveTo(location)
end

-- Función de clic en el botón
local function onButtonClicked()
    buttonCount = buttonCount + 1
    if buttonCount <= buttonMaxCount then
        local currentIndex = math.min(buttonCount, #teleportLocations)
        teleportToLocation(teleportLocations[currentIndex])
    end
    
    if buttonCount >= buttonMaxCount then
        -- Eliminar el botón TP después de haberlo presionado 13 veces
        button:Destroy()
    end
end

-- Conectar la función de clic con el botón
button.MouseButton1Click:Connect(onButtonClicked)

