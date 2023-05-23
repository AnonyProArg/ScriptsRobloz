local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

local TeleportGui = Instance.new("ScreenGui")

TeleportGui.Parent = LocalPlayer.PlayerGui

local TeleportMenu = Instance.new("Frame")

TeleportMenu.Size = UDim2.new(0, 200, 0, 200)

TeleportMenu.Position = UDim2.new(0.5, -100, 0.5, -100)

TeleportMenu.AnchorPoint = Vector2.new(0.5, 0.5)

TeleportMenu.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)

TeleportMenu.BorderSizePixel = 0

TeleportMenu.Parent = TeleportGui

local ScrollFrame = Instance.new("ScrollingFrame")

ScrollFrame.Size = UDim2.new(1, 0, 1, -40)

ScrollFrame.Position = UDim2.new(0, 0, 0, 0)

ScrollFrame.BackgroundTransparency = 1

ScrollFrame.ScrollBarThickness = 10

ScrollFrame.ScrollingDirection = Enum.ScrollingDirection.Y

ScrollFrame.BorderSizePixel = 0

ScrollFrame.Parent = TeleportMenu

local ToggleButton = Instance.new("TextButton")

ToggleButton.Size = UDim2.new(0, 100, 0, 20)

ToggleButton.Position = UDim2.new(0, 0, 1, -20)

ToggleButton.AnchorPoint = Vector2.new(0, 1)

ToggleButton.BackgroundColor3 = Color3.new(0.4, 0.4, 1)

ToggleButton.Text = "Ocultar menú"

ToggleButton.Parent = TeleportGui

local isMenuVisible = true

local function ToggleMenu()

    isMenuVisible = not isMenuVisible

    TeleportMenu.Visible = isMenuVisible

    ToggleButton.Text = isMenuVisible and "Ocultar menú" or "Mostrar menú"

end

ToggleButton.MouseButton1Click:Connect(ToggleMenu)

local function TeleportToPlayer(player)

    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then

        LocalPlayer.Character:MoveTo(player.Character.HumanoidRootPart.Position)

    end

end

local function CreateTeleportButton(player)

    local TeleportButton = Instance.new("TextButton")

    TeleportButton.Size = UDim2.new(0.9, 0, 0, 30)

    TeleportButton.Position = UDim2.new(0.05, 0, 0, 10 + ((30 + 10) * (#ScrollFrame:GetChildren())))

    TeleportButton.BackgroundColor3 = Color3.new(0.4, 0.4, 1)

    TeleportButton.Text = player.Name

    TeleportButton.Parent = ScrollFrame

    TeleportButton.MouseButton1Click:Connect(function()

        TeleportToPlayer(player)

        ToggleMenu()

    end)

end

local function UpdatePlayerList()

    for _, button in ipairs(ScrollFrame:GetChildren()) do

        if button:IsA("TextButton") then

            button:Destroy()

        end

    end

    for _, player in ipairs(Players:GetPlayers()) do

        if player ~= LocalPlayer then

            CreateTeleportButton(player)

        end

    end

end

local function UpdatePlayerListLoop()

    while wait(2) do

        if isMenuVisible then

            UpdatePlayerList()

        end

    end

end

UpdatePlayerList()

spawn(UpdatePlayerListLoop)
