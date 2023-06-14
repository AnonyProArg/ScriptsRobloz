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

    wait(31) -- Espera 20 segundos antes de ejecutar nuevamente

    if selectedNumber then
        startCafeteras(selectedNumber)
    end
end
