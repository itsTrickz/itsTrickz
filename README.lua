local teleportOptions = {
    ["deep"] = CFrame.new(-1615.99304, -232.975464, -2899.59741),
    ["deep pool"] = CFrame.new(-1796.99304, -144.975464, -3345.59741)
}

local function createMenu()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 100)
    frame.Position = UDim2.new(0.5, -100, 0.5, -50)
    frame.Parent = screenGui

    for name, position in pairs(teleportOptions) do
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(1, 0, 0, 50)
        button.Text = "Teleport to " .. name
        button.Parent = frame
        
        button.MouseButton1Click:Connect(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
        end)
    end
end

createMenu()
