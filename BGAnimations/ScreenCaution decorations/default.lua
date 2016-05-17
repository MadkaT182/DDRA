local t = Def.ActorFrame {};

--Bg (placeholder)
t[#t+1] = LoadActor("../_bluebg")..{};

--Top
t[#t+1] = LoadActor("top")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-145);
	OffCommand=cmd();
};

--Top glow
t[#t+1] = LoadActor("top")..{
	OnCommand=cmd(queuecommand,"Animate";queuecommand,"Later");
	AnimateCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-145;zoomy,1;diffusealpha,.5;linear,1;zoomy,1.53;linear,.5;diffusealpha,0;queuecommand,"Later");
	LaterCommand=cmd(queuecommand, "Animate");
	OffCommand=cmd();
};

--Bottom
t[#t+1] = LoadActor("bottom")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+139);
	OffCommand=cmd();
};

--Bottom glow
t[#t+1] = LoadActor("bottom")..{
	OnCommand=cmd(queuecommand,"Animate";queuecommand,"Later");
	AnimateCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+139;zoomy,1;diffusealpha,.5;linear,1;zoomy,1.53;linear,.5;diffusealpha,0;queuecommand,"Later");
	LaterCommand=cmd(queuecommand, "Animate");
	OffCommand=cmd();
};

--Middle
t[#t+1] = LoadActor("middle")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-3);
	OffCommand=cmd();
};

--Text
t[#t+1] = LoadActor("text")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	OffCommand=cmd();
};

--Caution
t[#t+1] = LoadActor("caution")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-143);
	OffCommand=cmd();
};

return t