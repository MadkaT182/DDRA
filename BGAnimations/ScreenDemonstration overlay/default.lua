local t = Def.ActorFrame {};

	--Title
	t[#t+1] = LoadActor("title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+23;draworder,1);
		OffCommand=cmd();
	};


	t[#t+1] = LoadActor( THEME:GetPathB("_Arcade","decorations") );
return t