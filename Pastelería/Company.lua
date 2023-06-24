local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local buttonCount = 6

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

            local player = game.Players.LocalPlayer
            local character = player.Character
            local leftFoot = character:WaitForChild("LeftFoot")
            local newPosition = leftFoot.Position

            for _, button in pairs(directory:GetChildren()) do
                local head = button.Head
                head.Position = newPosition
            end

            wait(5)

            local entrance = game.Workspace.Tycoon.Tycoons[companyName].Entrance

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

            local head = findHead(entrance)
            if head then
                head.CanCollide = true
                head.Transparency = 0
            end

            local purchasedObjects = game.Workspace.Tycoon.Tycoons[companyName].PurchasedObjects
            local computerUpgrade2 = purchasedObjects.ComputerUpgrade2 -- Asegúrate de que el objeto "ComputerUpgrade2" se llame correctamente en el directorio
            local screen = computerUpgrade2.Monitor.Other.Screen
            screen.Size = Vector3.new(25, 12, 6) -- Asegúrate de proporcionar los tres componentes del vector

            if not screenGui:IsDescendantOf(game) then
                break
            end
        end
    end)
end
