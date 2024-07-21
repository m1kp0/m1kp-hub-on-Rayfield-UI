local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local DefaultWalkSpeed = 16 
local SprintSpeed = 25 
 
local CameraEffect = true 
local FieldOfView = 80 
local cas = game:GetService("ContextActionService")
local Leftc = Enum.KeyCode.LeftControl
local RightC = Enum.KeyCode.RightControl
local player = game:GetService("Players").LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local Humanoid = char:WaitForChild("Humanoid")
 
local Camera = game.Workspace.CurrentCamera
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
 
 
UIS.InputBegan:Connect(function(key, gameProcessed)
 if gameProcessed then return end
 if key.KeyCode == Enum.KeyCode.LeftShift then
  if CameraEffect == true then
   TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = FieldOfView}):Play()
  end
  Humanoid.WalkSpeed = SprintSpeed
 end
end)

cas:BindAction("Sprint", handleContext, true, Leftc, RightC)
cas:SetPosition("Sprint", UDim2.new(.2, 0, .5, 0))
cas:SetTitle("Sprint", "Sprint")
cas:GetButton("Sprint").Size = UDim2.new(.3, 0, .3, 0)

local farm = game.Workspace.Map.BarnHillArea.Farm
local CameraBlur = game.Workspace.Camera.Blur

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
      Key = {"Hello"} 
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
    Range = {0, 500},
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
