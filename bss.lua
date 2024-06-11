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
   },
})

getgenv().settings = {  
  Version = "1.0.0",
  Autofarm = false,
  AutoVicious = false,
  ServerHopVicious = false,
  JumpPower = 50,
  WalkSpeed = 16,
  ViciousDetected = false,
}

local HomeTab = Window:CreateTab("🏠 Home", nil)
local MainTab = Window:CreateTab("🤖 Main", nil)
local CombatTab = Window:CreateTab("⚔️ Combat", nil) 
local OtherTab = Window:CreateTab("🌍 Other", nil)

local InfoSection = HomeTab:CreateSection("Information")
local OtherSection = OtherTab:CreateSection("Player")
local MainSection = MainTab:CreateSection("Autofarm")
local CombatSection = CombatTab:CreateSection("Bosses")
  
local PlayerUserText = HomeTab:CreateLabel("Welcome, "..game.Players.LocalPlayer.DisplayName.. " (" ..game.Players.LocalPlayer.Name.. ")")
local ScriptVersionText = HomeTab:CreateLabel("Script Version: "..getgenv().settings.Version)

local AutoFarmToggle = MainTab:CreateToggle({
   Name = "Autofarm",
   CurrentValue = false,
   Flag = "Autofarm",
   Callback = function(Value)
     getgenv.settings[Autofarm] = Value
   end,
})

local AutoViciousToggle = CombatTab:CreateToggle({
   Name = "Auto Kill Vicious",
   CurrentValue = false,
   Flag = "AutoVicous",
   Callback = function(Value)
        getgenv.settings[AutoVicous] = Value
   end,
})

local ServerHopToggle = CombatTab:CreateToggle({
   Name = "ServerHop for bosses",
   CurrentValue = false,
   Flag = "ServerHop", 
   Callback = function(Value)
        getgenv.settings[ServerHopVicious] = Value
   end,
})

local WalkSpeedSlider = OtherTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "WalkSpeed",
   CurrentValue = 16,
   Flag = "sliderws", 
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
      getgenv.settings[WalkSpeed] = Value
      WalkSpeedSlider:Set(Value)
   end,
})

local JumpPowerSlider = OtherTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "JumpPower",
   CurrentValue = 50,
   Flag = "sliderjp",
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
      getgenv.settings[JumpPower] = Value
      JumpPowerSlider:Set(Value)
   end,
})

local function loop()
  print(getgenv.settings)
  if getgenv.settings[AutoVicous] then
      if getgenv.settings[ViciousDetected] then
        print("Vicious Detected")
      else
        print("Finding Vicious")
        local found = false
        if found then
          print("Found Vicious")
        else
          if getgenv.settings[ServerHopVicious] then
            print("Hopping Server")
          end
        end
      end
  end
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = (getgenv.settings[JumpPower])
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (getgenv.settings[WalkSpeed])
end

while wait(0.5) do
  loop()
end
