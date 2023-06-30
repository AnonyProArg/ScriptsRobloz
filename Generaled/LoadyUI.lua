local function AddScriptButton(url, placeID)
    local scriptName = string.match(url, ".+/([^/]*%.%w+)$") -- Extrae el nombre del script de la URL
    local gitDate = Window:GitDate("AnonyProArg", "ScriptsRobloz", scriptName) -- Obtiene la fecha de actualización desde GitDate

    local format = string.format("Window:Game({\n    Status = true,\n    Script = \"%s\",\n    UpdateDate = Window:GitDate(\"AnonyProArg\",\"ScriptsRobloz\",\"%s\"),\n    Place = %s\n})\n", url, scriptName, placeID)
    return format
end

local function ProcessLinks(links)
    local result = ""
    for _, link in ipairs(links) do
        local status, url = string.match(link, "(%a+):(.+)")
        if status and url then
            local format
            if status == "true" then
                local scriptURL, placeID = string.match(url, "(.+):(.+)")
                if scriptURL and placeID then
                    format = AddScriptButton(scriptURL, placeID)
                end
            else
                format = AddScriptButton(url, "")
            end
            if format then
                result = result .. format
            end
        end
    end
    return result
end

local function DownloadLinksFile(url)
    local response = http.request("GET", url)
    if response and response.body then
        return response.body
    end
    return nil
end

local function ExtractLinksFromLuaScript(script)
    local links = {}
    local loadFunction = loadstring or load
    local success, parsedScript = pcall(loadFunction, script)
    if success and parsedScript then
        if type(parsedScript) == "table" and parsedScript.links then
            links = parsedScript.links
        end
    end
    return links
end

local linksURL = "https://raw.githubusercontent.com/AnonyProArg/ScriptsRobloz/main/Generaled/Links.lua"
local linksScript = DownloadLinksFile(linksURL)
if linksScript then
    local links = ExtractLinksFromLuaScript(linksScript)
    local formattedCode = ProcessLinks(links)

    local finalCode = [[
local Library = loadstring(game:HttpGet("https://bitbucket.org/cat__/uis/raw/Loady/Module"))()
local Window = Library:Window("Loady", function(Script)
    loadstring(game:HttpGet(Script))()
end)

]] .. formattedCode .. [[

Window:Initiate()
]]

    print(finalCode)
else
    print("Failed to download links script.")
end
