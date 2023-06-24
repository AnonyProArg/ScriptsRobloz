local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui
workspace.CurrentCamera.CameraType = Enum.CameraType.Fixed

-- Add button 1
local Button1 = Instance.new("TextButton")
Button1.Parent = gui
Button1.Position = UDim2.new(0, 40, 0, 10) -- Ajusta la posición del botón
Button1.Size = UDim2.new(0, 100, 0, 30) -- Ajusta el tamaño del botón
Button1.Text = "P1"
Button1.Activated:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe1.lua"))()
    destroyUI()
end)

-- Add button 2
local Button2 = Instance.new("TextButton")
Button2.Parent = gui
Button2.Position = UDim2.new(0, 40, 0, 50) -- Ajusta la posición del botón
Button2.Size = UDim2.new(0, 100, 0, 30) -- Ajusta el tamaño del botón
Button2.Text = "P2"
Button2.Activated:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe2.lua"))()
    destroyUI()
end)

-- Add button 3
local Button3 = Instance.new("TextButton")
Button3.Parent = gui
Button3.Position = UDim2.new(0, 40, 0, 90) -- Ajusta la posición del botón
Button3.Size = UDim2.new(0, 100, 0, 30) -- Ajusta el tamaño del botón
Button3.Text = "P3"
Button3.Activated:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe3.lua"))()
    destroyUI()
end)

-- Add button 4
local Button4 = Instance.new("TextButton")
Button4.Parent = gui
Button4.Position = UDim2.new(0, 40, 0, 130) -- Ajusta la posición del botón
Button4.Size = UDim2.new(0, 100, 0, 30) -- Ajusta el tamaño del botón
Button4.Text = "P4"
Button4.Activated:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe4.lua"))()
    destroyUI()
end)

-- Add button 5
local Button5 = Instance.new("TextButton")
Button5.Parent = gui
Button5.Position = UDim2.new(0, 40, 0, 170) -- Ajusta la posición del botón
Button5.Size = UDim2.new(0, 100, 0, 30) -- Ajusta el tamaño del botón
Button5.Text = "P5"
Button5.Activated:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe5.lua"))()
    destroyUI()
end)

-- Add button 6
local Button6 = Instance.new("TextButton")
Button6.Parent = gui
Button6.Position = UDim2.new(0, 40, 0, 210) -- Ajusta la posición del botón
Button6.Size = UDim2.new(0, 100, 0, 30) -- Ajusta el tamaño del botón
Button6.Text = "P6"
Button6.Activated:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe6.lua"))()
    destroyUI()
end)
