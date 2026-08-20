local WindUI = loadstring(game:HttpGet(
    "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
))()

local Language = nil

local function LoadHub()
    if Language == "Portuguese" then
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/Monarchyz/MonarchyHub/main/FleeTheFacility.lua"
        ))()

    elseif Language == "English" then
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/Monarchyz/MonarchyHub/main/FleeTheFacilityEng.lua"
        ))()
    end
end

WindUI:Popup({
    Title = "Welcome!",
    Icon = "rbxassetid://75944090876995",
    Content = "Select your language / Escolha seu idioma",

    Buttons = {
        {
            Title = " Português",
            Variant = "Primary",

            Callback = function()
                Language = "Portuguese"
                LoadHub()
            end
        },

        {
            Title = " English",
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