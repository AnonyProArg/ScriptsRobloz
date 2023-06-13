-- Paso 1: Iniciar la biblioteca
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Paso 2: Crear una ventana con el título "OneCreatorX"
local Window = OrionLib:MakeWindow({Name = "OneCreatorX", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Paso 4: Crear una sección llamada "Generales"
local GeneralesSection = Window:MakeTab({
    Name = "Generales",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}):AddSection({
    Name = "Generales"
})

GeneralesSection:AddButton({
    Name = "AntiAFK-FullFarmingNoKick",
    Callback = function()
wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="OneCreatorX "
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox tried to kick u but i kicked him instead"wait(2)ab.Text="Status : Active"end)

end
})

GeneralesSection:AddButton({
    Name = "Evita Censura(Beta-Platicas antes c. ahora no)",
    Callback = function()
        local letterDictionary = {
    ["a"] = "ᴀ",
    ["b"] = "ʙ",
    ["c"] = "ᴄ",
    ["d"] = "ᴅ",
    ["e"] = "ᴇ",
    ["f"] = "f",
    ["g"] = "ɢ",
    ["h"] = "ʜ",
    ["i"] = "ɪ",
    ["j"] = "ᴊ",
    ["k"] = "ᴋ",
    ["l"] = "ʟ",
    ["m"] = "ᴍ",
    ["n"] = "ɴ",
    ["ñ"] = "Ñ",
    ["o"] = "ᴏ",
    ["p"] = "ᴘ",
    ["q"] = "Q",
    ["r"] = "ʀ",
    ["s"] = "S",
    ["t"] = "ᴛ",
    ["u"] = "ᴜ",
    ["v"] = "ᴠ",
    ["w"] = "ᴡ",
    ["x"] = "x",
    ["y"] = "ʏ",
    ["z"] = "ᴢ"
}

local function replaceLetters(text)
    return text:gsub(".", function(char)
        return letterDictionary[char:lower()] or char
    end)
end

local gui = Instance.new("ScreenGui")
gui.Name = "FloatingGUI"
gui.ResetOnSpawn = false
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 180, 0, 27)
textBox.Position = UDim2.new(0, 10, 0, 10)
textBox.BackgroundTransparency = 1.0
textBox.BackgroundColor3 = Color3.new(0, 0, 0)
textBox.FontSize = Enum.FontSize.Size18
textBox.PlaceholderText = "Ingresa tu mensaje"
textBox.Text = "Texto en minúsculas"
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.Parent = gui

textBox.FocusLost:Connect(function()
    local message = textBox.Text
    local replacedMessage = replaceLetters(message)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(replacedMessage,"All")
    textBox.Text = ""
end)

textBox.Changed:Connect(function(property)
    if property == "Text" then
        local userInput = game:GetService("UserInputService")
        if userInput:IsKeyDown(Enum.KeyCode.Return) or userInput:IsKeyDown(Enum.KeyCode.KeypadEnter) then
            local message = textBox.Text
            local replacedMessage = replaceLetters(message)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(replacedMessage, "All")
            textBox.Text = ""
        end
    end
end)

    end
})

-- Paso adicional: Crear el botón "Volar" en la sección "Generales"
GeneralesSection:AddButton({
    Name = "Volar",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro69Yes/sussy-Script/main/SecuredFlyGuiv3.lua"))()
    end
})

-- Paso adicional: Crear el botón "Atravesar All v1" en la sección "Generales"
GeneralesSection:AddButton({
    Name = "Atravesar All v1",
    Callback = function()
        
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Nocolision.lua"))()
   end
})

-- Paso adicional: Agregar botones en la sección "Generales"
GeneralesSection:AddButton({
    Name = "Dex V3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua"))()
    end
})

GeneralesSection:AddButton({
    Name = "Teleport Players v1",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/TPplayers.lua"))()
    end
})

GeneralesSection:AddButton({
    Name = "Spy Mobil",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HoodProject/Espa-oles/main/Turtle%20Spy.lua"))()
    end
})

GeneralesSection:AddButton({
    Name = "Spy PC",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
    end
})

GeneralesSection:AddButton({
    Name = "Teclado Virtual",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"))()
    end
})

GeneralesSection:AddButton({
    Name = "VIP",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/VIP.%20lua"))()
    end
})

GeneralesSection:AddButton({
    Name = "Passes",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Passes.lua "))()
    end
})

GeneralesSection:AddButton({
    Name = "RTX UP graphics",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.ga/xXkUxA0P/raw"))()
    end
})

