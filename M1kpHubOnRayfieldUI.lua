local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


--CONFIGURATIONS--------------------------------------------
local DefaultWalkSpeed = 16 --Player walkspeed when sprinting
local SprintSpeed = 25 --Player walkspeed when walking
 
local CameraEffect = true --Toggle FOV on/off when sprinting is enabled
local FieldOfView = 80 --Camera FOV when sprinting (only if CameraEffect is enabled)
--------------------------------------------------------------
 
--DANGER ZONE-----------------------------------------------
local cas = game:GetService("ContextActionService")
local Leftc = Enum.KeyCode.LeftControl
local RightC = Enum.KeyCode.RightControl
local player = game:GetService("Players").LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local Humanoid = char:WaitForChild("Humanoid")
 
local Camera = game.Workspace.CurrentCamera
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
 
--PC
 
UIS.InputBegan:Connect(function(key, gameProcessed)
 if gameProcessed then return end
 if key.KeyCode == Enum.KeyCode.LeftShift then
  if CameraEffect == true then
   TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = FieldOfView}):Play()
  end
  Humanoid.WalkSpeed = SprintSpeed
 end
end)
 
UIS.InputEnded:Connect(function(key, gameProcessed)
 if gameProcessed then return end
 if key.KeyCode == Enum.KeyCode.LeftShift then
  if CameraEffect == true then
   TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 70}):Play()
  end
  Humanoid.WalkSpeed = DefaultWalkSpeed
 end
end)
 
--Mobile
 
local function handleContext(name, state, input)
 if state == Enum.UserInputState.Begin then
  if CameraEffect == true then
   TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = FieldOfView}):Play()
  end
  Humanoid.WalkSpeed = SprintSpeed
 else
  if CameraEffect == true then
   TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 70}):Play()
  end
  Humanoid.WalkSpeed = DefaultWalkSpeed
 end
end
 
cas:BindAction("Sprint", handleContext, true, Leftc, RightC)
cas:SetPosition("Sprint", UDim2.new(.2, 0, .5, 0))
cas:SetTitle("Sprint", "Sprint")
cas:GetButton("Sprint").Size = UDim2.new(.3, 0, .3, 0)
--------------------------------------------------------------
Advertisement
Add Comment
Please, Sign In to add comment
Advertisement
create new paste  /  syntax languages  /  archive  /  faq  /  tools  /  night mode  /  api  /  scraping api  /  news  /  pro
privacy statement  /  cookies policy  /  terms of service /  security disclosure  /  dmca  /  report abuse  /  contact

No 
--CONFIGURATIONS--------------------------------------------
local DefaultWalkSpeed = 16 --Player walkspeed when sprinting
local SprintSpeed = 25 --Player walkspeed when walking
 
local CameraEffect = true --Toggle FOV on/off when sprinting is enabled
local FieldOfView = 80 --Camera FOV when sprinting (only if CameraEffect is enabled)
--------------------------------------------------------------
 
--DANGER ZONE-----------------------------------------------
local cas = game:GetService("ContextActionService")
local Leftc = Enum.KeyCode.LeftControl
local RightC = Enum.KeyCode.RightControl
local player = game:GetService("Players").LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local Humanoid = char:WaitForChild("Humanoid")
 
local Camera = game.Workspace.CurrentCamera
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
 
--PC
 
UIS.InputBegan:Connect(function(key, gameProcessed)
 if gameProcessed then return end
 if key.KeyCode == Enum.KeyCode.LeftShift then
  if CameraEffect == true then
   TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = FieldOfView}):Play()
  end
  Humanoid.WalkSpeed = SprintSpeed
 end
end)
 
UIS.InputEnded:Connect(function(key, gameProcessed)
 if gameProcessed then return end
 if key.KeyCode == Enum.KeyCode.LeftShift then
  if CameraEffect == true then
   TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 70}):Play()
  end
  Humanoid.WalkSpeed = DefaultWalkSpeed
 end
end)
 
--Mobile
 
local function handleContext(name, state, input)
 if state == Enum.UserInputState.Begin then
  if CameraEffect == true then
   TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = FieldOfView}):Play()
  end
  Humanoid.WalkSpeed = SprintSpeed
 else
  if CameraEffect == true then
   TweenService:Create(Camera, TweenInfo.new(0.5), {FieldOfView = 70}):Play()
  end
  Humanoid.WalkSpeed = DefaultWalkSpeed
 end
end
 
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
