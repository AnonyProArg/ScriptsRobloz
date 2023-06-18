local ingredientList = {}

local function updateIngredientList()
    local ingredients = workspace.Ingredients:GetChildren()

    ingredientList = {}

    for _, ingredient in ipairs(ingredients) do
        table.insert(ingredientList, ingredient.Name)
    end
end

local function giveIngredientsToPlayer(position)
    local player = game.Players.LocalPlayer
    local character = player.Character
    local primaryPart = character.PrimaryPart

    primaryPart.CFrame = CFrame.new(position)

    local startTime = os.time()
    while os.time() - startTime < 2 do
        for _, ingredientName in ipairs(ingredientList) do
            local ingredientCollider = workspace.Ingredients[ingredientName].Ingredient_Collider
            game.ReplicatedStorage.Remotes.TI_0:FireServer(ingredientCollider)
        end
        wait()
    end
end

local function startBaking(plotNumber)
    local plotPath = workspace.Plots:FindFirstChild("Plot" .. tostring(plotNumber))

    if plotPath then
        local ovens = plotPath.Ovens:GetChildren()

        for _, horno in ipairs(ovens) do
            local hornoSmokePoint = horno.SmokePoint
            local hornoPosition = hornoSmokePoint.Position

            giveIngredientsToPlayer(hornoPosition)
            wait(2) -- Esperar 2 segundos antes de pasar al siguiente horno
        end


local function spamInfoCommand(plotNumber)
    while true do
        wait(2)
        local plotPath = workspace.Plots:FindFirstChild("Plot" .. tostring(plotNumber))
        if plotPath then
            plotPath.Shelf.Info:FireServer()
        end
    end
end

local function spamConverterCommand(plotNumber)
    while true do
        wait(2)
        local plotPath = workspace.Plots:FindFirstChild("Plot" .. tostring(plotNumber))
        if plotPath then
            local ovens = plotPath.Ovens:GetChildren()
            for _, horno in ipairs(ovens) do
                local converterData = horno.Old.ConverterData
                if converterData then
                    converterData.__REMOTE:FireServer()
                end
            end
        end
    end
end

local UI = Instance.new("ScreenGui")
UI.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 200)
frame.Position = UDim2.new(0.5, -100, 0.5, -100)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = UI

local function createButton(number)
    local button = Instance.new("TextButton")
    button.Text = tostring(number)
    button.Size = UDim2.new(0, 50, 0, 50)
    button.Position = UDim2.new(0.5, -25, (number - 1) * 0.125, 0)
    button.Parent = frame

    button.MouseButton1Click:Connect(function()
        local plotNumber = number

        UI:Destroy()

        spawn(function()
            startBaking(plotNumber)
        end)
        spawn(function()
            spamInfoCommand(plotNumber)
        end)
        spawn(function()
            spamConverterCommand(plotNumber)
        end)
    end)
end

for i = 1, 6 do
    createButton(i)
end

spawn(function()
    while true do
        updateIngredientList()
        wait(2)
    end
end)

