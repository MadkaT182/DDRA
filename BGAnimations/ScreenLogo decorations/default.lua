local t = Def.ActorFrame{};

--Logo
t[#t+1] = Def.ActorFrame {
	LoadActor( "ddra" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-2;y,SCREEN_CENTER_Y-33;);
	}
};

--Arcade decorations
t[#t+1] = LoadActor( THEME:GetPathB("_Arcade","decorations") );

return t