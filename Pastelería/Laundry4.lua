
local washingMachines = workspace.Plots.Plot4.WashingMachines:GetChildren()

local startWashingScript = [[
    while wait() do
        game:GetService("ReplicatedStorage").Events.LoadWashingMachine:FireServer(workspace.Plots.Plot4.WashingMachines["%s"])
    end
]]

local function startWashingMachine(washingMachine)
    local script = string.format(startWashingScript, washingMachine.Name)
    loadstring(script)()
end

for i, washingMachine in ipairs(washingMachines) do
    spawn(function()
        startWashingMachine(washingMachine)
    end)
end

local function updateClothingList()
    return workspace.Debris.Clothing:GetChildren()
end

local invokeClothingScript = [[
    local args = {
        [1] = workspace.Debris.Clothing:FindFirstChild("%s")
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GrabClothing"):FireServer(unpack(args))
]]

local function invokeClothing(clothingName)
    local script = string.format(invokeClothingScript, clothingName)
    loadstring(script)()
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

local stopWashingScript = [[
    local args = {
        [1] = workspace.Plots.Plot4.WashingMachines:FindFirstChild("%s")
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UnloadWashingMachine"):FireServer(unpack(args))
]]

for i, washingMachine in ipairs(washingMachines) do
    spawn(function()
        while true do
            local script = string.format(stopWashingScript, washingMachine.Name)
            loadstring(script)()
            wait()
        end
    end)
end

spawn(function()
    while true do
        for i = 1, 5 do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("DropClothesInChute"):FireServer()
        end
        wait(1)
    end
end)
