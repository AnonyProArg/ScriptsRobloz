-- Crear un ScreenGui para el menú
local gui = Instance.new("ScreenGui")
gui.Name = "MenuUI"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Crear un Frame para contener los elementos del menú
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = gui

-- Crear un TextButton para el botón "AutoRecolect"
local button = Instance.new("TextButton")
button.Text = "AutoRecolect"
button.Size = UDim2.new(1, -10, 0, 40)
button.Position = UDim2.new(0, 5, 0, 5)
button.Parent = frame

-- Función para ejecutar cuando se hace clic en el botón
local function onButtonClicked()
    local donutsDirectory = game.Workspace:FindFirstChild("Donuts")
    if donutsDirectory then
        donutsDirectory:Destroy()
    end
    
    while true do
        wait()
        game:GetService("ReplicatedStorage").Remotes.RemoteEvent:FireServer("claimDonut",{"Strawberry Donut",{}})
    end
end

-- Conectar la función al evento de clic del botón
button.MouseButton1Click:Connect(onButtonClicked)

