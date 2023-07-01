
-- Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

-- Variables
local CFrames = {}
local Waypoints

-- Instance
local Library = loadstring(game:HttpGet("https://bitbucket.org/cat__/uis/raw/Elerium/Module"))()
local Window = Library:AddWindow("Elerium", {
    MinSize = Vector2.new(500, 300)
})

local Tab = Window:AddTab("Waypoints")

Tab:AddTextBox("Waypoint Name", function(Text)
    CFrames[Text] = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    table.insert(Waypoints.Menu, tostring(Text))
    Waypoints.Menu = Waypoints.Menu
end)

local Ha = Tab:AddHorizontalAlignment()

Waypoints = Ha:AddDropdown("Waypoints")

Ha:AddButton("TP", function()
    if table.find(Waypoints.Menu, Waypoints.Option) then
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrames[Waypoints.Option]
    end
end)

Ha:AddButton("View (5 secs)", function()
    if table.find(Waypoints.Menu, Waypoints.Option) then
        Workspace.CurrentCamera.CFrame = CFrames[Waypoints.Option]

        local Connection = Workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
            Workspace.CurrentCamera.CFrame = CFrames[Waypoints.Option]
        end)

        task.delay(5, Connection.Disconnect, Connection)
    end
end)

Ha:AddButton("Delete waypoint", function()
    local Index = table.find(Waypoints.Menu, Waypoints.Option)

    if Index then
        table.remove(Waypoints.Menu, Index)
        CFrames[Waypoints.Option] = nil
    end

    Waypoints.Menu = Waypoints.Menu
end)

Tab:Show()