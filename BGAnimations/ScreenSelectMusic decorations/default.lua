local t = Def.ActorFrame {};

--Shadows
t[#t+1] = Def.ActorFrame {
	LoadActor( "shadow" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+13;zoomtowidth,SCREEN_WIDTH);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "shadow" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-13;zoomtowidth,SCREEN_WIDTH;rotationz,180);
	}
};

--Stage BG
t[#t+1] = Def.ActorFrame {
	LoadActor( "stagebg" )..{
		InitCommand=cmd(x,SCREEN_LEFT+82;y,SCREEN_TOP+37);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "sidebg" )..{
		InitCommand=cmd(x,SCREEN_LEFT+124;y,SCREEN_BOTTOM-215;rotationy,180);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "sidebg" )..{
		InitCommand=cmd(x,SCREEN_RIGHT-124;y,SCREEN_BOTTOM-215);
	}
};

--RadarBG P1
if GAMESTATE:IsPlayerEnabled(PLAYER_1) and GAMESTATE:GetPlayMode() ~= 'PlayMode_Oni' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("radarbg")..{
			OnCommand=cmd(x,SCREEN_LEFT+81;y,SCREEN_CENTER_Y+36);
			OffCommand=cmd(diffusealpha,1);
		}
	};
end

--RadarBG P2
if GAMESTATE:IsPlayerEnabled(PLAYER_2) and GAMESTATE:GetPlayMode() ~= 'PlayMode_Oni' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("radarbg")..{
			OnCommand=cmd(x,SCREEN_RIGHT-81;y,SCREEN_CENTER_Y+36);
			OffCommand=cmd(diffusealpha,1);
		}
	};
end

t[#t+1] = Def.ActorFrame {
	LoadActor( "../_footer" )..{
	}
};

return t