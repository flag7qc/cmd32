local cmdName, args = ...

local players = game:GetService("Players")
local plr = players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")

local targetSpeed = tonumber(args[1]) or 16
hum.WalkSpeed = targetSpeed
