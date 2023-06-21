
local function FireServerAndWait(childName)
    local ingredientCollider = workspace.Ingredients:WaitForChild(childName):WaitForChild("Ingredient_Collider")
    game:GetService("ReplicatedStorage").Remotes.TI_0:FireServer(ingredientCollider)
end

local function addIngredients(horno, ingredientCount)
    local ingredientsFolder = workspace.Ingredients
    local ingredients = {}

    for _, ingredient in ipairs(ingredientsFolder:GetChildren()) do
        table.insert(ingredients, ingredient.Name)
    end

    local ingredientChunks = {}

    for i = 1, ingredientCount, 4 do
        local chunk = {}
        for j = i, i + 3 do
            local ingredientIndex = (j - 1) % #ingredients + 1
            table.insert(chunk, ingredients[ingredientIndex])
        end
        table.insert(ingredientChunks, chunk)
    end

    for _, chunk in ipairs(ingredientChunks) do
        for _, ingredient in ipairs(chunk) do
            spawn(function()
                FireServerAndWait(ingredient)
            end)
        end
        wait(0.8)
    end
end

local function addExtraIngredients(horno, ingredientCount)
    local ingredientsFolder = workspace.Ingredients
    local ingredients = {}

    for _, ingredient in ipairs(ingredientsFolder:GetChildren()) do
        table.insert(ingredients, ingredient.Name)
    end

    local ingredientChunks = {}

    for i = 1, ingredientCount, 4 do
        local chunk = {}
        for j = i, i + 3 do
            local ingredientIndex = (j - 1) % #ingredients + 1
            table.insert(chunk, ingredients[ingredientIndex])
        end
        table.insert(ingredientChunks, chunk)
    end

    for _, chunk in ipairs(ingredientChunks) do
        for _, ingredient in ipairs(chunk) do
            spawn(function()
                FireServerAndWait(ingredient)
            end)
        end
        wait(1)
    end
end

local function HandleHornos(hornoList)
    local currentIndex = 1

    while true do
        local hornoData = hornoList[currentIndex]
        local horno = hornoData.Horno
        local smokePoint = hornoData.Posicion

        spawn(function()
            addIngredients(horno, 20) -- Damos 20 ingredientes predefinidos por horno
            addExtraIngredients(horno, 10) -- Damos 10 ingredientes adicionales por horno
        end)

        local bakeArgs = {
            [1] = horno,
            [2] = "Exotic"
        }

        game:GetService("ReplicatedStorage").Remotes.StartBake:FireServer(unpack(bakeArgs))
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(smokePoint)
        wait(4)

        currentIndex = currentIndex % #hornoList + 1
        wait(4) -- Reducimos el tiempo de espera entre hornos a 10 segundos
    end
end

-- Obtener la lista de hornos y sus posiciones
local hornoList = {}

for _, horno in ipairs(workspace.Plots.Plot4.Ovens:GetChildren()) do
    table.insert(hornoList, {
        Horno = horno,
        Posicion = horno.SmokePoint.Position
    })
end

-- Ejecutar el bucle principal
HandleHornos(hornoList)

