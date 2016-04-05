return Def.ActorFrame {
	LoadActor( "stagebg" )..{
		InitCommand=cmd(x,SCREEN_LEFT+82;y,SCREEN_TOP+37;);
	};

	LoadActor( "sidebg" )..{
		InitCommand=cmd(x,SCREEN_LEFT+124;y,SCREEN_BOTTOM-215;rotationy,180;);
	};

	LoadActor( "sidebg" )..{
		InitCommand=cmd(x,SCREEN_RIGHT-124;y,SCREEN_BOTTOM-215;);
	};

	LoadActor( "../_footer" )..{
		--InitCommand=cmd();
	};

}