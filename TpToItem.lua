local player = game:GetService("Players").LocalPlayer
local character = player.Character

for _, v in workspace:GetChildren() do
    if v.Name == "Worldmodel" then
        local pp = v:FindFirstChildWhichIsA("ProximityPrompt")
        local handle = v:FindFirstChild("Handle")
        
        if pp and pp.ObjectText == "(P320)" and handle and handle:IsA("MeshPart") then
            local root = character:FindFirstChild("HumanoidRootPart")
            if root then
                local savedCFrame = root.CFrame
                root.CFrame = handle.CFrame
                task.wait(5)
                root.CFrame = savedCFrame
                break
            end
        end
    end
end
