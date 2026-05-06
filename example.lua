debugX = true

-- Replace this loader with your private HeliX endpoint.
local HeliX = loadstring(game:HttpGet("https://your-private-loader/helix.lua"))()

local Window = HeliX:CreateWindow({
   Name = "HeliX Control Surface",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "HeliX",
   LoadingSubtitle = "Private Control Library",
   Theme = "HeliX", -- Available built-in themes: HeliX, SolarFlare, Verdant, Whiteout, Redline

   DisableHeliXLibPrompts = true,
   DisableBuildWarnings = false, -- Prevents the library from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "HeliXDemo"
   },

   Discord = {
      Enabled = false,
      Invite = "",
      RememberJoins = false
   },

   KeySystem = false, -- Set this to true to use the access gate
   KeySettings = {
      Title = "HeliX Access",
      Subtitle = "Authentication Gate",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "HeliXKey",
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like HeliX to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Core Systems", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Command Layer")

local Button = Tab:CreateButton({
   Name = "Run Sequence",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

HeliX:LoadConfiguration()
