local t = Def.ActorFrame {};

t[#t+1] = LoadActor( THEME:GetPathB("ScreenEvaluation","decorations") );

--Title
t[#t+1] = LoadActor("_title") .. {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+19);
	OffCommand=cmd();
};

return t;