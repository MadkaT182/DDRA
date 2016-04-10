local t = Def.ActorFrame {};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "paseli" )..{
			OnCommand=cmd(x,SCREEN_RIGHT-29;y,SCREEN_TOP+114);
		};
	};

return t