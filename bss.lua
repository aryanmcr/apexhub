-- Auto click to prevent idle
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)


-- Claim unowned hives
local hives = game.Workspace.Honeycombs:GetChildren() 
for i = #hives, 1, -1 do  
    local v = game.Workspace.Honeycombs:GetChildren()[i] 
    if v.Owner.Value == nil then 
        game.ReplicatedStorage.Events.ClaimHive:FireServer(v.HiveID.Value) 
    end 
end

-- Load APIs
local api = loadstring(game:HttpGet('https://raw.githubusercontent.com/aryanmcr/apexhub/main/api.lua'))()

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

--Key System

local KeyWindow = Library:CreateWindow({
    -- Set AutoShow to true if you want the menu to appear when it is created

    Title = 'Apex Hub - Key System',
    Center = true,
    AutoShow = true,
    Size = UDim2.new(0, 300, 0, 400),
    TabPadding = 8,
    MenuFadeTime = 0.2
})

local KeyTabs = {
    KeyTabMain = KeyWindow:AddTab('Key System'),
}

local KeyLeftGroupBox = KeyTabs.KeyTabMain:AddLeftGroupbox('Key')

KeyLeftGroupBox:AddInput('KeyTextBox', {
    Default = 'Input Key Here!',
    Numeric = true, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'Input your key here!',
    Tooltip = 'Get Key From Discord!', -- Information shown when you hover over the textbox

    Placeholder = 'Key', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
        print('[cb] Text updated. New text:', Value)
    end
})

Options.MyTextbox:OnChanged(function()
    print('Text updated. New text:', Options.MyTextbox.Value)
end)
