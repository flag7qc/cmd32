local cmd32_ScreenGui = Instance.new("ScreenGui")
cmd32_ScreenGui.Name = "cmd32"
cmd32_ScreenGui.ResetOnSpawn = false
cmd32_ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
	
local cmdbar_TextBox = Instance.new("TextBox")
cmdbar_TextBox.Name = "cmdbar"
cmdbar_TextBox.Size = UDim2.new(0, 1914, 0, 15)
cmdbar_TextBox.Position = UDim2.new(-0.000431327847763896, 0, 0.9810844659805298, 0)
cmdbar_TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
cmdbar_TextBox.Text = ""
cmdbar_TextBox.TextColor3 = Color3.new(1, 1, 1)
cmdbar_TextBox.TextSize = 14
cmdbar_TextBox.AnchorPoint = Vector2.new(0, 0)
cmdbar_TextBox.Visible = true
cmdbar_TextBox.BackgroundTransparency = 0
cmdbar_TextBox.BorderSizePixel = 0
cmdbar_TextBox.BorderColor3 = Color3.new(0, 0, 0)
cmdbar_TextBox.ClearTextOnFocus = true
cmdbar_TextBox.Parent = cmd32_ScreenGui

local Commands = {
    ["fly"] = "https://raw.githubusercontent.com/flag7qc/cmd32/refs/heads/main/fly.lua",
    ["unfly"] = "https://raw.githubusercontent.com/flag7qc/cmd32/refs/heads/main/fly.lua"
}

cmdbar_TextBox.FocusLost:Connect(function(enterPressed)
    if not enterPressed then return end
    
    local text = cmdbar_TextBox.Text
    cmdbar_TextBox.Text = ""
    
    local args = string.split(text, " ")
    local commandName = string.lower(table.remove(args, 1))
    
    local targetUrl = Commands[commandName]
    
    if targetUrl then
        task.spawn(function()
            local success, scriptContent = pcall(function()
                return game:HttpGet(targetUrl)
            end)
            
            if success and scriptContent then
                local runSuccess, runError = pcall(function()
                    local exec = loadstring(scriptContent)
                    if exec then
                        exec(commandName, args)
                    end
                end)
                if not runSuccess then
                    warn(runError)
                end
            end
        end)
    end
end)
