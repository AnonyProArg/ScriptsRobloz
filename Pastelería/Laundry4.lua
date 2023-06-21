local washingMachines = workspace.Plots.Plot4.WashingMachines:GetChildren()

local function startWashingMachine(washingMachine)
    while wait() do
        game:GetService("ReplicatedStorage").Events.LoadWashingMachine:FireServer(washingMachine)
    end
end

for i, washingMachine in ipairs(washingMachines) do
    spawn(function()
        startWashingMachine(washingMachine)
    end)
end

local function updateClothingList()
    return workspace.Debris.Clothing:GetChildren()
end

local function invokeClothing(clothingName)
    game:GetService("ReplicatedStorage").Events.GrabClothing:FireServer(workspace.Debris.Clothing:FindFirstChild(clothingName))
end

local function invokeClothingProcess()
    local clothingList = updateClothingList()
    local lastIndex = 1
    
    while true do
        for i = 1, #clothingList, 20 do
            local endIndex = math.min(i + 4, #clothingList)
            
            for j = i, endIndex do
                invokeClothing(clothingList[j].Name)
            end
            
            wait(1)
            
            if endIndex == #clothingList and i >= lastIndex then
                lastIndex = i
                wait(2)
            end
        end
        
        wait()
    end
end

spawn(invokeClothingProcess)

local function stopWashingMachine(washingMachine)
    while true do
        game:GetService("ReplicatedStorage").Events.UnloadWashingMachine:FireServer(washingMachine)
        wait()
    end
end

for i, washingMachine in ipairs(washingMachines) do
    spawn(function()
        stopWashingMachine(washingMachine)
    end)
end

spawn(function()
    while true do
        for i = 1, 5 do
            game:GetService("ReplicatedStorage").Events.DropClothesInChute:FireServer()
        end
        wait(1)
    end
end)

local walkPositions = {
    Vector3.new(-131.265, 5.57671, -43.5038),
    Vector3.new(-106.621, 5.57671, -11.1147)
}

local function walkToPosition(position)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    humanoid:MoveTo(position)
    humanoid.MoveToFinished:Wait()
    wait(1)
end

while true do
    -- Ida
    for _, position in ipairs(walkPositions) do
        walkToPosition(position)
    end
    
    -- Vuelta
    for i = #walkPositions, 1, -1 do
        walkToPosition(walkPositions[i])
    end
end
