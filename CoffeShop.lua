-- Crear el ScreenGUI
local gui = Instance.new("ScreenGui")
gui.Name = "CoffeeShopGUI"
gui.Parent = game.Players.LocalPlayer.PlayerGui

-- Función para destruir el GUI
local function destroyUI()
    gui:Destroy()
end

-- Función para cargar y ejecutar los scripts
local function loadScript(url)
    local success, script = pcall(function()
        return loadstring(game:HttpGet(url))
    end)
    
    if success then
        script()
        destroyUI()
    else
        warn("Error al cargar el script:", script)
    end
end

-- Crear los botones

local buttonsData = {
    {Text = "P1", ScriptURL = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe1.lua"},
    {Text = "P2", ScriptURL = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe2.lua"},
    {Text = "P3", ScriptURL = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe3.lua"},
    {Text = "P4", ScriptURL = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe4.lua"},
    {Text = "P5", ScriptURL = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe5.lua"},
    {Text = "P6", ScriptURL = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pastelería/Cafe6.lua"}
}

for i, buttonData in ipairs(buttonsData) do
    local button = Instance.new("TextButton")
    button.Name = "Button"..i
    button.Parent = gui
    button.Position = UDim2.new(0, 10, 0, (i - 1) * 40 + 10)
    button.Size = UDim2.new(0, 100, 0, 30)
    button.Text = buttonData.Text
    button.Activated:Connect(function()
        loadScript(buttonData.ScriptURL)
    end)
end
