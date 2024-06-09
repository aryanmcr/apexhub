local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 Apex Hub | Bee Swarm Simulator 🔫",
   LoadingTitle = "🔫 Bee Swarm Simulator 💥",
   LoadingSubtitle = "by aryxn.mcr",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = apex, -- Create a custom folder for your hub/game
      FileName = "apexhub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | apex hub",
      Subtitle = "Key System",
      Note = "Get From Discord",
      FileName = "apexhubbsskey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://raw.githubusercontent.com/aryanmcr/apexhub/main/key"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Autofarm")

local Toggle = MainTab:CreateToggle({
   Name = "Auto Farm",
   CurrentValue = false,
   Flag = "AutoFarm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        print("FARMING")
   end,
})

local CombatTab = Window:CreateTab("⚔️ Combat", nil) -- Title, Image
local CombatSection = CombatTab:CreateSection("Bosses")
local Toggle = CombatSection:CreateToggle({
   Name = "Auto Kill Vicious",
   CurrentValue = false,
   Flag = "AutoVicous", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        print("AUTO VICOUS")
        _G.AutoVicious = Value
   end,
})
local Toggle = CombatSection:CreateToggle({
   Name = "ServerHop for bosses",
   CurrentValue = false,
   Flag = "ServerHop", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        print("SERVERHOP")
        _G.ServerHop = Value
   end,
})

local OtherTab = Window:CreateTab("🌍 Misc")
local OtherSection = OtherTab:CreateSection("Player")

local Slider = OtherSection:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = OtherSection:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})
