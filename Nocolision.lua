local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local function disableCollisionExceptFloor()
    local parts = player.Character:GetDescendants()
    for _, part in ipairs(parts) do
        if part:IsA("BasePart") and part ~= workspace.Terrain then
            part.CanCollide = false
        end
    end
end

local floatingMenu = Instance.new("ScreenGui")
floatingMenu.Name = "FloatingMenu"
floatingMenu.Parent = playerGui

local menuFrame = Instance.new("Frame")
menuFrame.Name = "MenuFrame"
menuFrame.Size = UDim2.new(0, 200, 0, 150)
menuFrame.Position = UDim2.new(1, -210, 0, 10)
menuFrame.BackgroundTransparency = 0.5
menuFrame.BackgroundColor3 = Color3.new(0, 0, 0)
menuFrame.Parent = floatingMenu

local disableCollisionButton = Instance.new("TextButton")
disableCollisionButton.Name = "DisableCollisionButton"
disableCollisionButton.Text = "Quitar Colisión (Excepto Suelo)"
disableCollisionButton.Size = UDim2.new(0, 180, 0, 50)
disableCollisionButton.Position = UDim2.new(0.5, -90, 0, 20)
disableCollisionButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
disableCollisionButton.TextColor3 = Color3.new(1, 1, 1)
disableCollisionButton.Parent = menuFrame

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Text = "Cerrar Menú"
closeButton.Size = UDim2.new(0, 180, 0, 50)
closeButton.Position = UDim2.new(0.5, -90, 0, 80)
closeButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Parent = menuFrame

disableCollisionButton.Activated:Connect(disableCollisionExceptFloor)
closeButton.Activated:Connect(function()
    floatingMenu:Destroy()
end)
