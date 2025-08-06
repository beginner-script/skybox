local Lighting = game:GetService("Lighting")

for _, v in pairs(Lighting:GetChildren()) do
    if v:IsA("Sky") then
        v:Destroy()
    end
end

local sky = Instance.new("Sky")
local imgId = "rbxassetid://104219751230869"

sky.SkyboxBk = imgId
sky.SkyboxDn = imgId
sky.SkyboxFt = imgId
sky.SkyboxLf = imgId
sky.SkyboxRt = imgId
sky.SkyboxUp = imgId

sky.Parent = Lighting

game:GetService("Lighting").Ambient = Color3.new(0.5, 2, 0)
