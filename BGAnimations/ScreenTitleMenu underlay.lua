local t = Def.ActorFrame{};

--Logo
t[#t+1] = Def.ActorFrame {
	LoadActor( "ScreenLogo decorations/ddra" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-2;y,SCREEN_CENTER_Y-33;zoom,0.75);
	}
};

--Copyright
t[#t+1] = Def.ActorFrame {
	LoadActor( "ScreenLogo decorations/copy" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-5;y,SCREEN_CENTER_Y+75;zoom,0.75);
	}
};

--Selector
t[#t+1] = Def.ActorFrame{
	LoadActor(THEME:GetPathB("","_Arcade Decorations/bg"))..{
		InitCommand=cmd(xy,SCREEN_CENTER_X,SCREEN_CENTER_Y+160;zoom,0.75);
	};
};

return t
