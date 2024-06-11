print("what the sigma")
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 Apex Hub | Bee Swarm Simulator 🔫",
   LoadingTitle = "🔫 Bee Swarm Simulator 💥",
   LoadingSubtitle = "by aryxn.mcr",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = apex,
      FileName = "apexhub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "Key | apex hub",
      Subtitle = "Key System",
      Note = "Get From Discord",
      FileName = "apexhubbsskey",
      SaveKey = true,
      GrabKeyFromSite = true, 
      Key = {"https://raw.githubusercontent.com/aryanmcr/apexhub/main/key"}
   }
})

getgenv().settings = {
  "Version" = "1.0.0",
  "Autofarm" = false,
  "AutoVicious" = false,
  "ServerHopVicious" = false,
  "JumpPower" = 50,
  "WalkSpeed" = 16,
  "ViciousDetected" = false,
}

local MainTab = Window:CreateTab("🏠 Home", nil)
local MainSection = MainTab:CreateSection("Autofarm")

local AutoFarmToggle = MainSection:CreateToggle({
   Name = "Autofarm",
   CurrentValue = false,
   Flag = "Autofarm",
   Callback = function(Value)
     getgenv.settings[Autofarm] = Value
   end,
})

local CombatTab = Window:CreateTab("⚔️ Combat", nil) 
local CombatSection = CombatTab:CreateSection("Bosses")

local AutoViciousToggle = CombatSection:CreateToggle({
   Name = "Auto Kill Vicious",
   CurrentValue = false,
   Flag = "AutoVicous",
   Callback = function(Value)
        getgenv.settings[AutoVicous] = Value
   end,
})

local ServerHopToggle = CombatSection:CreateToggle({
   Name = "ServerHop for bosses",
   CurrentValue = false,
   Flag = "ServerHop", 
   Callback = function(Value)
        getgenv.settings[ServerHopVicious] = Value
   end,
})

local OtherTab = Window:CreateTab("🌍 Misc", nil)
local OtherSection = OtherTab:CreateSection("Player")

local WalkSpeedSlider = OtherSection:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "WalkSpeed",
   CurrentValue = 16,
   Flag = "sliderws", 
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
      getgenv.settings[WalkSpeed] = Value
   end,
})

local JumpPowerSlider = OtherSection:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "JumpPower",
   CurrentValue = 50,
   Flag = "sliderjp",
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
      getgenv.settings[JumpPower] = Value
   end,
})

local function loop()
  print(getgenv.settings)
end
