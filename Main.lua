--UI Library Stuff
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Atheios = Library.CreateLib("Atheios", "DarkTheme")
--

--Tab Stuff
local mainTab = Atheios:NewTab("Main", 6087485864)
local changelogTab = Atheios:NewTab("Changelog")
local autofarmTab = Atheios:NewTab("Auto-Farm")
local autobuyTab = Atheios:NewTab("Auto-Buy")
local miscTab = Atheios:NewTab("Misc")
local settingsTab = Atheios:NewTab("Settings")
--

--Sections
    --Main Tab Section
    local mainSection = mainTab:NewSection("Auto-Farm")

    --end

    --Changelog Tab Section
    local changelogSection = changelogTab:NewSection("Changelog")

    --end


    --Auto-Farm Tab Section
    local mainautofarmSection = autofarmTab:NewSection("Auto-Farm Options")
    
    --Toggles
    mainautofarmSection:NewToggle("Auto-Farm Ninjutsu", "Automatically Gains Ninjutsu for you.", function(isToggled)
        getgenv().AutoGainNinjutsu = isToggled
        while true do
            if not getgenv().AutoGainNinjutsu then return end
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("ninjitsuGain") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    break
                end
            end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
            wait()
        end
    end)

    mainautofarmSection:NewToggle("Auto-Sell Ninjutsu", "Automatically sells your Ninjutsu.", function(isToggled)
        getgenv().AutoSellNinjutsu = isToggled
        while true do
            if getgenv().AutoGainNinjutsu == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.5)
        end
    end)

    mainautofarmSection:NewToggle("Auto-Buy Swords", "Automatically buys Swords for you.", function(isToggled)
        getgenv().AutoBuySwords = isToggled
        while true do
            if not getgenv().AutoBuySwords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)

    mainautofarmSection:NewToggle("Auto-Buy Belts", "Automatically buys Belts for you.", function(isToggled)
        getgenv().AutoBuyBelts = isToggled
        while true do
            if not getgenv().AutoBuyBelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(1)
        end
    end)

    mainautofarmSection:NewToggle("Auto-Buy Skills", "Automatically buys Skills for you", function(isToggled)
        getgenv().AutoBuySkills = isToggled
        while true do
            if not getgenv().AutoBuySkills then return end
            local A_1 = "buyAllSkills"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(1)
        end
    end)

    mainautofarmSection:NewToggle("Auto-Buy Shurikens", "Automatically buys Shurikens for you", function(isToggled)
        getgenv().AutoBuyShurikens = isToggled
        while true do
            if not getgenv().AutoBuyShurikens then return end
            local A_1 = "buyAllShurikens"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(1)
        end
    end)

    --end

    --Misc Tab Section
    local mainmiscSection = miscTab:NewSection("Misc")

    --Toggles



    --Buttons
    mainmiscSection:NewButton("Unlock All Islands", "Unlocks all the Islands for you.", function ()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Enchanted Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Astral Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Mystical Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Space Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Tundra Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Eternal Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Sandstorm"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Thunderstorm"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Ancient Inferno Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Midnight Shadow Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Mythical Souls Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Winter Wonder Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Golden Master Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Dragon Legend Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Cybernetic Legends Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Skystorm Ultraus Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Chaos Legends Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Soul Fusion Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Dark Elements Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Inner Peace Island"].CFrame
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Blazing Vortex Island"].CFrame
    end)

    mainmiscSection:NewButton("Collect Chest Rewards", "Collects all the chest rewards for you, can also be used as 'Island Unlocker'.", function ()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").goldenChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").enchantedChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").magmaChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").mythicalChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").legendsChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").eternalChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").saharaChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").thunderChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").acientChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").midnightShadowChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").lightKarmaChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").wonderChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").goldenZenChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ultraNinjitsuChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").skystormMastersChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").chaosLegendsChest.circleInner.CFrame
        wait(1.7)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").soulFusionChest.circleInner.CFrame
    end)

    --end
