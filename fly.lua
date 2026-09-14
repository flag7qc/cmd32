local cmdName, args = ...

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Root = Char:WaitForChild("HumanoidRootPart")
local Hum = Char:WaitForChild("Humanoid")

if _G.FlyConnection then
	_G.FlyConnection:Disconnect()
	_G.FlyConnection = nil
end

if _G.FlyBV then
	_G.FlyBV:Destroy()
	_G.FlyBV = nil
end

if _G.FlyBG then
	_G.FlyBG:Destroy()
	_G.FlyBG = nil
end

if cmdName == "unfly" then
	Hum.PlatformStand = false
	return
end

local Speed = tonumber(args[1]) or 50
Hum.PlatformStand = true

local BV = Instance.new("BodyVelocity")
BV.MaxForce = Vector3.new(1e5, 1e5, 1e5)
BV.Velocity = Vector3.zero
BV.Parent = Root
_G.FlyBV = BV

local BG = Instance.new("BodyGyro")
BG.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
BG.CFrame = Root.CFrame
BG.Parent = Root
_G.FlyBG = BG

_G.FlyConnection = RunService.Heartbeat:Connect(function()
	if not Char or not Char.Parent or not Root or not Root.Parent then
		if _G.FlyConnection then
			_G.FlyConnection:Disconnect()
			_G.FlyConnection = nil
		end
		return
	end
	
	local camCF = workspace.CurrentCamera.CFrame
	BG.CFrame = camCF
	
	local moveDir = Vector3.zero
	
	if UserInputService:IsKeyDown(Enum.KeyCode.W) then
		moveDir = moveDir + camCF.LookVector
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.S) then
		moveDir = moveDir - camCF.LookVector
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.A) then
		moveDir = moveDir - camCF.RightVector
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.D) then
		moveDir = moveDir + camCF.RightVector
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
		moveDir = moveDir + Vector3.new(0, 1, 0)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
		moveDir = moveDir - Vector3.new(0, 1, 0)
	end
	
	if moveDir.Magnitude > 0 then
		BV.Velocity = moveDir.Unit * Speed
	else
		BV.Velocity = Vector3.zero
	end
end)
