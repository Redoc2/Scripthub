-- DEFINE LIBRARY

-- loadstring(game:HttpGet('https://raw.githubusercontent.com/Redoc2/Scripthub/main/main.lua'))()
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Scripthub", Text = "Made by Redoc_2"})
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Redoc2/Scripthub/main/scripts.lua')))()
--DEFINE WINDOW
local Window = OrionLib:MakeWindow({Name = "ScriptHub", HidePremium = false, SaveConfig = true, ConfigFolder = "ScripHub1"})

-- DEFINE TABS
local rec = Window:MakeTab({
    Name = "Recommended",
    Icon = " ",
    PremiumOnly = false
})
local KSTab = Window:MakeTab({
	Name = "Scripts P1",
	Icon = " ",
	PremiumOnly = false
})
local KS2Tab = Window:MakeTab({
    Name = "Scripts P2",
    Icon = " ",
    PremiumOnly = false
})
local MSTab = Window:MakeTab({
    Name = "Main Scripts",
    Icon = " ",
    PremiumOnly = false
})
local AIO = Window:MakeTab({
    Name = "All in one",
    Icon = " ",
    PremiumOnly = false
})

local SGTab = Window:MakeTab({
	Name = "Games",
	Icon = " ",
	PremiumOnly = false
})

local CRTab = Window:MakeTab({
	Name = "Credits",
	Icon = " ",
	PremiumOnly = false
})


_G.Key = "where 0n1kidd"
_G.KeyInput = "string"

function CorrectKey()
    -- Script Here!!
end
----------------------------------
--                              --
--        RECOMMENDED           --
--                              --
----------------------------------

local PlaceID = game.PlaceId

if PlaceID == 6172932937 then
  rec:AddLabel("Energy Assault")
  rec:AddButton({
	Name = "Silent Aim",
	Callback = function()
  	    EnergyAssaultSilentAim()
    end
})
rec:AddButton({
    Name = "ESP",
    Callback = function()
    EnergyAssaultESP()
    end
})
end
if PlaceID == 192800 then
    rec:AddLabel("Work At A Pizza Place")
rec:AddButton({
    Name = "All in one",
    Callback = function()
        PizzaPlace()
    end
})
end
if PlaceID == 147848991 then
    rec:AddLabel("Be A Parkour Ninja")
    rec:AddButton({
        Name = "Hitboxes",
        Callback = function()
            NinjaHitboxes()
        end
    })
end
if PlaceID == 2768379856 then
    rec:AddLabel("SCP 3008")
    rec:AddButton({
        Name = "All in One",
        Callback = function()
            loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/scripts/main/3008.lua')()
        end
    })
end
if PlaceID == 2788229376 then
    rec:AddLabel("DaHood")
    rec:AddButton({
        Name = "All in One",
        Callback = function()
            SwagMode()
        end
    })
end
if PlaceID == 6516141723 then
    rec:AddLabel("Doors")
    rec:AddButton({
        Name = "All in One",
        Callback = function()
            Doors()
        end
    })
end
if PlaceID == 142823291 then
    rec:AddLabel("Murder Mystery 2")
    rec:AddButton({
    Name = "All in One",
    Callback = function()
        MM2()
    end
})
end

----------------------------------
--                              --
--       RECOMMENDED END        --
--                              --
----------------------------------

KSTab:AddLabel("Energy Assault")
KSTab:AddButton({
	Name = "Silent Aim",
	Callback = function()
  	    EnergyAssaultSilentAim()
    end
})
KSTab:AddButton({
    Name = "ESP",
    Callback = function()
    EnergyAssaultESP()
    end
})
KSTab:AddLabel("Be A Parkour Ninja")
KSTab:AddButton({
    Name = "Hitboxes",
    Callback = function()
        NinjaHitboxes()
    end
})
KSTab:AddLabel("Work At A Pizza Place")
KSTab:AddButton({
    Name = "All in one",
    Callback = function()
        PizzaPlace()
    end
})
KSTab:AddLabel("SCP 3008")
KSTab:AddButton({
    Name = "All in One",
    Callback = function()
        loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/scripts/main/3008.lua')()
    end
})
KS2Tab:AddLabel("KAT")
KS2Tab:AddButton({
    Name = "Aimbot + ESP",
    Callback = function()
        KATScript()
    end
})
KS2Tab:AddLabel("DaHood")
KS2Tab:AddButton({
    Name = "All in One",
    Callback = function()
        SwagMode()
    end
})
KS2Tab:AddLabel("Doors")
KS2Tab:AddButton({
    Name = "All in One",
    Callback = function()
        Doors()
    end
})
KS2Tab:AddLabel("Murder Mystery 2")
KS2Tab:AddButton({
    Name = "All in One",
    Callback = function()
        MM2()
    end
})
KS2Tab:AddLabel("My Restaurant")
KS2Tab:AddButton({
    Name = "Autofarm",
    Callback = function()
	-- loadstring(game:HttpGet("https://rawscripts.net/raw/My-Restaurant!-Fast-Autofarm-4610"))()
	game:GetService("StarterGui"):SetCore("SendNotification", {Title = "ERROR | My Restaurant Autofarm", Text = "This script has been patched"})
    end
})

AIO:AddButton({
    Name = "Work at a Pizza Place",
    Callback = function()
        PizzaPlace()
    end
})
AIO:AddButton({
    Name = "Energy Assault",
    Callback = function()
        EnergyAssaultSilentAim()
        EnergyAssaultESP()
    end
})
AIO:AddButton({
    Name = "Doors",
    Callback = function()
        Doors()
    end
})
AIO:AddButton({
    Name = "DaHood",
    Callback = function()
        SwagMode()
    end
})


MSTab:AddButton({
    Name = "CMD-X",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
    end
})
MSTab:AddButton({
    Name = "Fates Admin",
    Callback = function()
        ------Fate's Admin (brought to you by Hacks Home)--------
loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
    end
})
MSTab:AddButton({
    Name = "Rejoin",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
})
MSTab:AddButton({
    Name = "AntiAFK",
    Callback = function()
	antiafk()
    end
})

SGTab:AddLabel("Energy Assault")
SGTab:AddLabel("Be A Parkour Ninja")
SGTab:AddLabel("KAT")
SGTab:AddLabel("DaHood")
SGTab:AddLabel("Work At A Pizza Place")
SGTab:AddLabel("Doors")
SGTab:AddLabel("Murder Mystery 2")
SGTAB:AddLabel("SCP 3008")
-- DEFINE CREDITS TAB
CRTab:AddLabel("ScriptHub is made by:")
CRTab:AddLabel("Begula")

OrionLib:Init()
