local Library = loadstring(game:HttpGet("https://bitbucket.org/cat__/uis/raw/Loady/Module"))() 
local Window = Library:Window("Loady", function(Script)
    loadstring(game:HttpGet(Script), Script:split("/")[3])()
end)
Window:Game({
    Status = true,
    Script = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/OneCreatorX%203.lua",
    UpdateDate = Window:GitDate("AnonyProArg","ScriptsRobloz","OneCreatorX%203.lua"),
    Custom = {
        Name = "Generales-Tools" 
    } 
})

Window:Game({
    Status = true,
    Script = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/CoffeShop.lua",
    UpdateDate = Window:GitDate("AnonyProArg","ScriptsRobloz","CoffeShop.lua"),
    Place = 13276475159
})

Window:Game({
    Status = true,
    Script = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pasteler%C3%ADa/LaundryExe.lua",
    UpdateDate = Window:GitDate("AnonyProArg","ScriptsRobloz","Pasteler%C3%ADa/LaundryExe.lua"),
    Place = 6305942109
})

Window:Game({
    Status = true,
    Script = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/EjecuteAllCespet.lua",
    UpdateDate = Window:GitDate("AnonyProArg","ScriptsRobloz","EjecuteAllCespet.lua"),
    Place = 10108131074
})

Window:Game({
    Status = true,
    Script = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Pasteler%C3%ADa/ExePanaderia.lua",
    UpdateDate = Window:GitDate("AnonyProArg","ScriptsRobloz","Pasteler%C3%ADa/ExePanaderia.lua"),
    Place = 6915291292
})

Window:Game({
    Status = true,
    Script = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Exes/MeepCity.lua",
    UpdateDate = Window:GitDate("AnonyProArg","ScriptsRobloz","Exes/MeepCity.lua"),
    Place = 370731277
})

Window:Initiate()