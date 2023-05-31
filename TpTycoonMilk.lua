local locations = {}

local frame

local isMinimized = false

local function CreateFloatingMenu()

    frame = Instance.new("ScreenGui")

    frame.Name = "FloatingMenu"

    frame.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local frameBackground = Instance.new("Frame")

    frameBackground.Size = UDim2.new(0, 200, 0, 250)

    frameBackground.Position = UDim2.new(0.5, -100, 0.5, -125)

    frameBackground.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

    frameBackground.BorderSizePixel = 0

    frameBackground.Active = true

    frameBackground.Draggable = true

    frameBackground.Visible = true

    frameBackground.Parent = frame

    local title = Instance.new("TextLabel")

    title.Size = UDim2.new(1, 0, 0, 30)

    title.Text = "MyScript"

    title.TextColor3 = Color3.fromRGB(255, 255, 255)

    title.BackgroundTransparency = 1

    title.Parent = frameBackground

    local minimizeButton = Instance.new("TextButton")

    minimizeButton.Size = UDim2.new(0, 30, 0, 30)

    minimizeButton.Position = UDim2.new(1, -60, 0, 0)

    minimizeButton.Text = "-"

    minimizeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)

    minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)

    minimizeButton.Parent = frameBackground

    minimizeButton.MouseButton1Click:Connect(function()

        isMinimized = not isMinimized

        frameBackground.Visible = not isMinimized

    end)

    local maximizeButton = minimizeButton:Clone()

    maximizeButton.Position = UDim2.new(1, -30, 0, 0)

    maximizeButton.Text = "+"

    maximizeButton.Parent = frameBackground

    maximizeButton.Visible = false

    maximizeButton.MouseButton1Click:Connect(function()

        isMinimized = false

        frameBackground.Visible = true

        maximizeButton.Visible = false

    end)

    local closeButton = Instance.new("TextButton")

    closeButton.Size = UDim2.new(0, 150, 0, 30)

    closeButton.Position = UDim2.new(0.5, -75, 0.2, 0)

    closeButton.Text = "Cerrar Menú"

    closeButton.BackgroundColor3 = Color3.fromRGB(128, 128, 128)

    closeButton.Parent = frameBackground

    closeButton.MouseButton1Click:Connect(function()

        frame:Destroy()

    end)

    local saveButton = closeButton:Clone()

    saveButton.Position = UDim2.new(0.5, -75, 0.4, 0)

    saveButton.Text = "Guardar Ubicación"

    saveButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)

    saveButton.Parent = frameBackground

    saveButton.MouseButton1Click:Connect(function()

        local player = game.Players.LocalPlayer

        local character = player.Character

        local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart then

            local position = humanoidRootPart.Position

            table.insert(locations, position)

        end

    end)

    local resetButton = saveButton:Clone()

    resetButton.Position = UDim2.new(0.5, -75, 0.6, 0)

    resetButton.Text = "Reset Ubicaciones"

    resetButton.BackgroundColor3 = Color3.fromRGB(220, 20, 60)

    resetButton.Parent = frameBackground

    resetButton.MouseButton1Click:Connect(function()

        locations = {}

    end)

    local tpButton = saveButton:Clone()

    tpButton.Position = UDim2.new(0.5, -75, 0.8, 0)

    tpButton.Text = "TP Ubicaciones"

    tpButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)

    tpButton.Parent = frameBackground

    tpButton.MouseButton1Click:Connect(function()

        local player = game.Players.LocalPlayer

        local character = player.Character

        local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart then

            for i, position in ipairs(locations) do

                humanoidRootPart.Position = position

                wait(1) -- Espera 1 segundo antes de teleportarse a la siguiente ubicación

            end

        end

    end)

    frameBackground.Visible = not isMinimized

    maximizeButton.Visible = isMinimized

end

CreateFloatingMenu()
