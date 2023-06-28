-- Define a function that will be called when the 'Activar' button is clicked
local function onActivarButtonClicked()
    -- Get the local player
    local player = game.Players.LocalPlayer

    -- Get all the players in the game
    local players = game.Players:GetPlayers()

    -- Initialize a variable to store the closest player
    local closestPlayer = nil
    local closestDistance = math.huge

    -- Iterate through each player in the game
    for _, otherPlayer in ipairs(players) do
        -- Exclude the local player from consideration
        if otherPlayer ~= player then
            -- Calculate the distance between the local player and the other player
            local distance = (otherPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude

            -- Check if the other player is closer than the current closest player
            if distance < closestDistance then
                closestPlayer = otherPlayer
                closestDistance = distance
            end
        end
    end

    -- Check if a closest player was found
    if closestPlayer then
        -- Teleport the local player to the closest player
        player.Character.HumanoidRootPart.CFrame = closestPlayer.Character.HumanoidRootPart.CFrame

        -- Attach a ScreenGui to the local player's Back
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "BackScreenGui"
        screenGui.Parent = player.Character.HumanoidRootPart

        -- Create a TextButton within the ScreenGui
        local textButton = Instance.new("TextButton")
        textButton.Name = "DesactivarButton"
        textButton.Text = "Desactivar"
        textButton.Parent = screenGui

        -- Define a function that will be called when the 'Desactivar' button is clicked
        local function onDesactivarButtonClicked()
            -- Remove the ScreenGui from the local player's Back
            screenGui:Destroy()
        end

        -- Connect the 'Desactivar' button click event to the function
        textButton.MouseButton1Click:Connect(onDesactivarButtonClicked)
    end
end

-- Create a ScreenGui within the StarterGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ActivarButtonScreenGui"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create an "Activar" button within the ScreenGui
local activarButton = Instance.new("TextButton")
activarButton.Name = "Activar"
activarButton.Text = "Tp Jugador cercano"
activarButton.Size = UDim2.new(0, 100, 0, 50)
activarButton.Position = UDim2.new(0.5, -50, 0.2, 0)
activarButton.Parent = screenGui

-- Create a "Desactivar" button within the ScreenGui
local desactivarButton = Instance.new("TextButton")
desactivarButton.Name = "Desactivar"
desactivarButton.Text = "Desactivar"
desactivarButton.Size = UDim2.new(0, 100, 0, 50)
desactivarButton.Position = UDim2.new(0.5, -50, 0.3, 0)
desactivarButton.Parent = screenGui
desactivarButton.Visible = false

-- Connect the 'Activar' button click event to the function
activarButton.MouseButton1Click:Connect(onActivarButtonClicked)
