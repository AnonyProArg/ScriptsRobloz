local Library = loadstring(game:HttpGet("https://bitbucket.org/cat__/uis/raw/bb4228f2f970aad3c4a901161da5e678fb8e14ef/Module"))() 
local Window = Library:Window("Loady", function(Script)
print('Loaded', Script)
end)
Window:Game({
    Status = true,
    Script = "Hi",
    Place = 3101667897
})

Window:Initiate()

