local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local farm = game.Workspace.Map.BarnHillArea.Farm
local CameraBlur = game.Workspace.Camera.Blur

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local userInputService = game:GetService("UserInputService")
 
local isSprinting = false
local walkSpeed = humanoid.WalkSpeed
local sprintSpeed = 5 * walkSpeed -- You can adjust the sprint speed multiplier here
 
local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.C then
        isSprinting = true
        humanoid.WalkSpeed = sprintSpeed
    end
end
 
local function onKeyRelease(input)
    if input.KeyCode == Enum.KeyCode.C then
        isSprinting = false
        humanoid.WalkSpeed = walkSpeed
    end
end
 
userInputService.InputBegan:Connect(onKeyPress)
userInputService.InputEnded:Connect(onKeyRelease)
 
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local userInputService = game:GetService("UserInputService")
 
local isSprinting = false
local walkSpeed = humanoid.WalkSpeed
local sprintSpeed = 10 * walkSpeed -- You can adjust the sprint speed multiplier here
 
local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.X then
        isSprinting = true
        humanoid.WalkSpeed = sprintSpeed
    end
end
 
local function onKeyRelease(input)
    if input.KeyCode == Enum.KeyCode.X then
        isSprinting = false
        humanoid.WalkSpeed = walkSpeed
    end
end
 
userInputService.InputBegan:Connect(onKeyPress)
userInputService.InputEnded:Connect(onKeyRelease)

local Window = Rayfield:CreateWindow({
   Name = "m1kp hub",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by m1kp",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, 
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", 
      RememberJoins = true 
   },
   KeySystem = false, 
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"m1kp"} 
   }
})

local Player = Window:CreateTab("Player", 4483362458)

local Slider = Player:CreateSlider({
   Name = "Speed",
   Range = {0, 200},
   Increment = 1,
   Sufflix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", 
   Callback = function (speed)
        while game:GetService("RunService").RenderStepped:wait() do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
        end
   end,
})

local Slider = Player:CreateSlider({
    Name = "Jump",
    Range = {0, 1000},
    Increment = 1,
    Sufflix = "Speed",
    CurrentValue = 30,
    Flag = "Slider1", 
    Callback = function (jump)
        while game:GetService("RunService").RenderStepped:wait() do
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
        end
    end,
 })

 local Slider = Player:CreateSlider({
   Name = "Gravity",
   Range = {0, 500},
   Increment = 1,
   Sufflix = "Speed",
   CurrentValue = 190,
   Flag = "Slider1", 
   Callback = function (gravity)
       while game:GetService("RunService").RenderStepped:wait() do
       game.Workspace.Gravity = gravity
       end
   end,
})

local FpsBoost = Window:CreateTab("Fps Boost", 4483362458)

local Button = FpsBoost:CreateButton({
   Name = "Delete farm",
   Callback = function()
      farm:Destroy()
   end,
})

local Button = FpsBoost:CreateButton({
   Name = "Delete camera blur",
   Callback = function()
      CameraBlur:Destroy()
   end,
})