GeneralesSection:AddButton({
    Name = "Reproductor Music ID",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Reproductor.lua"))()
    end
})

GeneralesSection:AddButton({
    Name = "RTX Opc2",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Chillz-Enhancer-Shader-10451"))()
    end
})

GeneralesSection:AddButton({
    Name = "Puntos de TP en la ubicación Player",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/TpTycoonMilk.lua"))()
    end
})

-- Paso adicional: Crear una sección llamada "Meepcity"
local MeepcitySection = Window:MakeTab({
    Name = "Meepcity",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}):AddSection({
    Name = "Meepcity"
})

-- Paso adicional: Agregar botones en la sección "Meepcity"
MeepcitySection:AddButton({
    Name = "Colocar Items en posición del jugador",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/ColocarYenMeep.lua"))()
    end
})

MeepcitySection:AddButton({
    Name = "Menú para las Plantas",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/plantsMeepC.txt"))()
    end
})

MeepcitySection:AddButton({
    Name = "Menú con AutoPesca y+",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yLegendzz/Scripts/main/Meepcity"))()
    end
})

MeepcitySection:AddButton({
    Name = "Menús con Diferentes opciones",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/MeepCity-Meepcity-cracked-6349"))()
    end
})

MeepcitySection:AddButton({
    Name = "Obtener Plus (sin más opciones)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/gestion/main/PlusMeep"))()
    end
})

-- Paso adicional: Crear una sección llamada "Tycoons"
local TycoonsSection = Window:MakeTab({
    Name = "Tycoons",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}):AddSection({
    Name = "Tycoons"
})

-- Paso adicional: Agregar botón en la sección "Tycoons"
TycoonsSection:AddButton({
    Name = "Donuts Tycoon",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/DonutsTycoon.lua"))()
    end
})

TycoonsSection:AddButton({
    Name = "Milk :) Por corregir",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Tycoon%20Milk.lua"))()
  end
})

-- Sección de Doors
local DoorsSection = Window:MakeTab({
    Name = "Doors",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}):AddSection({
    Name = "Doors"
})

-- Paso adicional: Agregar botones en la sección "Doors"
DoorsSection:AddButton({
    Name = "Para Fluxus Requiere Key",
    Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()
    end
})

DoorsSection:AddButton({
    Name = "No Key Cualquier Ejecutador",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/MSDOORS/7bd97c2d956a775d683c2d7973d79715b30998ea/MSDOORS/Moonsec.lua"))()
    end
})

-- Paso adicional: Crear una sección llamada "Colorea o Muere"
local ColoreaOMuereSection = Window:MakeTab({
    Name = "Colorea o Muere",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}):AddSection({
    Name = "Colorea o Muere"
})

-- Paso adicional: Agregar botones en la sección "Colorea o Muere"
ColoreaOMuereSection:AddButton({
    Name = "Ver los objetos atraves de muros",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0color"))()
    end
})

ColoreaOMuereSection:AddButton({
    Name = "Remueve Muros del Ep1",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/color%20o%20die%20map1.lua"))()
    end
})

ColoreaOMuereSection:AddButton({
    Name = "Tp a Objetivos (EnCreaccion)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Tp%20color%20or%20die.lua"))()
    end
})

local MyCafeSection = Window:MakeTab({
    Name = "MyCafeteria( My Coffee)",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}):AddSection({
    Name = "My Cafetería (My Coffee)"
})

