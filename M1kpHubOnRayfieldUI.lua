local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

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
    CurrentValue = 50,
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

