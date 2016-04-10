local t = Def.ActorFrame{};

--Player Indicators
--P1
if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "../_common_graphics/p1result" )..{
			InitCommand=cmd(x,SCREEN_LEFT+53;y,SCREEN_TOP+61;);
		}
	};
end

--P2
if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "../_common_graphics/p2result" )..{
			InitCommand=cmd(x,SCREEN_RIGHT-53;y,SCREEN_TOP+61;);
		}
	};
end

return t