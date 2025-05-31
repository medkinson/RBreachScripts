local char = workspace.Map
local whitelisted_names = {
    'HCZCheckpoint',
    'LCZCheckpoint',
    'HallArmory',
    'RoomStorage',
    'RoomStorage2',
    'Room914',
    'GateA',
    'HallTestingChamber',
    'ServerRoom',
    'HallNuke',
    'GateB'
}

local function createLabels()
    for _, p in char:GetChildren() do
        if table.find(whitelisted_names, p.Name) then
            local part = p:FindFirstChildWhichIsA('Part')
            if part and not part:FindFirstChildOfClass("BillboardGui") then
                local gui = Instance.new('BillboardGui', part) 
                gui.Size = UDim2.new(0, 50, 0, 50)
                gui.AlwaysOnTop = true
                local label = Instance.new('TextLabel', gui)
                label.Size = UDim2.new(1, 0, 1, 0)
                label.Text = p.Name
                label.BackgroundTransparency = 1
                label.TextColor3 = Color3.new(1, 1, 1)
                label.TextScaled = true
            end
        end
    end
end

local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.M then
        createLabels()
    end
end

game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
