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

-- Paso adicional: Crear el botón "Atravesar All v1" en la sección "Generales"
GeneralesSection:AddButton({
    Name = "Atravesar All v1",
    Callback = function()
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

        disableCollisionExceptFloor()
    end
})

-- Paso adicional: Agregar botones en la sección "Generales"
GeneralesSection:AddButton({
    Name = "Dex V3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Dex%20Explorer.lua.txt"))()
    end
})

GeneralesSection:AddButton({
    Name = "Teleport Players v1",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/TPplayers.lua"))()
    end
})

GeneralesSection:AddButton({
    Name = "Spy Mobil",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HoodProject/Espa-oles/main/Turtle%20Spy.lua"))()
    end
})

GeneralesSection:AddButton({
    Name = "Spy PC",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
    end
})

GeneralesSection:AddButton({
    Name = "Teclado Virtual",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"))()
    end
})

GeneralesSection:AddButton({
    Name = "VIP",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/VIP.%20lua"))()
    end
})

GeneralesSection:AddButton({
    Name = "Passes",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Passes.lua "))()
    end
})

GeneralesSection:AddButton({
    Name = "RTX UP graphics",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.ga/xXkUxA0P/raw"))()
    end
})

GeneralesSection:AddButton({
    Name = "Reproductor Music ID",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Reproductor.lua"))()
    end
})

GeneralesSection:AddButton({
    Name = "RTX Opc2",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Chillz-Enhancer-Shader-10451"))()
    end
})

-- Paso adicional: Crear una sección llamada "Meepcity"
local MeepcitySection = Window:MakeTab({
    Name = "Meepcity",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}):AddSection({
    Name = "Meepcity"
})

-- Paso adicional: Agregar botones en la sección "Meepcity"
MeepcitySection:AddButton({
    Name = "Colocar Items en posición del jugador",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/ColocarYenMeep.lua"))()
    end
})

MeepcitySection:AddButton({
    Name = "Menú para las Plantas",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/plantsMeepC.txt"))()
    end
})

MeepcitySection:AddButton({
    Name = "Menú con AutoPesca y+",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yLegendzz/Scripts/main/Meepcity"))()
    end
})

MeepcitySection:AddButton({
    Name = "Menús con Diferentes opciones",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/MeepCity-Meepcity-cracked-6349"))()
    end
})

MeepcitySection:AddButton({
    Name = "Obtener Plus (sin más opciones)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/gestion/main/PlusMeep"))()
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

-- Paso adicional: Agregar botón en la sección "Tycoons"
TycoonsSection:AddButton({
    Name = "Donuts Tycoon",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/DonutsTycoon.lua"))()
    end
})

-- Paso 5: Notificar al usuario con el título "OneCreatorX", contenido "Derechos reservados para OneCreatorX"
OrionLib:MakeNotification({
    Name = "OneCreatorX",
    Content = "Derechos reservados para OneCreatorX",
    Image = "rbxassetid://4483345998",
    Time = 5
})

-- Paso 15: Finalizar el script (REQUERIDO)
OrionLib:Init()
