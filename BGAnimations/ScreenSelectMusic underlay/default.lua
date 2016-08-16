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

t[#t+1] = Def.ActorFrame {
	LoadActor( "../_timerbg" )..{
	}
};

return t