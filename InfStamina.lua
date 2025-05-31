local player = game:GetService("Players").LocalPlayer
local humanoid = nil


local function updateHumanoid()
    if player.Character then
        humanoid = player.Character:FindFirstChildOfClass("Humanoid")
    end
end


updateHumanoid()

player.CharacterAdded:Connect(function(character)
    updateHumanoid()
end)

local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.J then
        updateHumanoid()
        if humanoid then
            humanoid:SetAttribute("MaxStamina", 2000000)
            humanoid:SetAttribute("Stamina", 2000000)
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
