local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")

local player = Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CtrlImageGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local ctrlButton = Instance.new("ImageButton")
ctrlButton.Name = "CtrlImageButton"
ctrlButton.Size = UDim2.new(0, 50, 0, 50)
ctrlButton.Position = UDim2.new(0, 10, 0, 10)
ctrlButton.BackgroundTransparency = 1
ctrlButton.Image = "rbxassetid://7743870392"
ctrlButton.Parent = screenGui

ctrlButton.MouseButton1Click:Connect(function()
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
    wait(0.1)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.LeftControl, false, game)
end)
