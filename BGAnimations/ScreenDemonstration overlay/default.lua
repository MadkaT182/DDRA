return Def.ActorFrame {	
	LoadActor("title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+23);
	};
	LoadActor( THEME:GetPathB("_Arcade","decorations") );
};