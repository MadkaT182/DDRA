return Def.ActorFrame {
	LoadActor( "timerbg" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+288;y,SCREEN_TOP+37;);
		OffCommand=cmd(linear,0.167;zoom,0);
	};
}