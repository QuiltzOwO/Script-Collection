local plr = game.Players.LocalPlayer
local char = game.Workspace[plr]
local hum = char.Humanoid
local halfhp =(hum.MaxHealth / 2)
local quarterhp = (hum.MaxHealth / 4)
hum.Health.Changed:Connect(function()
	if hum.Health <= halfhp then
		if hum.Health <= quarterhp then
			local args = {
				[1] = "HELP IM "..hum.Health.." AND I NEED HELP",
				[2] = "Team"
			}

			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
		end
		local args = {
			[1] = "My Health is "..hum.Health.." and I need backup.",
			[2] = "Team"
		}

		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	end
end)
