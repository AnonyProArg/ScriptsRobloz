local directorio = game.Workspace.GameplayParts 
local nombresObjetosEliminar = {"Color_Blue", "Color_Green","Color_Pink","Color_Purple","Color_Orange","Color_Teal","Color_Yellow"} 

local objetosAEliminar = directorio:GetDescendants()
for _, objeto in ipairs(objetosAEliminar) do
    for _, nombreObjetoEliminar in ipairs(nombresObjetosEliminar) do
        if objeto.Name == nombreObjetoEliminar then
            objeto:Destroy()
        end
    end
end