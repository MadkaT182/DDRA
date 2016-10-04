local t = LoadFallbackB()

t[#t+1] = LoadActor(THEME:GetPathB("","_timerbg/timerbg"))..{
  InitCommand=cmd(draworder,99;x,SCREEN_CENTER_X+212;y,SCREEN_TOP+42;zoom,1);
	OffCommand=cmd(linear,0.167;zoom,0);
}


return t
