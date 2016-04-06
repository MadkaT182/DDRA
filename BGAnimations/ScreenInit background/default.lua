return Def.ActorFrame {
	LoadActor( "warning" )..{
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtoheight,SCREEN_HEIGHT);
	};
}