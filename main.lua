local StarterGui = game:GetService("StarterGui")

local checkedmodules = {}
for _, module in ipairs(game:GetDescendants()) do
    if module:IsA("ModuleScript") then
        table.insert(checkedmodules, module)
    end
end

if #modules == 0 then
    StarterGui:SetCore("SendNotification", {Title = "Uh oh..", Text = "Join another game, this one doesnt have any modules"})
    return
end

local rm = modules[math.random(1, #modules)]

local success, result = pcall(require, rm)
if success then
    StarterGui:SetCore("SendNotification", {Title = "Require Support", Text = "Your executor has require Support!"})
else
    StarterGui:SetCore("SendNotification", {Title = "Require Support", Text = "Your executor has no require support."})
  StarterGui:SetCore("SendNotification", {Title = "Advice", Text = "Make sure to run it at least 3 times. If even one says 'Require Support' then it means there is support."})
end
