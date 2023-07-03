local urlInterfaz = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/MyBiblioteca/Interfaz.lua" -- Reemplaza con la URL correcta de la biblioteca

-- Cargar el código de la biblioteca desde la URL
local response = game:HttpGet(urlInterfaz)
local biblioteca = loadstring(response)()

-- Crear la interfaz
local interfaz = biblioteca()
-- Acceder a los botones de la interfaz
local botonCerrar = interfaz.BotonCerrar
local botonMinimizar = interfaz.BotonMinimizar
local botonMaximizar = interfaz.BotonMaximizar

-- Conectar eventos a los botones
botonCerrar.MouseButton1Click:Connect(function()
    -- Acciones al hacer clic en el botón de cerrar
    interfaz:Destroy() -- Cerrar la interfaz
end)

botonMinimizar.MouseButton1Click:Connect(function()
    -- Acciones al hacer clic en el botón de minimizar
    -- Realizar acciones de minimizar la interfaz
end)

botonMaximizar.MouseButton1Click:Connect(function()
    -- Acciones al hacer clic en el botón de maximizar
    -- Realizar acciones de maximizar la interfaz
end)

-- Asegurarse de que la interfaz sea visible
interfaz.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
