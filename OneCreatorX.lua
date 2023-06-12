-- Paso 1: Iniciar la biblioteca

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Paso 2: Crear una ventana con el título "OneCreatorX"

local Window = OrionLib:MakeWindow({Name = "OneCreatorX", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Paso 4: Crear una sección llamada "Generales"

local GeneralesSection = Window:MakeTab({

    Name = "Generales",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

}):AddSection({

    Name = "Generales"

})

-- Paso adicional: Crear el botón "Volar" en la sección "Generales"

GeneralesSection:AddButton({

    Name = "Volar",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro69Yes/sussy-Script/main/SecuredFlyGuiv3.lua"))()

    end

})

-- Paso adicional: Crear una sección llamada "Tycoons"

local TycoonsSection = Window:MakeTab({

    Name = "Tycoons",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

}):AddSection({

    Name = "Tycoons"

})

-- Paso adicional: Crear un botón llamado "Milk" que ejecuta el código para Tycoon Milk

TycoonsSection:AddButton({

    Name = "Milk",

    Callback = function()

        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Tycoon%20Milk.lua"))()

    end

})

-- Paso adicional: Crear un botón llamado "Auto Collect Milk" dentro de la sección "Milk"

TycoonsSection:AddButton({

    Name = "Auto Collect Milk",

    Callback = function()

        getgenv().AutoCollect = not getgenv().AutoCollect

        local button = OrionLib:GetButton("Auto Collect Milk") -- Obtener el botón creado previamente

        button:SetText("Auto Collect Milk " .. (getgenv().AutoCollect and "[ON]" or "[OFF]"))

        local player = game.Players.LocalPlayer

        local tycoonButtons = {}

        local ownedTycoons = {}

        local function GetTycoon()

            -- Implementar la lógica para obtener el Tycoon correspondiente

            -- Reemplazar este código con la lógica adecuada para obtener el Tycoon

        end

        local function AutoCollectMilk()

            local Tycoon = GetTycoon()

            while getgenv().AutoCollect do

                wait(0.1)

                for _, v in pairs(Tycoon.Drops:GetChildren()) do

                    if string.find(v.Name, "Cow") then

                        if getgenv().AutoCollect then

                            pcall(function()

                                v.Part.CFrame = player.Character.HumanoidRootPart.CFrame

                            end)

                            wait(0.1)

                        else

                            break

                        end

                    end

                end

            end

        end

        AutoCollectMilk()

    end

})

-- Paso 5: Notificar al usuario con el título "OneCreatorX", contenido "Derechos reservados para OneCreatorX"

OrionLib:MakeNotification({

    Name = "OneCreatorX",

    Content = "Derechos reservados para OneCreatorX",

    Image = "rbxassetid://4483345998",

    Time = 5

})

-- Paso 15: Finalizar el script

OrionLib:Init()

