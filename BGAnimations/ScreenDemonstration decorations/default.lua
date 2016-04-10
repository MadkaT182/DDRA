local t = Def.ActorFrame {};
t[#t+1] = LoadActor( THEME:GetPathB("_Arcade","decorations") );

t[#t+1] = LoadActor("cdbg")..{
	OnCommand=cmd(x,SCREEN_RIGHT-171;y,SCREEN_CENTER_Y+24;draworder,1);
	OffCommand=cmd();
};

return t