while game.Workspace[game.Players.LocalPlayer.Name].Humanoid ~= nil do
local player = game.Players.LocalPlayer
local character = game.Workspace[player.Name]
local humanoid = character.Humanoid
local halfmaxhp = ((humanoid.MaxHealth) / 2)
local quartermaxhp = ((humanoid.MaxHealth) / 4)
if humanoid.Health < halfmaxhp then
  local args = {
      [1] = "My Health is "..humanoid.Health.." and I need backup."
      [2] = "Team"
  }

  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
if humanoid.Health < quartermaxhp then
  local args = {
      [1] = "I NEED HELP MY HEALTH IS "..humanoid.Health.." AND I NEED HELP"
      [2] = "Team"
  }

  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
end
