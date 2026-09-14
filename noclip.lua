local cmdName, args = ...

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()

if _G.NoclipConnection then
	_G.NoclipConnection:Disconnect()
	_G.NoclipConnection = nil
end

if cmdName == "unnoclip" then
	return
end

_G.NoclipConnection = RunService.Stepped:Connect(function()
	if not Char or not Char.Parent then
		if _G.NoclipConnection then
			_G.NoclipConnection:Disconnect()
			_G.NoclipConnection = nil
		end
		return
	end
	
	for _, part in ipairs(Char:GetChildren()) do
		if part:IsA("BasePart") then
			part.CanCollide = false
		end
	end
end)
