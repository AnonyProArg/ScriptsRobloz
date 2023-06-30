local Library = loadstring(game:HttpGet("https://bitbucket.org/cat__/uis/raw/Loady/Module"))() 
local Window = Library:Window("Loady", function(Script)
    loadstring(game:HttpGet(Script), Script:split("/")[3])()
end)
Window:Game({
    Status = true,
    Script = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/OneCreatorX%203.lua",
    UpdateDate = Window:GitDate("AnonyProArg","ScriptsRobloz","OneCreatorX%203.lua"),
    Custom = {
        Name = "OneCreatorX-Generales" 
    } 
})

Window:Initiate()