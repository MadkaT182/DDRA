local t = Def.ActorFrame{};

t[#t+1] = StandardDecorationFromFile("SongInformation","SongInformation")

t[#t+1] = LoadActor( THEME:GetPathB("","optionicon_P1") ) .. {
	InitCommand=cmd(player,PLAYER_1;x,SCREEN_LEFT+108;y,SCREEN_CENTER_Y+165;draworder,1);
};

t[#t+1] = LoadActor( THEME:GetPathB("","optionicon_P2") ) .. {
	InitCommand=cmd(player,PLAYER_2;x,SCREEN_LEFT+286;y,SCREEN_CENTER_Y+165;draworder,1);
};

t[#t+1] = StandardDecorationFromFile("ScoreFrame","ScoreFrame")

return t