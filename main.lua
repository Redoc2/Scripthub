-- DEFINE LIBRARY
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Redoc2/Scripthub/main/scripts.lua')))()
--DEFINE WINDOW
local Window = OrionLib:MakeWindow({Name = "ScriptHub", HidePremium = false, SaveConfig = true, ConfigFolder = "ScripHub1"})

-- DEFINE TABS
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


_G.Key = "Your fucking dad"
_G.KeyInput = "string"

function CorrectKey()
    -- Script Here!!
end
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
KS2Tab:AddLabel("KAT")
KS2Tab:AddButton({
    Name = "Aimbot + ESP",
    Callback = function()
        KATScript()
    end
})
KS2Tab:AddLabel("DaHood")
KS2Tab:AddButton({
    Name = "AllIn1",
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

SGTab:AddLabel("Energy Assault")
SGTab:AddLabel("Be A Parkour Ninja")
SGTab:AddLabel("KAT")
SGTab:AddLabel("DaHood")
-- DEFINE CREDITS TAB
CRTab:AddLabel("ScriptHub is made by:")
CRTab:AddLabel("Begula")

OrionLib:Init()
