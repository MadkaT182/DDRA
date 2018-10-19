return Def.ActorFrame {
	LoadActor( "shadow" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+13;zoomtowidth,SCREEN_WIDTH);
	};
	LoadActor( "shadow" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-13;zoomtowidth,SCREEN_WIDTH;rotationz,180);
	};
	LoadActor("../_timerbg");
};