local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local ActivarImagen = Instance.new("ImageButton")
ActivarImagen.Size = UDim2.new(0, 100, 0, 50)
ActivarImagen.Position = UDim2.new(0, 10, 0, 10)
ActivarImagen.Image = "http://www.roblox.com/asset/?id=4953528537"
ActivarImagen.Parent = ScreenGui

local DesactivarImagen = Instance.new("ImageButton")
DesactivarImagen.Size = UDim2.new(0, 100, 0, 50)
DesactivarImagen.Position = UDim2.new(0, 10, 0, 10)
DesactivarImagen.Image = "http://www.roblox.com/asset/?id=4953529287"
DesactivarImagen.Visible = false
DesactivarImagen.Parent = ScreenGui

local plataforma

ActivarImagen.MouseButton1Down:Connect(function()
    ActivarImagen.Visible = false
    DesactivarImagen.Visible = true

    if not plataforma then
        plataforma = Instance.new("Part")
        plataforma.Size = Vector3.new(5, 1, 5)
        plataforma.BrickColor = BrickColor.new("Sand blue")
        plataforma.Anchored = true
        plataforma.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3.5.9, 0)
        plataforma.Parent = workspace

        game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function(speed)
            if speed > 0 then
                plataforma.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3.5.9, 0)
            end
        end)

        game.Players.LocalPlayer.Character.Humanoid.Jumping:Connect(function()
            if plataforma then
                plataforma:Destroy()
                plataforma = nil
                DesactivarImagen.Visible = false
                ActivarImagen.Visible = true
            end
        end)
    end
end)

DesactivarImagen.MouseButton1Down:Connect(function()
    ActivarImagen.Visible = true
    DesactivarImagen.Visible = false

    if plataforma then
        plataforma:Destroy()
        plataforma = nil
    end
end)

