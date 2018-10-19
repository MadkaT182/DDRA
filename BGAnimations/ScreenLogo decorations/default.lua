return Def.ActorFrame{
	LoadActor("ddra")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-2;y,SCREEN_CENTER_Y-33);
	};
	LoadActor("copy")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-5;y,SCREEN_CENTER_Y+115;);
	};
	LoadActor( THEME:GetPathB("_Arcade","decorations") );
	LoadActor( THEME:GetPathB("","_version") );
};