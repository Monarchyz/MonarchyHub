local WindUI = loadstring(game:HttpGet(
    "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
))()

local Language = nil
local Loading = false

local function LoadHub()
    if Loading then
        return
    end

    Loading = true

    if Language == "Portuguese" then
        local Success, Error = pcall(function()
            local Source = game:HttpGet(
                "https://raw.githubusercontent.com/Monarchyz/MonarchyHub/main/FleeTheFacilityBr.lua"
            )

            local Hub = loadstring(Source)

            if Hub then
                Hub()
            end
        end)

        if not Success then
            warn("Portuguese Hub Error:", Error)
        end

    elseif Language == "English" then
        local Success, Error = pcall(function()
            local Source = game:HttpGet(
                "https://raw.githubusercontent.com/Monarchyz/MonarchyHub/main/FleeTheFacilityEng.lua"
            )

            local Hub = loadstring(Source)

            if Hub then
                Hub()
            end
        end)

        if not Success then
            warn("English Hub Error:", Error)
        end
    end
end

WindUI:Popup({
    Title = "Welcome!",
    Icon = "rbxassetid://75944090876995",
    Content = "Select your language / Escolha seu idioma",

    Buttons = {
        {
            Title = "Portugues",
            Variant = "Primary",

            Callback = function()
                Language = "Portuguese"
                LoadHub()
            end
        },

        {
            Title = "English",
            Variant = "Primary",

            Callback = function()
                Language = "English"
                LoadHub()
            end
        },

        {
            Title = "Cancel",
            Variant = "Secondary",

            Callback = function()
                Language = nil
            end
        }
    }
})
