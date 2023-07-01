local Library = loadstring(game:HttpGet("https://bitbucket.org/cat__/uis/raw/Loady/Module"))() 
local Window = Library:Window("Loady", function(Script)
    loadstring(game:HttpGet(Script), Script:split("/")[3])()
end)
Window:Game({
    Status = true,
    Script = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/ColocarYenMeep.lua",
    UpdateDate = Window:GitDate("AnonyProArg","ScriptsRobloz","ColocarYenMeep.lua"),
    Custom = {
        Name = "Colocar Ítems en Casa" 
    } 
})

Window:Game({
    Status = true,
    Script = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/plantsMeepC.txt",
    UpdateDate = Window:GitDate("AnonyProArg","ScriptsRobloz","plantsMeepC.txt"),
    Custom = {
        Name = "Plantas Opciónes" 
    } 
})

Window:Initiate()
