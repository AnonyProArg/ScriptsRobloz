local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local buttonCount = 6

local function findHead(obj)
    if obj.Name == "Head" then
        return obj
    else
        for _, child in ipairs(obj:GetChildren()) do
            local foundObj = findHead(child)
            if foundObj then
                return foundObj
            end
        end
    end
end

local player = game.Players.LocalPlayer
local character = player.Character

for i = 1, buttonCount do
    local companyName = "Company " .. i

    local button = Instance.new("TextButton")
    button.Name = companyName
    button.Text = companyName
    button.Position = UDim2.new(0, 10, 0, (i-1) * 30)
    button.Size = UDim2.new(0, 100, 0, 20)
    button.Parent = screenGui

    button.MouseButton1Click:Connect(function()
        while true do
            local directory = game.Workspace.Tycoon.Tycoons[companyName].Buttons

            local leftFoot = character:WaitForChild("LeftFoot")
            local newPosition = leftFoot.Position

            for _, button in pairs(directory:GetChildren()) do
                button.Head.Position = newPosition
            end

            wait(5)

            local purchasedObjects = game.Workspace.Tycoon.Tycoons[companyName].PurchasedObjects
            local computerUpgrade2 = purchasedObjects:WaitForChild("ComputerUpgrade2")
            local screen = computerUpgrade2.Monitor.Other.Screen
            screen.CanCollide = false
           Screen.Size = Vector3.new(10, 5, 10)
         Screen.Position = Vector3.new(0, 5, 0)
            local head = character:WaitForChild("Head")
            screen.Position = head.Position

            local clickDetector = screen:WaitForChild("ClickDetector")
            clickDetector.MaxActivationDistance = 900

            if not screenGui:IsDescendantOf(game) then
                break
            end
        end
    end)
end
