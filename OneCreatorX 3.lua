local playerName = game.Players.LocalPlayer.Name

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyScreenGUI"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Name = "ScriptBox"
frame.Size = UDim2.new(0.5, 0, 0.7, 0)
frame.Position = UDim2.new(0.25, 0, 0.15, 0)
frame.BackgroundTransparency = 0.8
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
frame.Parent = screenGui

local backgroundText = Instance.new("TextLabel")
backgroundText.Name = "BackgroundText"
backgroundText.Size = UDim2.new(1, 0, 0.1, 0)
backgroundText.Position = UDim2.new(0, 0, 0, 0)
backgroundText.BackgroundTransparency = 1
backgroundText.Text = "0neCreatorX"
backgroundText.TextColor3 = Color3.new(1, 1, 1)
backgroundText.Font = Enum.Font.SourceSansBold
backgroundText.TextSize = 50
backgroundText.Parent = frame

local searchInput = ""

local searchBox = Instance.new("TextBox")
searchBox.Name = "SearchBox"
searchBox.AnchorPoint = Vector2.new(0.5, 0)
searchBox.Position = UDim2.new(0.5, 0, 0, 40)
searchBox.Size = UDim2.new(0.8, 0, 0, 30)
searchBox.Text = ""
searchBox.TextColor3 = Color3.new(1, 1, 1)
searchBox.BackgroundColor3 = Color3.new(0, 0, 0)
searchBox.BackgroundTransparency = 0.8
searchBox.BorderSizePixel = 2
searchBox.Font = Enum.Font.SourceSans
searchBox.TextSize = 18
searchBox.PlaceholderText = "Search"
searchBox.TextXAlignment = Enum.TextXAlignment.Center
searchBox.Parent = frame

local buttonContainer = Instance.new("ScrollingFrame")
buttonContainer.Name = "ButtonContainer"
buttonContainer.Size = UDim2.new(1, -20, 1, -80)
buttonContainer.Position = UDim2.new(0, 10, 0, 80)
buttonContainer.BackgroundColor3 = Color3.new(0, 0, 0)
buttonContainer.BackgroundTransparency = 0.8
buttonContainer.BorderSizePixel = 2
buttonContainer.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
buttonContainer.ScrollBarThickness = 8
buttonContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
buttonContainer.Parent = frame

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.BackgroundColor3 = Color3.new(0, 0, 0)
closeButton.BackgroundTransparency = 0.5
closeButton.BorderSizePixel = 0
closeButton.Font = Enum.Font.SourceSans
closeButton.TextSize = 18
closeButton.Parent = frame

local function closeInterface()
    screenGui:Destroy()
end

local function updateButtons()
    for _, button in ipairs(buttonContainer:GetChildren()) do
        if button:IsA("TextButton") then
            button:Destroy()
        end
    end
    
    local linkURL = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Links.lua"
    local response = game:HttpGet(linkURL)
    local fileList = {}
    
    for line in response:gmatch("[^\r\n]+") do
        local name, url = line:match("([^:]+):(.+)")
        if name and url then
            fileList[name] = url
        end
    end
    
    local filteredFiles = {}
    
    for name, url in pairs(fileList) do
        if string.find(string.lower(name), string.lower(searchInput)) then
            table.insert(filteredFiles, {name = name, url = url})
        end
    end
    
    table.sort(filteredFiles, function(a, b)
        return a.name < b.name
    end)
    
    buttonContainer.CanvasSize = UDim2.new(0, 0, 0, #filteredFiles * 40)
    
    for i, fileData in ipairs(filteredFiles) do
        local button = Instance.new("TextButton")
        button.Name = fileData.name
        button.Size = UDim2.new(1, 0, 0, 30)
        button.Position = UDim2.new(0, 0, 0, (i - 1) * 40)
        button.Text = fileData.name
        button.TextColor3 = Color3.new(1, 1, 1)
        button.BackgroundColor3 = Color3.new(0, 0, 0)
        button.BackgroundTransparency = 0.5
        button.BorderSizePixel = 0
        button.Font = Enum.Font.SourceSans
        button.TextSize = 18
        button.Parent = buttonContainer
        button.MouseButton1Click:Connect(function()
            print("Se ha hecho clic en el botón " .. fileData.name)
            local scriptCode = "loadstring(game:HttpGet('" .. fileData.url .. "'))()"
            loadstring(scriptCode)()
        end)
    end
end

searchBox:GetPropertyChangedSignal("Text"):Connect(function()
    searchInput = searchBox.Text
    updateButtons()
end)

closeButton.MouseButton1Click:Connect(closeInterface)

updateButtons()