-- Paso adicional: Agregar botones en la sección "Colorea o Muere"
MyCafeSection:AddButton({
    Name = "Multi Puestos (Beta-funcional-PresentaBug)",
    Callback = function()
local userInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local Ingredients = workspace:WaitForChild("Ingredients")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NumberSelectionGui"
screenGui.Parent = PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.Parent = screenGui

local label = Instance.new("TextButton")
label.Size = UDim2.new(1, 0, 0, 30)
label.Position = UDim2.new(0, 0, 0, 0)
label.BackgroundColor3 = Color3.new(0, 0, 0)
label.TextColor3 = Color3.new(1, 1, 1)
label.Text = "Número del Puesto:"
label.Font = Enum.Font.SourceSans
label.FontSize = Enum.FontSize.Size18
label.Parent = frame

local buttonContainer = Instance.new("Frame")
buttonContainer.Size = UDim2.new(1, 0, 0, 70)
buttonContainer.Position = UDim2.new(0, 0, 0, 30)
buttonContainer.Parent = frame

local selectedNumber = nil

local function addIngredients(cafeteraName, ingredientCount)
    local ingredients = {
        Ingredients.Sweetener,
        Ingredients.Milk,
        Ingredients.Beans,
        Ingredients.Sweetener,
        Ingredients.Milk,
        Ingredients.Beans,
        Ingredients.Flavor,
        Ingredients.Milk,
        Ingredients.Flavor
    }

    local ingredientIndex = 1
    local ingredientsAdded = 0

    while ingredientsAdded < ingredientCount do
        ReplicatedStorage.Remotes.TI_0:FireServer(ingredients[ingredientIndex])
        ingredientIndex = ingredientIndex + 1
        if ingredientIndex > #ingredients then
            ingredientIndex = 1
        end
        ingredientsAdded = ingredientsAdded + 1
    end
end

local function createButton(number)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 40, 0, 40)
    button.Position = UDim2.new((number - 1) * 0.2, 0, 0.5, -20)
    button.BackgroundColor3 = Color3.new(0, 0, 0)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Text = tostring(number)
    button.Font = Enum.Font.SourceSans
    button.FontSize = Enum.FontSize.Size18
    button.Parent = buttonContainer

    button.MouseButton1Click:Connect(function()
        frame:Destroy()
        selectedNumber = number
    end)
end

for i = 1, 6 do
    createButton(i)
end

userInputService.MouseIconEnabled = true

Players.PlayerRemoving:Connect(function(player)
    if player == LocalPlayer then
        screenGui:Destroy()
        userInputService.MouseIconEnabled = false
    end
end)

local function executeCafeteraActions(plotNumber, cafeteraName)
    local ovensFolder = workspace:WaitForChild("Plots")["Plot" .. plotNumber].Ovens
    local converterData = ovensFolder[cafeteraName].ConverterData

    ReplicatedStorage.Remotes.StartBake:FireServer(ovensFolder[cafeteraName], "Boba Smoothie")

    wait(1)

    addIngredients(cafeteraName, 9) -- Agrega 4 ingredientes a cada máquina

    converterData.noob:FireServer()

    while converterData.__REMOTE do
        converterData.__REMOTE:FireServer()
        wait(1.5)
    end
end

local function startCafeteras(plotNumber)
    local Plots = workspace:WaitForChild("Plots")
    local plot = Plots["Plot" .. plotNumber]

    if not plot then
        print("El número de puesto seleccionado no existe.")
        return
    end

    for _, cafetera in ipairs(plot.Ovens:GetChildren()) do
        spawn(function()
            executeCafeteraActions(plotNumber, cafetera.Name)
        end)
        wait(5) -- Espera 5 segundos antes de ejecutar la siguiente cafetera
    end
end

local function deleteFillCopyAndBounds(cafeteraName)
    local ovensFolder = workspace:WaitForChild("Plots")["Plot" .. selectedNumber].Ovens
    local fillCopy = ovensFolder[cafeteraName]:FindFirstChild("FillCopy")
    local bounds = ovensFolder[cafeteraName]:FindFirstChild("Bounds")

    if fillCopy then
        fillCopy:Destroy()
    end

    if bounds then
        bounds:Destroy()
    end
end

if selectedNumber then
    startCafeteras(selectedNumber)
end

spawn(function()
    while true do
        if selectedNumber then
            local plot = workspace:WaitForChild("Plots"):FindFirstChild("Plot" .. selectedNumber)
            if plot then
                local shelf = plot:WaitForChild("Shelf")
                local info = shelf:WaitForChild("Info")
                info:FireServer()
            else
                print("El número de puesto seleccionado no existe.")
            end
        end
        wait(2) -- Espera 2 segundos antes de ejecutar nuevamente
    end
end)

while true do
    wait(500) -- Espera 30 segundos antes de eliminar FillCopy y Bounds

    if selectedNumber then
        for _, cafetera in ipairs(workspace:WaitForChild("Plots")["Plot" .. selectedNumber].Ovens:GetChildren()) do
            deleteFillCopyAndBounds(cafetera.Name)
        end
    end

    wait(25) -- Espera 20 segundos antes de ejecutar nuevamente

    if selectedNumber then
        startCafeteras(selectedNumber)
    end
end


    end
})


-- Paso 5: Notificar al usuario con el título "OneCreatorX", contenido "Derechos reservados para OneCreatorX"
OrionLib:MakeNotification({
    Name = "OneCreatorX",
    Content = "Derechos reservados para OneCreatorX",
    Image = "rbxassetid://4483345998",
    Time = 5
})

-- Paso 15: Finalizar el script (REQUERIDO)
OrionLib:Init()
