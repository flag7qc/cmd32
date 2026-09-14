local help_ScreenGui = Instance.new("ScreenGui")
help_ScreenGui.Name = "help"
help_ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
	
local helpframe_Frame = Instance.new("Frame")
helpframe_Frame.Name = "helpframe"
helpframe_Frame.Size = UDim2.new(0, 247, 0, 364)
helpframe_Frame.Position = UDim2.new(0.3635453, 0, 0.26986128, 0)
helpframe_Frame.BackgroundColor3 = Color3.new(0, 0, 0)
helpframe_Frame.AnchorPoint = Vector2.new(0, 0)
helpframe_Frame.Visible = true
helpframe_Frame.BackgroundTransparency = 0
helpframe_Frame.BorderSizePixel = 0
helpframe_Frame.BorderColor3 = Color3.new(0, 0, 0)
helpframe_Frame.Parent = help_ScreenGui
	
local help_label_TextLabel = Instance.new("TextLabel")
help_label_TextLabel.Name = "help label"
help_label_TextLabel.Size = UDim2.new(0, 200, 0, 50)
help_label_TextLabel.Position = UDim2.new(0.09311741, 0, 0, 0)
help_label_TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
help_label_TextLabel.Text = "Help"
help_label_TextLabel.TextColor3 = Color3.new(1, 1, 1)
help_label_TextLabel.TextSize = 14
help_label_TextLabel.AnchorPoint = Vector2.new(0, 0)
help_label_TextLabel.Visible = true
help_label_TextLabel.BackgroundTransparency = 1
help_label_TextLabel.BorderSizePixel = 0
help_label_TextLabel.BorderColor3 = Color3.new(0, 0, 0)
help_label_TextLabel.TextScaled = true
help_label_TextLabel.Font = Enum.Font.SourceSansBold
help_label_TextLabel.Parent = helpframe_Frame
	
local exitbutton_TextButton = Instance.new("TextButton")
exitbutton_TextButton.Name = "exitbutton"
exitbutton_TextButton.Size = UDim2.new(0, 23, 0, 27)
exitbutton_TextButton.Position = UDim2.new(0, 0, 0, 0)
exitbutton_TextButton.BackgroundColor3 = Color3.new(1, 0, 0)
exitbutton_TextButton.Text = "X"
exitbutton_TextButton.TextColor3 = Color3.new(1, 1, 1)
exitbutton_TextButton.TextSize = 14
exitbutton_TextButton.AnchorPoint = Vector2.new(0, 0)
exitbutton_TextButton.Visible = true
exitbutton_TextButton.BackgroundTransparency = 0
exitbutton_TextButton.BorderSizePixel = 0
exitbutton_TextButton.BorderColor3 = Color3.new(0, 0, 0)
exitbutton_TextButton.ZIndex = 5
exitbutton_TextButton.Parent = helpframe_Frame
	
local help1_TextLabel = Instance.new("TextLabel")
help1_TextLabel.Name = "help1"
help1_TextLabel.Size = UDim2.new(0, 200, 0, 50)
help1_TextLabel.Position = UDim2.new(0.09311741, 0, 0.17307693, 0)
help1_TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
help1_TextLabel.Text = "Command hub exploit."
help1_TextLabel.TextColor3 = Color3.new(1, 1, 1)
help1_TextLabel.TextSize = 14
help1_TextLabel.AnchorPoint = Vector2.new(0, 0)
help1_TextLabel.Visible = true
help1_TextLabel.BackgroundTransparency = 1
help1_TextLabel.BorderSizePixel = 0
help1_TextLabel.BorderColor3 = Color3.new(0, 0, 0)
help1_TextLabel.TextScaled = true
help1_TextLabel.Font = Enum.Font.SourceSans
help1_TextLabel.Parent = helpframe_Frame
	
local help2_TextLabel = Instance.new("TextLabel")
help2_TextLabel.Name = "help2"
help2_TextLabel.Size = UDim2.new(0, 200, 0, 58)
help2_TextLabel.Position = UDim2.new(0.09311741, 0, 0.31043956, 0)
help2_TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
help2_TextLabel.Text = "Type commands to bring commands, and type hubs to bring up hubs."
help2_TextLabel.TextColor3 = Color3.new(1, 1, 1)
help2_TextLabel.TextSize = 14
help2_TextLabel.AnchorPoint = Vector2.new(0, 0)
help2_TextLabel.Visible = true
help2_TextLabel.BackgroundTransparency = 1
help2_TextLabel.BorderSizePixel = 0
help2_TextLabel.BorderColor3 = Color3.new(0, 0, 0)
help2_TextLabel.TextScaled = true
help2_TextLabel.Font = Enum.Font.SourceSans
help2_TextLabel.Parent = helpframe_Frame
	
local help3_TextLabel = Instance.new("TextLabel")
help3_TextLabel.Name = "help3"
help3_TextLabel.Size = UDim2.new(0, 200, 0, 50)
help3_TextLabel.Position = UDim2.new(0.09311741, 0, 0.5054945, 0)
help3_TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
help3_TextLabel.Text = "i will only try to offer safe exploits made by others."
help3_TextLabel.TextColor3 = Color3.new(1, 1, 1)
help3_TextLabel.TextSize = 14
help3_TextLabel.AnchorPoint = Vector2.new(0, 0)
help3_TextLabel.Visible = true
help3_TextLabel.BackgroundTransparency = 1
help3_TextLabel.BorderSizePixel = 0
help3_TextLabel.BorderColor3 = Color3.new(0, 0, 0)
help3_TextLabel.TextScaled = true
help3_TextLabel.Font = Enum.Font.SourceSans
help3_TextLabel.Parent = helpframe_Frame
	
local help4_TextLabel = Instance.new("TextLabel")
help4_TextLabel.Name = "help4"
help4_TextLabel.Size = UDim2.new(0, 200, 0, 76)
help4_TextLabel.Position = UDim2.new(0.09311741, 0, 0.67582417, 0)
help4_TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
help4_TextLabel.Text = "sorry for being so lazy on this, thats just the person i am."
help4_TextLabel.TextColor3 = Color3.new(1, 1, 1)
help4_TextLabel.TextSize = 14
help4_TextLabel.AnchorPoint = Vector2.new(0, 0)
help4_TextLabel.Visible = true
help4_TextLabel.BackgroundTransparency = 1
help4_TextLabel.BorderSizePixel = 0
help4_TextLabel.BorderColor3 = Color3.new(0, 0, 0)
help4_TextLabel.TextScaled = true
help4_TextLabel.Font = Enum.Font.SourceSans
help4_TextLabel.Parent = helpframe_Frame

exitbutton_TextButton.MouseButton1Click:Connect(function()
    help_ScreenGui:Destroy()
end)

local UserInputService = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos

helpframe_Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = helpframe_Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

helpframe_Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        helpframe_Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
