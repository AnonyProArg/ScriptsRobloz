local playerName = game.Players.LocalPlayer.Name

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyScreenGUI"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Name = "ScriptBox"
frame.Size = UDim2.new(0.5, 0, 1, 0)
frame.Position = UDim2.new(0.25, 0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Parent = screenGui

local backgroundText = Instance.new("TextLabel")
backgroundText.Name = "BackgroundText"
backgroundText.Size = UDim2.new(1, 0, 1, 0)
backgroundText.Position = UDim2.new(0, 0, 0, 0)
backgroundText.BackgroundTransparency = 1
backgroundText.Text = "0neCreatorX"
backgroundText.TextColor3 = Color3.new(1, 1, 1)
backgroundText.Font = Enum.Font.SourceSansBold
backgroundText.TextSize = 50
backgroundText.Parent = frame

local minimizeButton = Instance.new("TextButton")
minimizeButton.Name = "MinimizeButton"
minimizeButton.Size = UDim2.new(0, 50, 0, 50)
minimizeButton.Position = UDim2.new(1, -100, 0, 0)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.BackgroundColor3 = Color3.new(0, 0, 0)
minimizeButton.BorderSizePixel = 0
minimizeButton.Font = Enum.Font.SourceSans
minimizeButton.TextSize = 24
minimizeButton.Parent = screenGui

local maximizeButton = Instance.new("TextButton")
maximizeButton.Name = "MaximizeButton"
maximizeButton.Size = UDim2.new(0, 50, 0, 50)
maximizeButton.Position = UDim2.new(1, -50, 0, 0)
maximizeButton.Text = "↑↓"
maximizeButton.TextColor3 = Color3.new(1, 1, 1)
maximizeButton.BackgroundColor3 = Color3.new(0, 0, 0)
maximizeButton.BorderSizePixel = 0
maximizeButton.Font = Enum.Font.SourceSans
maximizeButton.TextSize = 24
maximizeButton.Draggable = true
maximizeButton.Parent = screenGui

local linkURL = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Links.lua"
local response = game:HttpGet(linkURL)
local fileList = {}

for line in response:gmatch("[^\r\n]+") do
	local name, url = line:match("([^:]+):(.+)")
	if name and url then
		fileList[name] = url
	end
end

local scrollPosition = 0
local searchInput = ""

local searchBox = Instance.new("TextBox")
searchBox.Name = "SearchBox"
searchBox.Size = UDim2.new(1, -60, 0, 30)
searchBox.Position = UDim2.new(0, 0, 0, 0)
searchBox.Text = ""
searchBox.TextColor3 = Color3.new(1, 1, 1)
searchBox.BackgroundColor3 = Color3.new(0, 0, 0)
searchBox.BorderSizePixel = 0
searchBox.ClearTextOnFocus = false
searchBox.Font = Enum.Font.SourceSans
searchBox.TextSize = 18
searchBox.PlaceholderText = "Search"
searchBox.Parent = frame

local function toggleInterface()
	if frame.Visible then
		frame.Visible = false
		minimizeButton.Text = "+"
	else
		frame.Visible = true
		minimizeButton.Text = "-"
	end
end

minimizeButton.MouseButton1Click:Connect(toggleInterface)
maximizeButton.MouseButton1Click:Connect(toggleInterface)

local function generateButtons()
	for _, button in ipairs(frame:GetChildren()) do
		if button:IsA("TextButton") then
			button:Destroy()
		end
	end

	local filteredList = {}
	for name, url in pairs(fileList) do
		if name:lower():find(searchInput:lower()) then
			table.insert(filteredList, { name = name, url = url })
		end
	end

	local buttonCount = 0
	local maxButtons = math.floor((frame.AbsoluteSize.Y - 30) / 60)

	for i = 1 + scrollPosition, #filteredList do
		local linkData = filteredList[i]
		local name = linkData.name
		local url = linkData.url

		local button = Instance.new("TextButton")
		button.Name = name
		button.Size = UDim2.new(1, 0, 0, 50)
		button.Position = UDim2.new(0, 0, 0, 30 + buttonCount * 60)
		button.Text = name
		button.TextColor3 = Color3.new(1, 1, 1)
		button.BackgroundColor3 = Color3.new(0, 0, 0)
		button.BorderSizePixel = 0
		button.Font = Enum.Font.SourceSans
		button.TextSize = 20
		button.Parent = frame

		button.MouseButton1Click:Connect(function()
			print("Se ha hecho clic en el botón " .. name)
			local scriptCode = "loadstring(game:HttpGet('" .. url .. "'))()"
			loadstring(scriptCode)()
		end)

		buttonCount = buttonCount + 1

		if buttonCount >= maxButtons then
			break
		end
	end
end

local function updateScrollPosition(delta)
	scrollPosition = math.max(0, scrollPosition + delta)
	generateButtons()
end

frame.MouseWheelForward:Connect(function()
	updateScrollPosition(-1)
end)

frame.MouseWheelBackward:Connect(function()
	updateScrollPosition(1)
end)

local function updateSearch(input)
	searchInput = input
	generateButtons()
end

searchBox:GetPropertyChangedSignal("Text"):Connect(function()
	updateSearch(searchBox.Text)
end)

generateButtons()
