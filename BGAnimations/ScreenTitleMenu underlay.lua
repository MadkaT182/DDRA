local t = Def.ActorFrame{};

--Logo
t[#t+1] = Def.ActorFrame {
	LoadActor( "ScreenLogo decorations/ddra" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-2;y,SCREEN_CENTER_Y-33;);
	}
};

--Copyright
t[#t+1] = Def.ActorFrame {
	LoadActor( "ScreenLogo decorations/copy" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-5;y,SCREEN_CENTER_Y+115;);
	}
};

return t
