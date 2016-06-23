local t = Def.ActorFrame{

	LoadActor( "thanks" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoom,0.7);
	};

}

return t;