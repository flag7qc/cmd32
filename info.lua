local info_ScreenGui = Instance.new("ScreenGui")
info_ScreenGui.Name = "info"
info_ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
	
local dragBase_Frame = Instance.new("Frame")
dragBase_Frame.Name = "dragBase"
dragBase_Frame.Size = UDim2.new(0, 275, 0, 396)
dragBase_Frame.Position = UDim2.new(0.35631549, 0, 0.24968473, 0)
dragBase_Frame.BackgroundColor3 = Color3.new(0, 0, 0)
dragBase_Frame.BorderSizePixel = 0
dragBase_Frame.Parent = info_ScreenGui

local helpframe_ScrollingFrame = Instance.new("ScrollingFrame")
helpframe_ScrollingFrame.Name = "helpframe"
helpframe_ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
helpframe_ScrollingFrame.Position = UDim2.new(0, 0, 0, 0)
helpframe_ScrollingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
helpframe_ScrollingFrame.BackgroundTransparency = 1
helpframe_ScrollingFrame.BorderSizePixel = 0
helpframe_ScrollingFrame.Parent = dragBase_Frame
	
local infolabel_TextLabel = Instance.new("TextLabel")
infolabel_TextLabel.Name = "infolabel"
infolabel_TextLabel.Size = UDim2.new(0, 200, 0, 50)
infolabel_TextLabel.Position = UDim2.new(0.13454546, 0, 0, 0)
infolabel_TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
infolabel_TextLabel.Text = "INFO"
infolabel_TextLabel.TextColor3 = Color3.new(1, 1, 1)
infolabel_TextLabel.TextSize = 14
infolabel_TextLabel.BackgroundTransparency = 1
infolabel_TextLabel.BorderSizePixel = 0
infolabel_TextLabel.TextScaled = true
infolabel_TextLabel.Font = Enum.Font.SourceSansBold
infolabel_TextLabel.Parent = helpframe_ScrollingFrame
	
local info1_TextLabel = Instance.new("TextLabel")
info1_TextLabel.Name = "info1"
info1_TextLabel.Size = UDim2.new(0, 200, 0, 50)
info1_TextLabel.Position = UDim2.new(0.13454546, 0, 0.04918033, 0)
info1_TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
info1_TextLabel.Text = "this is a command prompt based roblox exploit."
info1_TextLabel.TextColor3 = Color3.new(1, 1, 1)
info1_TextLabel.TextSize = 14
info1_TextLabel.BackgroundTransparency = 1
info1_TextLabel.BorderSizePixel = 0
info1_TextLabel.TextScaled = true
info1_TextLabel.Font = Enum.Font.SourceSans
info1_TextLabel.Parent = helpframe_ScrollingFrame
	
local info2_TextLabel = Instance.new("TextLabel")
info2_TextLabel.Name = "info2"
info2_TextLabel.Size = UDim2.new(0, 200, 0, 50)
info2_TextLabel.Position = UDim2.new(0.13454546, 0, 0.08070618, 0)
info2_TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
info2_TextLabel.Text = "i know this info sucks, but its all id write for now"
info2_TextLabel.TextColor3 = Color3.new(1, 1, 1)
info2_TextLabel.TextSize = 14
info2_TextLabel.BackgroundTransparency = 1
info2_TextLabel.BorderSizePixel = 0
info2_TextLabel.TextScaled = true
info2_TextLabel.Font = Enum.Font.SourceSans
info2_TextLabel.Parent = helpframe_ScrollingFrame
	
local maininfo_TextLabel = Instance.new("TextLabel")
maininfo_TextLabel.Name = "maininfo"
maininfo_TextLabel.Size = UDim2.new(0, 200, 0, 28)
maininfo_TextLabel.Position = UDim2.new(0.13454546, 0, 0.03152585, 0)
maininfo_TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
maininfo_TextLabel.Text = "Welcome, here you can view information of my system"
maininfo_TextLabel.TextColor3 = Color3.new(1, 1, 1)
maininfo_TextLabel.TextSize = 14
maininfo_TextLabel.BackgroundTransparency = 1
maininfo_TextLabel.BorderSizePixel = 0
maininfo_TextLabel.TextScaled = true
maininfo_TextLabel.Font = Enum.Font.SourceSans
maininfo_TextLabel.Parent = helpframe_ScrollingFrame
	
local info2_TextLabel2 = Instance.new("TextLabel")
info2_TextLabel2.Name = "info2"
info2_TextLabel2.Size = UDim2.new(0, 239, 0, 36)
info2_TextLabel2.Position = UDim2.new(0.06545454, 0, 0.11223203, 0)
info2_TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
info2_TextLabel2.Text = "(planning on fixing this in the future though)"
info2_TextLabel2.TextColor3 = Color3.new(1, 1, 1)
info2_TextLabel2.TextSize = 14
info2_TextLabel2.BackgroundTransparency = 1
info2_TextLabel2.BorderSizePixel = 0
info2_TextLabel2.TextScaled = true
info2_TextLabel2.Font = Enum.Font.SourceSans
info2_TextLabel2.Parent = helpframe_ScrollingFrame
	
local closebutton_TextButton = Instance.new("TextButton")
closebutton_TextButton.Name = "closebutton"
closebutton_TextButton.Size = UDim2.new(0, 26, 0, 21)
closebutton_TextButton.Position = UDim2.new(0, 0, 0, 0)
closebutton_TextButton.BackgroundColor3 = Color3.new(1, 0, 0)
closebutton_TextButton.Text = "X"
closebutton_TextButton.TextColor3 = Color3.new(1, 1, 1)
closebutton_TextButton.TextSize = 14
closebutton_TextButton.BorderSizePixel = 0
closebutton_TextButton.ZIndex = 5
closebutton_TextButton.Parent = dragBase_Frame

closebutton_TextButton.MouseButton1Click:Connect(function()
    info_ScreenGui:Destroy()
end)

local UserInputService = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos

dragBase_Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = dragBase_Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

dragBase_Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        dragBase_Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
