local executor = getgenv().identifyexecutor and getgenv().identifyexecutor() or "RobloxClientApp"
local function notify(message)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Executor Check";
		Text = message;
		Duration = 5;
	})
end

if pcall(function() return require end) then
	game.StarterGui:SetCore("SendNotification", {
		Title = "Executor Check";
		Text = 'Your executor ('..executor..') supports require';
		Duration = 5;
	})
else
	game.StarterGui:SetCore("SendNotification", {
		Title = "Executor Check";
		Text = 'Your executor ('..executor..') does not supports require';
		Duration = 5;
	})
end
