local t = LoadFallbackB();
t[#t+1] = LoadActor( THEME:GetPathB("_Arcade","decorations") );

t[#t+1] = LoadActor("cdbg")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
	OffCommand=cmd();
};

return t