-- Crear el ScreenGUI
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui
workspace.CurrentCamera.CameraType = Enum.CameraType.Fixed

-- Crear los botones
local button1 = Instance.new("TextButton")
button1.Name = "Button1"
button1.Text = "1"
button1.Size = UDim2.new(0, 100, 0, 50)
button1.Position = UDim2.new(0.5, -150, 0.5, -25)
button1.Parent = gui

local button2 = Instance.new("TextButton")
button2.Name = "Button2"
button2.Text = "2"
button2.Size = UDim2.new(0, 100, 0, 50)
button2.Position = UDim2.new(0.5, -50, 0.5, -25)
button2.Parent = gui

local button3 = Instance.new("TextButton")
button3.Name = "Button3"
button3.Text = "3"
button3.Size = UDim2.new(0, 100, 0, 50)
button3.Position = UDim2.new(0.5, 50, 0.5, -25)
button3.Parent = gui

-- Funciones para ejecutar los scripts y destruir el UI
local function executeScript(scriptUrl)
    loadstring(game:HttpGet(scriptUrl))()
end

local function destroyUI()
    gui:Destroy()
end

-- Conectar los eventos de clic a las funciones correspondientes
button1.MouseButton1Click:Connect(function()
    executeScript("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pasteler%C3%ADa/Cafe1.lua")
    destroyUI()
end)

button2.MouseButton1Click:Connect(function()
    executeScript("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pasteler%C3%ADa/Cafe2.lua")
    destroyUI()
end)

button3.MouseButton1Click:Connect(function()
    executeScript("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pasteler%C3%ADa/Cafe3.lua")
    destroyUI()
end)
