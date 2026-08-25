local WindUI = loadstring(game:HttpGet(
    "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
))()

local Device = nil
local Loading = false

local function LoadHub()
    if Loading then
        return
    end

    Loading = true

    if Device == "Mobile" then
        local Success, Error = pcall(function()
            local Source = game:HttpGet(
                "https://raw.githubusercontent.com/Monarchyz/MonarchyHub/main/FleeTheFacilityMobile.lua"
            )

            local Hub = loadstring(Source)

            if Hub then
                Hub()
            end
        end)

        if not Success then
            warn("Mobile Hub Error:", Error)
        end

    elseif Device == "Desktop" then
        local Success, Error = pcall(function()
            local Source = game:HttpGet(
                "https://raw.githubusercontent.com/Monarchyz/MonarchyHub/main/FleeTheFacilityPc.lua"
            )

            local Hub = loadstring(Source)

            if Hub then
                Hub()
            end
        end)

        if not Success then
            warn("Desktop Hub Error:", Error)
        end
    end
end

WindUI:Popup({
    Title = "Escolha seu dispositivo",
    Icon = "rbxassetid://75944090876995",
    Content = "Selecione a versão para seu dispositivo",

    Buttons = {
        {
            Title = "Mobile",
            Variant = "Primary",

            Callback = function()
                Device = "Mobile"
                LoadHub()
            end
        },

        {
            Title = "Desktop",
            Variant = "Primary",

            Callback = function()
                Device = "Desktop"
                LoadHub()
            end
        },

        {
            Title = "Cancelar",
            Variant = "Secondary",

            Callback = function()
                Device = nil
            end
        }
    }
})