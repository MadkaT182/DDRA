local t = Def.ActorFrame{}

t[#t+1] = StandardDecorationFromFile("SongInformation","SongInformation")

for player in ivalues(GAMESTATE:GetHumanPlayers()) do

	t[#t+1] = LoadActor( "OptionIcons/OptionIcons.lua", player )..{
		InitCommand=function(self)
			self:x(player == PLAYER_1 and 108 or 286)
				:y(_screen.cy+165)
				:draworder(1)
		end
	}
end

t[#t+1] = StandardDecorationFromFile("ScoreFrame","ScoreFrame")

return t